defmodule MAVLink.Util.FocusManagerTest do
  use ExUnit.Case, async: false

  alias MAVLink.Util.FocusManager
  alias MAVLink.Util.TestHelpers

  setup do
    TestHelpers.reset_tables!()
    {:ok, _pid} = start_supervised({FocusManager, %{}})
    :ok
  end

  test "sets focus when vehicle exists in systems table" do
    TestHelpers.insert_vehicle(1, 1)

    assert {:ok, {1, 1, 2}} = FocusManager.focus(1, 1)
    assert {:ok, {1, 1, 2}} = FocusManager.focus()
  end

  test "returns error when vehicle is unknown" do
    assert {:error, :no_such_mav} = FocusManager.focus(9, 1)
  end

  test "clears focus when session process exits" do
    TestHelpers.insert_vehicle(2, 1)

    parent = self()

    pid =
      spawn(fn ->
        assert {:ok, {2, 1, 2}} = FocusManager.focus(2, 1)
        send(parent, :focused)

        receive do
          :stop -> :ok
        end
      end)

    assert_receive :focused
    assert {:ok, {2, 1, 2}} = FocusManager.focus(pid)
    send(pid, :stop)
    Process.sleep(50)
    assert {:error, :not_focussed} = FocusManager.focus(pid)
  end
end
