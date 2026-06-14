defmodule MAVLink.Util.VehicleStatus do
  @moduledoc false

  alias APM.Message.Heartbeat

  @valid_statuses [
    :mav_state_standby,
    :mav_state_active,
    :mav_state_critical,
    :mav_state_emergency
  ]

  @doc false
  def valid_statuses, do: @valid_statuses

  @doc false
  def ensure_operational({:ok, _age, %Heartbeat{system_status: status}} = heartbeat)
      when status in @valid_statuses,
      do: heartbeat

  def ensure_operational({:ok, _age, %Heartbeat{system_status: status}}) do
    {:error, {:invalid_vehicle_status, status}}
  end

  def ensure_operational({:error, _} = error), do: error
  def ensure_operational(_), do: {:error, :could_not_determine_vehicle_status}

  @doc false
  def describe_error({:error, {:invalid_vehicle_status, status}}),
    do: {:invalid_vehicle_status, status, APM.describe(status)}

  def describe_error({:error, reason}), do: reason
end
