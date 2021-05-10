defmodule MAVLink.Util.FocusManager do
  @moduledoc """
  Manage a protected ETS table representing the nominated MAV focus of
  zero or more local PIDs. The API uses this to streamline iex sessions
  by letting the user select a MAV to work with and transparently adding
  {system_id, component_id} tuples to call arguments.
  """
  
  use GenServer
  require Logger
  
  @sessions :sessions
  @systems :systems

  
  # API
  def start_link(state, opts \\ []) do
    GenServer.start_link(__MODULE__, state, [{:name, __MODULE__} | opts])
  end
  
  
  def focus() do
    self() |> focus()
  end
  
  def focus(pid) when is_pid(pid) do
    with [{^pid, scid}] <- :ets.lookup(@sessions, pid) do
      if pid == self() do
        Logger.info("Current vehicle focus is #{inspect scid}")
      else
        Logger.info("Current vehicle focus of #{inspect pid} is #{inspect scid}")
      end
      {:ok, scid}
    else
      _ ->
        Logger.warn("#{inspect pid} has no vehicle focus")
        {:error, :not_focussed}
    end
  end
  
  def focus(system_id, component_id \\ 1) do
      GenServer.call(MAVLink.Util.FocusManager, {:focus, {system_id, component_id}})
  end
  
  
  @impl true
  def init(_opts) do
    :ets.new(@sessions, [:named_table, :protected, {:read_concurrency, true}, :set])
    {:ok,%{}}
  end

  
  @impl true
  def handle_call({:focus, scid}, {caller_pid, _}, state) do
    with scid_exists when is_boolean(scid_exists) <-
           :ets.foldl(fn ({next_scid, _}, acc) -> acc or (next_scid==scid) end, false, @systems) do
      if scid_exists do
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
  
  
  #TODO handle DOWN messages
  
end
