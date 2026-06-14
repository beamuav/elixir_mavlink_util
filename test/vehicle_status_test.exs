defmodule MAVLink.Util.VehicleStatusTest do
  use ExUnit.Case, async: true

  alias MAVLink.Util.VehicleStatus
  alias MAVLink.Util.TestHelpers

  test "accepts operational vehicle statuses" do
    for status <- VehicleStatus.valid_statuses() do
      heartbeat = {:ok, 10, TestHelpers.default_heartbeat(system_status: status)}
      assert {:ok, 10, _} = VehicleStatus.ensure_operational(heartbeat)
    end
  end

  test "rejects boot state" do
    heartbeat = {:ok, 10, TestHelpers.default_heartbeat(system_status: :mav_state_boot)}

    assert {:error, {:invalid_vehicle_status, :mav_state_boot}} =
             VehicleStatus.ensure_operational(heartbeat)
  end
end
