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
  import MAVLink.Util.FocusManager, only: [focus: 0]
  
  
  @messages :messages
  @systems :systems
  @params :params
  @one_second_loop :one_second_loop
  @five_second_loop :five_second_loop
  @ten_second_loop :ten_second_loop
  @param_retry_interval 3000
  
  
  defstruct []
  
  
  # API
  
  def start_link(state, opts \\ []) do
    GenServer.start_link(__MODULE__, state, [{:name, __MODULE__} | opts])
  end
  
  
  def mavs() do
    scids = :ets.foldl(fn ({scid, _}, acc) -> [scid | acc] end, [], @systems)
    Logger.info("Listing #{length(scids)} visible vehicles")
    {:ok, scids}
  end
  
  
  def msg() do
    with {:ok, scid} <- focus() do
      msg(scid)
    end
  end
  
  def msg({system_id, component_id}) do
    {
      :ok,
      :ets.foldl(
        fn
          {{^system_id, ^component_id, msg_type}, {received, msg}}, acc ->
            Enum.into [{msg_type, {now() - received, msg}}], acc
          _, acc ->
            acc
        end, %{}, @messages)
    }
  end
  
  def msg(name) do
    with {:ok, scid} <- focus() do
      msg(scid, name)
    end
  end
  
  def msg({system_id, component_id}, msg_type) when is_atom(msg_type) do
    with [{_key, {received, message}}] <- :ets.lookup(@messages, {system_id, component_id, msg_type}) do
      Logger.info("Most recent \"#{dequalify_msg_type msg_type}\" message")
      {:ok, now() - received, message}
    else
      _ ->
        Logger.warn("Error attempting to retrieve message of type \"#{dequalify_msg_type msg_type}\"")
        {:error, :no_such_message}
    end
  end
  
  
  def params() do
    with {:ok, scid} <- focus() do
      params(scid)
    end
  end
  
  def params(scid={_, _}) do
    params(scid, "")
  end
  
  def params(match) when is_binary(match) do
    with {:ok, scid} <- focus() do
      params(scid, match)
    end
  end
  
  def params({system_id, component_id}, match) when is_binary(match) do
    with match_upcase <- String.upcase(match),
         param_map when is_map(param_map) <- :ets.foldl(
           fn
             {{^system_id, ^component_id, param_id},
              {_, %APM.Message.ParamValue{param_value: param_value}}}, acc ->
               if String.contains?(param_id, match_upcase) do
                 Enum.into [{param_id |> String.downcase |> String.to_atom, param_value}], acc
               else
                 acc
               end
             _, acc ->
               acc
           end, %{}, @params) do
      Logger.info("Listing #{param_map |> Map.keys |> length} parameters matching \"#{match}\"")
      {:ok, param_map}
    else
      _ ->
        Logger.warn("Error attempting to query params matching \"#{match}\"")
        {:error, :query_failed}
    end
  end
  
  
  @impl true
  def init(_opts) do
    :ets.new(@messages, [:named_table, :protected, {:read_concurrency, true}, :set])
    :ets.new(@systems, [:named_table, :protected, {:read_concurrency, true}, :ordered_set])
    :ets.new(@params, [:named_table, :protected, {:read_concurrency, true}, :ordered_set])
    
    MAV.subscribe as_frame: true
    
    {
      :ok,
      %MAVLink.Util.CacheManager{}
      |> one_second_loop
      |> five_second_loop
      |> ten_second_loop
    }
  end

  
  @impl true
  def handle_call(_msg, _caller, state) do
    {:reply, :ok, state}
  end

  
  @impl true
  def handle_cast(_msg, state) do
    {:noreply, state}
  end
  
  
  @impl true
  def handle_info(
        %MAVLink.Frame{
          message: message = %{__struct__: message_type},
          source_system: source_system,
          source_component: source_component,
          version: source_version
        },
        state) do
    # Get the previously cached message of this type from the MAV, if any
    previous_message_list = :ets.lookup(@messages, {source_system, source_component, message_type})
    
    # Replace with the new message
    :ets.insert(@messages, {{source_system, source_component, message_type}, {now(), message}})
    
    # Delegate any message-specific behaviour to handle_mav_message()
    case previous_message_list do
      [] ->
        {:noreply, handle_mav_message(source_system, source_component, nil, message, source_version, state)}
      [previous_message] ->
        {:noreply, handle_mav_message(source_system, source_component, previous_message, message, source_version, state)}
    end
  end
  
  def handle_info(@one_second_loop, state) do
    :timer.send_after(1_000, @one_second_loop)
    {:noreply, one_second_loop(state)}
  end
  
  def handle_info(@five_second_loop, state) do
    :timer.send_after(5_000, @one_second_loop)
    {:noreply, five_second_loop(state)}
  end
  
  def handle_info(@ten_second_loop, state) do
    :timer.send_after(10_000, @one_second_loop)
    {:noreply, ten_second_loop(state)}
  end
  
  
  def prompt_for_params(source_system_id, source_component_id, mavlink_version, last_param_count_loaded \\ 0) do
    with [{_, %{param_count: param_count, param_count_loaded: param_count_loaded}}] <- :ets.lookup(@systems, {source_system_id, source_component_id}),
         retry <- param_count_loaded == last_param_count_loaded,
         complete <- param_count_loaded == param_count and param_count > 0 do
      if complete do
        Logger.info("All #{param_count} parameters loaded for vehicle #{inspect {source_system_id, source_component_id}}")
      else
        if param_count > 0 do
          Logger.info("Loaded #{param_count_loaded}/#{param_count} parameters for vehicle #{inspect {source_system_id, source_component_id}}")
        else
          Logger.info("Waiting to receive first parameter from vehicle #{inspect {source_system_id, source_component_id}}")
        end
        if retry do
          MAV.pack_and_send(%APM.Message.ParamRequestList{
            target_system: source_system_id, target_component: source_component_id}, mavlink_version)
        end
        Process.sleep(@param_retry_interval)
        prompt_for_params(source_system_id, source_component_id, mavlink_version, param_count_loaded)
      end
    end
  end
  
  
  defp handle_mav_message(source_system_id, source_component_id, nil, %APM.Message.Heartbeat{}, mavlink_version, state) do
    # First time this MAV system seen, create a system record
    :ets.insert(
      @systems,
      {
        {source_system_id, source_component_id},
        %{  # TODO System struct
          mavlink_version: mavlink_version,
          param_count: 0,
          param_count_loaded: 0}
      }
    )
    Logger.info("First sighting of vehicle #{inspect {source_system_id, source_component_id}}")
    spawn_link(__MODULE__, :prompt_for_params, [source_system_id, source_component_id, mavlink_version])
    state
  end
  
  defp handle_mav_message(source_system_id, source_component_id, _,
         param_value_msg = %APM.Message.ParamValue{param_id: param_id, param_count: param_count}, _, state) do
    with [{_, system=%{param_count_loaded: param_count_loaded}}] <- :ets.lookup(@systems, {source_system_id, source_component_id}),
         is_new <- :ets.lookup(@params, {source_system_id, source_component_id, param_id}) |> length |> Kernel.==(0),
         true <- :ets.insert(@params, {{source_system_id, source_component_id, param_id}, {now(), param_value_msg}}) do
      :ets.insert(
        @systems,
        {
          {source_system_id, source_component_id},
          %{system |
            param_count: param_count,
            param_count_loaded: (if is_new, do: param_count_loaded + 1, else: param_count_loaded)}
        }
      )
    end
    state
  end
  
  defp handle_mav_message(_, _, _, _, _, state), do: state
  
  
  defp one_second_loop(state) do
    state
  end
  
  
  defp five_second_loop(state) do
    state
  end
  
  
  defp ten_second_loop(state) do
    state
  end
  
  
  defp now(), do: :erlang.monotonic_time(:milli_seconds)

  
  defp dequalify_msg_type(msg_type) do
    to_string(msg_type)
    |> String.split(".")
    |> (fn parts -> parts |> Enum.reverse |> List.first end).()
  end
  
  
end
