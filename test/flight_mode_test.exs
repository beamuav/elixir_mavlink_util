defmodule MAVLink.Util.FlightModeTest do
  use ExUnit.Case, async: true

  alias MAVLink.Util.FlightMode
  alias MAVLink.Util.TestHelpers

  test "builds copter stabilise mode using custom_mode" do
    heartbeat = TestHelpers.default_heartbeat(type: :mav_type_quadrotor, custom_mode: 4)

    assert {:ok, set_mode} = FlightMode.build_set_mode(heartbeat, :stabilise)
    assert set_mode.custom_mode == APM.encode(:copter_mode_stabilize, :copter_mode)
    assert :mav_mode_flag_custom_mode_enabled in set_mode.base_mode
    assert :mav_mode_flag_safety_armed in set_mode.base_mode
  end

  test "builds plane manual mode for fixed wing" do
    heartbeat = TestHelpers.default_heartbeat(type: :mav_type_fixed_wing, custom_mode: 10)

    assert {:ok, set_mode} = FlightMode.build_set_mode(heartbeat, :manual)
    assert set_mode.custom_mode == APM.encode(:plane_mode_manual, :plane_mode)
  end

  test "returns unsupported mode for unknown vehicle type" do
    heartbeat = TestHelpers.default_heartbeat(type: :mav_type_gcs)

    assert {:error, {:unsupported_mode, :stabilise, :mav_type_gcs}} =
             FlightMode.build_set_mode(heartbeat, :stabilise)
  end

  test "mode_confirmed? compares custom_mode values" do
    heartbeat = TestHelpers.default_heartbeat(custom_mode: 2)
    assert FlightMode.mode_confirmed?(heartbeat, 2)
    refute FlightMode.mode_confirmed?(heartbeat, 3)
  end
end
