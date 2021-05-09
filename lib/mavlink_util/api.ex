defmodule MAVLink.Util.API do
  @moduledoc """
  Using MAVProxy as a reference, provide helper functions for working with
  vehicles running APM. Importing the API into an iex session should give
  an interactive CLI very similar to MAVProxy, using info/warn level log
  messages for extra feedback. The same API can be called directly from code.
  """
  
  require Logger
  alias MAVLink.Router, as: MAV
  
  
  @messages :messages
  @systems :systems
  @params :params
  @sessions :sessions
  
  
  def mavs() do
    scids = :ets.foldl(fn ({scid, _}, acc) -> [scid | acc] end, [], @systems)
    Logger.info("Listing #{length(scids)} visible vehicle {system, component} ids")
    {:ok, scids}
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
  
  def params(scid={system_id, component_id}, match) when is_binary(match) do
    with match_upcase <- String.upcase(match),
         param_list when is_list(param_list) <- :ets.foldl(
           fn
             {{^system_id, ^component_id, param_id},
              {_, %APM.Message.ParamValue{param_value: param_value}}}, acc ->
               if String.contains?(param_id, match_upcase) do
                 [{param_id, param_value} | acc]
               else
                 acc
               end
             _, acc ->
               acc
           end, [], @params) do
      Logger.info("Listing #{length(param_list)} parameters from vehicle #{inspect scid} matching \"#{match}\"")
      {:ok, param_list}
    else
      _ ->
        Logger.warn("Error attempting to query params matching \"#{match}\" for vehicle #{inspect scid}")
        {:error, :query_failed}
    end
  end
  
  
  defp now(), do: :erlang.monotonic_time(:milli_seconds)
  
  
end
