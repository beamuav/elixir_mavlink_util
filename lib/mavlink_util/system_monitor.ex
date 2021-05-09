defmodule MAVLink.Util.SystemMonitor do
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
  
  
  @messages :messages
  @systems :systems
  @params :params
  @one_second_loop :one_second_loop
  @five_second_loop :five_second_loop
  @ten_second_loop :ten_second_loop
  #@param_fetch_retry_interval_ms 5000
  
  
  defstruct []
  
  
  # API
  
  def start_link(state, opts \\ []) do
    GenServer.start_link(__MODULE__, state, [{:name, __MODULE__} | opts])
  end
  
  
  @impl true
  def init(_opts) do
    :ets.new(@messages, [:named_table, :protected, {:read_concurrency, true}, :set])
    :ets.new(@systems, [:named_table, :protected, {:read_concurrency, true}, :ordered_set])
    :ets.new(@params, [:named_table, :protected, {:read_concurrency, true}, :ordered_set])
    
    MAV.subscribe as_frame: true
    
    {
      :ok,
      %MAVLink.Util.SystemMonitor{}
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
  
  defp handle_mav_message(source_system, source_component, nil, %APM.Message.Heartbeat{}, version, state) do
    # First time this MAV system seen, create a system record
    :ets.insert(
      @systems,
      {
        {source_system, source_component},
        %{  # TODO System struct
          mavlink_version: version,
          heartbeat_last_received: now(),
          params_last_request_time: now(),
          params_loaded: false}
      }
    )
    
    # and request a parameter list
    MAV.pack_and_send(%APM.Message.ParamRequestList{
      target_system: source_system, target_component: source_component}, version)
    
    state
  end
  
  defp handle_mav_message(source_system, source_component, _,
         param_value_msg = %APM.Message.ParamValue{param_id: param_id}, _, state) do
    :ets.insert(@params, {{source_system, source_component, param_id}, {now(), param_value_msg}})
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
  
  
end
