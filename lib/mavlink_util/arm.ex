defmodule MAVLink.Util.Arm do
  @moduledoc false

  require Logger
  alias APM.Message.CommandLong
  alias APM.Message.Heartbeat
  alias MAVLink.Router, as: MAV
  alias MAVLink.Util.Await
  alias MAVLink.Util.VehicleStatus
  import MAVLink.Util.CacheManager, only: [msg: 1]
  import MAVLink.Util.FocusManager, only: [focus: 0]

  @retry_timeout 3_000

  def arm do
    with {:ok, {system_id, component_id, mavlink_version}} <- focus() do
      arm(system_id, component_id, mavlink_version)
    end
  end

  def arm(system_id, component_id, mavlink_version) do
    with {:ok, _age, heartbeat} <- msg(Heartbeat) |> VehicleStatus.ensure_operational() do
      do_arm(system_id, component_id, mavlink_version, heartbeat)
    else
      {:error, {:invalid_vehicle_status, status, description}} ->
        Logger.warning(
          "Cannot arm vehicle #{system_id}.#{component_id}: #{description} (#{status})"
        )

        {:error, :cannot_arm_invalid_vehicle_status}

      {:error, reason} ->
        Logger.warning("Could not determine current status of vehicle #{system_id}.#{component_id}")
        {:error, reason}
    end
  end

  def disarm do
    with {:ok, {system_id, component_id, mavlink_version}} <- focus() do
      disarm(system_id, component_id, mavlink_version)
    end
  end

  def disarm(system_id, component_id, mavlink_version) do
    with {:ok, _age, heartbeat} <- msg(Heartbeat) |> VehicleStatus.ensure_operational() do
      do_disarm(system_id, component_id, mavlink_version, heartbeat)
    else
      {:error, {:invalid_vehicle_status, status, description}} ->
        Logger.warning(
          "Cannot disarm vehicle #{system_id}.#{component_id}: #{description} (#{status})"
        )

        {:error, :cannot_disarm_invalid_vehicle_status}

      {:error, reason} ->
        Logger.warning("Could not determine current status of vehicle #{system_id}.#{component_id}")
        {:error, reason}
    end
  end

  defp do_arm(system_id, component_id, mavlink_version, _heartbeat) do
    MAV.subscribe(message: Heartbeat, source_system: system_id)

    Await.await_message(
      fn
        %Heartbeat{base_mode: base_mode} ->
          if :mav_mode_flag_safety_armed in base_mode do
            :ok
          else
            :retry
          end

        _ ->
          :retry
      end,
      fn ->
        MAV.pack_and_send(
          %CommandLong{
            command: :mav_cmd_component_arm_disarm,
            confirmation: 1,
            param1: 1.0,
            param2: 0.0,
            param3: 0.0,
            param4: 0.0,
            param5: 0.0,
            param6: 0.0,
            param7: 0.0,
            target_component: component_id,
            target_system: system_id
          },
          mavlink_version
        )
      end,
      timeout: @retry_timeout,
      unsubscribe: &MAV.unsubscribe/0
    )
    |> tap(fn
      :ok -> Logger.info("Armed vehicle #{system_id}.#{component_id}")
      {:error, :timeout} -> Logger.warning("Timed out arming vehicle #{system_id}.#{component_id}")
      _ -> :ok
    end)
  end

  defp do_disarm(system_id, component_id, mavlink_version, _heartbeat) do
    MAV.subscribe(message: Heartbeat, source_system: system_id)

    Await.await_message(
      fn
        %Heartbeat{base_mode: base_mode} ->
          if :mav_mode_flag_safety_armed not in base_mode do
            :ok
          else
            :retry
          end

        _ ->
          :retry
      end,
      fn ->
        MAV.pack_and_send(
          %CommandLong{
            command: :mav_cmd_component_arm_disarm,
            confirmation: 1,
            param1: 0.0,
            param2: 0.0,
            param3: 0.0,
            param4: 0.0,
            param5: 0.0,
            param6: 0.0,
            param7: 0.0,
            target_component: component_id,
            target_system: system_id
          },
          mavlink_version
        )
      end,
      timeout: @retry_timeout,
      unsubscribe: &MAV.unsubscribe/0
    )
    |> tap(fn
      :ok -> Logger.info("Disarmed vehicle #{system_id}.#{component_id}")
      {:error, :timeout} -> Logger.warning("Timed out disarming vehicle #{system_id}.#{component_id}")
      _ -> :ok
    end)
  end
end
