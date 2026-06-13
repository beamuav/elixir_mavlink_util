defmodule MAVLink.Util.Mode do
  @moduledoc false

  require Logger
  alias APM.Message.Heartbeat
  alias MAVLink.Router, as: MAV
  alias MAVLink.Util.Await
  alias MAVLink.Util.FlightMode
  alias MAVLink.Util.VehicleStatus
  import MAVLink.Util.CacheManager, only: [msg: 1]
  import MAVLink.Util.FocusManager, only: [focus: 0]

  @retry_timeout 3_000

  def manual do
    with {:ok, {system_id, component_id, mavlink_version}} <- focus() do
      manual(system_id, component_id, mavlink_version)
    end
  end

  def manual(system_id, component_id, mavlink_version) do
    set_mode(system_id, component_id, mavlink_version, :manual)
  end

  def stabilise do
    with {:ok, {system_id, component_id, mavlink_version}} <- focus() do
      stabilise(system_id, component_id, mavlink_version)
    end
  end

  def stabilise(system_id, component_id, mavlink_version) do
    set_mode(system_id, component_id, mavlink_version, :stabilise)
  end

  def stabilize, do: stabilise()
  def stabilize(system_id, component_id, mavlink_version), do: stabilise(system_id, component_id, mavlink_version)

  defp set_mode(system_id, component_id, mavlink_version, mode_name) do
    with {:ok, _age, heartbeat} <- msg(Heartbeat) |> VehicleStatus.ensure_operational(),
         {:ok, set_mode_msg} <- FlightMode.build_set_mode(heartbeat, mode_name) do
      MAV.subscribe(message: Heartbeat, source_system: system_id)

      expected_custom_mode = set_mode_msg.custom_mode

      Await.await_message(
        fn
          %Heartbeat{} = heartbeat ->
            if FlightMode.mode_confirmed?(heartbeat, expected_custom_mode) do
              :ok
            else
              :retry
            end

          _ ->
            :retry
        end,
        fn ->
          MAV.pack_and_send(
            %{set_mode_msg | target_system: system_id},
            mavlink_version
          )
        end,
        timeout: @retry_timeout,
        unsubscribe: &MAV.unsubscribe/0
      )
      |> tap(fn
        :ok ->
          Logger.info("#{mode_name} set for vehicle #{system_id}.#{component_id}")

        {:error, :timeout} ->
          Logger.warning(
            "Timed out setting #{mode_name} for vehicle #{system_id}.#{component_id}"
          )

        _ ->
          :ok
      end)
    else
      {:error, {:invalid_vehicle_status, status, description}} ->
        Logger.warning(
          "Cannot change mode of vehicle #{system_id}.#{component_id}: #{description} (#{status})"
        )

        {:error, :cannot_change_mode_invalid_vehicle_status}

      {:error, {:unsupported_mode, mode_name, type}} ->
        Logger.warning(
          "Mode #{mode_name} is not supported for vehicle type #{type} (#{system_id}.#{component_id})"
        )

        {:error, :unsupported_mode}

      {:error, reason} ->
        Logger.warning("Could not determine current mode of vehicle #{system_id}.#{component_id}")
        {:error, reason}
    end
  end
end
