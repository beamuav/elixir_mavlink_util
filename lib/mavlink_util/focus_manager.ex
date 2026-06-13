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

  def start_link(state, opts \\ []) do
    GenServer.start_link(__MODULE__, state, [{:name, __MODULE__} | opts])
  end

  def focus do
    focus(self())
  end

  def focus(pid) when is_pid(pid) do
    case :ets.lookup(@sessions, pid) do
      [{^pid, scid}] ->
        if pid == self() do
          Logger.info("Vehicle #{format(scid)}")
        else
          Logger.info("Vehicle #{format(scid)} for #{inspect(pid)}")
        end

        {:ok, scid}

      _ ->
        Logger.warning("#{inspect(pid)} has no vehicle focus")
        {:error, :not_focussed}
    end
  end

  def focus(system_id, component_id \\ 1) do
    case GenServer.call(__MODULE__, {:focus, {system_id, component_id}}) do
      {:ok, scid} ->
        configure_iex_prompt(system_id, component_id)
        {:ok, scid}

      {:error, reason} = error ->
        Logger.warning("Could not set focus to #{system_id}.#{component_id}: #{reason}")
        error
    end
  end

  @impl true
  def init(_opts) do
    :ets.new(@sessions, [:named_table, :protected, {:read_concurrency, true}, :set])
    {:ok, %{monitors: %{}}}
  end

  @impl true
  def handle_call({:focus, scid = {system_id, component_id}}, {caller_pid, _}, state) do
    case lookup_mavlink_version(scid) do
      mavlink_major_version when is_number(mavlink_major_version) and mavlink_major_version > 0 ->
        :ets.insert(@sessions, {caller_pid, {system_id, component_id, mavlink_major_version}})

        monitors =
          if Enum.any?(state.monitors, fn {_ref, pid} -> pid == caller_pid end) do
            state.monitors
          else
            ref = Process.monitor(caller_pid)
            Map.put(state.monitors, ref, caller_pid)
          end

        Logger.info("Set focus to #{format(scid)}")
        {:reply, {:ok, {system_id, component_id, mavlink_major_version}}, %{state | monitors: monitors}}

      0 ->
        Logger.warning("No such vehicle #{format(scid)}")
        {:reply, {:error, :no_such_mav}, state}

      _ ->
        {:reply, {:error, :no_mav_data}, state}
    end
  end

  @impl true
  def handle_info({:DOWN, ref, :process, pid, _reason}, state) do
    :ets.delete(@sessions, pid)
    {:noreply, %{state | monitors: Map.delete(state.monitors, ref)}}
  end

  defp lookup_mavlink_version({system_id, component_id}) do
    case :ets.info(@systems) do
      :undefined ->
        0

      _ ->
        :ets.foldl(
          fn
            {{^system_id, ^component_id}, %{mavlink_major_version: mmv}}, _acc ->
              mmv

            _, acc ->
              acc
          end,
          0,
          @systems
        )
    end
  end

  defp configure_iex_prompt(system_id, component_id) do
    if Code.ensure_loaded?(IEx) and function_exported?(IEx, :started?, 0) and IEx.started?() do
      IEx.configure(default_prompt: "iex(%counter) vehicle #{system_id}.#{component_id}>")
    end
  end

  defp format({s, c, _}), do: format({s, c})
  defp format({s, c}), do: "#{s}.#{c}"
end
