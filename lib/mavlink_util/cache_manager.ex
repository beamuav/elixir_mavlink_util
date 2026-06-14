defmodule MAVLink.Util.CacheManager do
  @moduledoc """

  Populate and keep updated a set of protected ETS tables representing:

  - the visible MAV systems
  - the most recently received messages for each MAV and message type
  - the most recently received set of parameters for each MAV

  Using ETS tables allows clients to perform read only API operations directly
  on the tables, preventing this GenServer from becoming a bottleneck.
  """

  use GenServer
  require Logger
  alias MAVLink.Router, as: MAV
  alias MAVLink.Util.ParamRequest
  alias MAVLink.Util.System
  alias APM.Message.Heartbeat
  alias APM.Message.ParamValue
  import MAVLink.Util.FocusManager, only: [focus: 0]

  @messages :messages
  @systems :systems
  @params :params
  @one_second_loop :one_second_loop
  @five_second_loop :five_second_loop
  @ten_second_loop :ten_second_loop

  defstruct []

  def start_link(state, opts \\ []) do
    GenServer.start_link(__MODULE__, state, [{:name, __MODULE__} | opts])
  end

  def mavs do
    scids = :ets.foldl(fn {scid, _}, acc -> [scid | acc] end, [], @systems)
    Logger.info("Listing #{length(scids)} visible vehicles")
    {:ok, scids}
  end

  def msg do
    with {:ok, scid} <- focus() do
      msg(scid)
    end
  end

  def msg({system_id, component_id, _}) do
    {
      :ok,
      :ets.foldl(
        fn
          {{^system_id, ^component_id, msg_type}, {received, msg}}, acc ->
            Map.put(acc, msg_type, {now() - received, msg})

          _, acc ->
            acc
        end,
        %{},
        @messages
      )
    }
  end

  def msg(name) do
    with {:ok, scid} <- focus() do
      msg(scid, name)
    end
  end

  def msg({system_id, component_id, _}, msg_type) when is_atom(msg_type) do
    case :ets.lookup(@messages, {system_id, component_id, msg_type}) do
      [{_key, {received, message}}] ->
        Logger.info("Most recent \"#{dequalify_msg_type(msg_type)}\" message")
        {:ok, now() - received, message}

      _ ->
        Logger.warning(
          "Error attempting to retrieve message of type \"#{dequalify_msg_type(msg_type)}\""
        )

        {:error, :no_such_message}
    end
  end

  def params do
    with {:ok, scid} <- focus() do
      params(scid)
    end
  end

  def params(scid = {_, _, _}) do
    params(scid, "")
  end

  def params(match) when is_binary(match) do
    with {:ok, scid} <- focus() do
      params(scid, match)
    end
  end

  def params({system_id, component_id, _mavlink_version}, match) when is_binary(match) do
    match_upcase = String.upcase(match)

    param_map =
      :ets.foldl(
        fn
          {{^system_id, ^component_id, param_id}, {_, %ParamValue{param_value: param_value}}},
          acc ->
            if String.contains?(param_id, match_upcase) do
              Map.put(acc, String.downcase(param_id) |> String.to_atom(), param_value)
            else
              acc
            end

          _, acc ->
            acc
        end,
        %{},
        @params
      )

    Logger.info("Listing #{map_size(param_map)} parameters matching \"#{match}\"")
    {:ok, param_map}
  end

  @impl true
  def init(_opts) do
    ensure_table(@messages, [:named_table, {:read_concurrency, true}, :set])
    ensure_table(@systems, [:named_table, {:read_concurrency, true}, :ordered_set])
    ensure_table(@params, [:named_table, {:read_concurrency, true}, :ordered_set])

    MAV.subscribe(as_frame: true)

    state =
      %__MODULE__{}
      |> one_second_loop()
      |> five_second_loop()
      |> ten_second_loop()

    {:ok, state}
  end

  @impl true
  def handle_call(_msg, _caller, state), do: {:reply, :ok, state}

  @impl true
  def handle_cast(_msg, state), do: {:noreply, state}

  @impl true
  def handle_info(
        %MAVLink.Frame{
          message: message = %{__struct__: message_type},
          source_system: source_system,
          source_component: source_component,
          version: source_version
        },
        state
      ) do
    previous_message_list =
      :ets.lookup(@messages, {source_system, source_component, message_type})

    :ets.insert(@messages, {{source_system, source_component, message_type}, {now(), message}})

    previous =
      case previous_message_list do
        [{_, previous_message}] -> previous_message
        _ -> nil
      end

    {:noreply,
     handle_mav_message(
       source_system,
       source_component,
       previous,
       message,
       source_version,
       state
     )}
  end

  def handle_info(@one_second_loop, state) do
    :timer.send_after(1_000, @one_second_loop)
    {:noreply, one_second_loop(state)}
  end

  def handle_info(@five_second_loop, state) do
    :timer.send_after(5_000, @five_second_loop)
    {:noreply, five_second_loop(state)}
  end

  def handle_info(@ten_second_loop, state) do
    :timer.send_after(10_000, @ten_second_loop)
    {:noreply, ten_second_loop(state)}
  end

  defp handle_mav_message(
         source_system_id,
         source_component_id,
         nil,
         %Heartbeat{type: type, mavlink_version: mavlink_minor_version},
         mavlink_major_version,
         state
       ) do
    :ets.insert(
      @systems,
      {{source_system_id, source_component_id},
       System.new(mavlink_major_version, mavlink_minor_version)}
    )

    Logger.info(
      "First sighting of vehicle #{source_system_id}.#{source_component_id}: #{APM.describe(type)}"
    )

    Task.start(fn ->
      ParamRequest.param_request_list(
        source_system_id,
        source_component_id,
        mavlink_major_version
      )
    end)

    state
  end

  defp handle_mav_message(
         source_system_id,
         source_component_id,
         _,
         param_value_msg = %ParamValue{param_id: param_id, param_count: param_count},
         _,
         state
       ) do
    case :ets.lookup(@systems, {source_system_id, source_component_id}) do
      [{_, system = %System{param_count_loaded: param_count_loaded}}] ->
        is_new =
          :ets.lookup(@params, {source_system_id, source_component_id, param_id}) == []

        :ets.insert(
          @params,
          {{source_system_id, source_component_id, param_id}, {now(), param_value_msg}}
        )

        updated_loaded = if is_new, do: param_count_loaded + 1, else: param_count_loaded
        previous_count = system.param_count

        updated_system = %{
          system
          | param_count: param_count,
            param_count_loaded: updated_loaded
        }

        :ets.insert(@systems, {{source_system_id, source_component_id}, updated_system})

        if previous_count > 0 and param_count > previous_count and updated_loaded >= previous_count do
          Logger.info(
            "Parameter count increased for vehicle #{source_system_id}.#{source_component_id}; requesting full list again"
          )

          Task.start(fn ->
            ParamRequest.param_request_list(
              source_system_id,
              source_component_id,
              system.mavlink_major_version
            )
          end)
        end

      _ ->
        :ok
    end

    state
  end

  defp handle_mav_message(_, _, _, _, _, state), do: state

  defp one_second_loop(state), do: state
  defp five_second_loop(state), do: state
  defp ten_second_loop(state), do: state

  defp now, do: :erlang.monotonic_time(:milli_seconds)

  defp dequalify_msg_type(msg_type) do
    msg_type
    |> to_string()
    |> String.split(".")
    |> List.last()
  end

  defp ensure_table(name, opts) do
    case :ets.info(name) do
      :undefined -> :ets.new(name, [table_access() | opts])
      _ -> name
    end
  end

  defp table_access do
    if Mix.env() == :test, do: :public, else: :protected
  end
end
