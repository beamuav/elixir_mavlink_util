defmodule MAVLink.Util.ParamRequest do
  @moduledoc false
  
  @systems :systems
  @param_retry_interval 3000
  
  require Logger
  alias MAVLink.Router, as: MAV
  import MAVLink.Util.FocusManager, only: [focus: 0]
  
  
  def param_request_list() do
    with {:ok, {source_system_id, source_component_id}} <- focus() do
      param_request_list(source_system_id, source_component_id, 1)  # TODO lookup version
    end
  end
  
  def param_request_list(source_system_id, source_component_id, mavlink_version, last_param_count_loaded \\ 0) do
    with [{_, %{param_count: param_count, param_count_loaded: param_count_loaded}}] <- :ets.lookup(@systems, {source_system_id, source_component_id}),
         retry <- param_count_loaded == last_param_count_loaded,
         complete <- param_count_loaded == param_count and param_count > 0 do
      if complete do
        Logger.info("All #{param_count} parameters loaded for vehicle #{source_system_id}.#{source_component_id}")
      else
        if param_count > 0 do
          Logger.info("Loaded #{param_count_loaded}/#{param_count} parameters for vehicle #{source_system_id}.#{source_component_id}")
        else
          Logger.info("Waiting to receive first parameter from vehicle #{source_system_id}.#{source_component_id}")
        end
        if retry do
          MAV.pack_and_send(%APM.Message.ParamRequestList{
            target_system: source_system_id, target_component: source_component_id}, mavlink_version)
        end
        Process.sleep(@param_retry_interval)
        param_request_list(source_system_id, source_component_id, mavlink_version, param_count_loaded)
      end
    end
  end

end
