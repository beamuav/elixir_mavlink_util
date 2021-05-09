defmodule MAVLink.Util.FocusManager do
  @moduledoc """
  Manage a protected ETS table representing the nominated MAV focus of
  zero or more local PIDs. The API uses this to streamline iex sessions
  by letting the user select a MAV to work with and transparently adding
  {system_id, component_id} tuples to call arguments.
  """
  
  use GenServer
  require Logger
  import MAVLink.Util.API, only: [mavs: 0]
  
  @sessions :sessions

  
  # API
  def start_link(state, opts \\ []) do
    GenServer.start_link(__MODULE__, state, [{:name, __MODULE__} | opts])
  end
  
  
  @impl true
  def init(_opts) do
    :ets.new(@sessions, [:named_table, :protected, {:read_concurrency, true}, :set])
    {:ok,%{}}
  end

  
  @impl true
  def handle_call({:focus, scid}, {caller_pid, _}, state) do
    with {:ok, mav_list} <- mavs() do
      if scid in mav_list do
        :ets.insert(@sessions, {caller_pid, scid})
        Process.monitor(caller_pid)
        Logger.info("Set focus of #{inspect caller_pid} to #{inspect scid}")
        {:reply, {:ok, scid}, state}
      else
        Logger.warn("No such vehicle #{inspect scid}")
        {:reply, {:error, :no_such_mav}, state}
      end
    else
      _ -> {:reply, {:error, :no_mav_data}, state}
    end
  end
  
end
