defmodule MAVLink.Util.CacheManagerTest do
  use ExUnit.Case, async: false

  alias APM.Message.Heartbeat
  alias APM.Message.ParamValue
  alias MAVLink.Util.CacheManager
  alias MAVLink.Util.System
  alias MAVLink.Util.TestHelpers

  @systems :systems

  setup do
    TestHelpers.reset_tables!()

    start_cache_manager = fn ->
      case Process.whereis(CacheManager) do
        nil -> start_supervised!({CacheManager, %{}})
        pid -> pid
      end
    end

    pid = start_cache_manager.()

    on_exit(fn ->
      if Process.alive?(pid), do: GenServer.stop(pid, :normal, 5_000)
    end)

    :ok
  end

  test "registers a vehicle on first heartbeat" do
    frame = TestHelpers.frame(TestHelpers.default_heartbeat())

    send(CacheManager, frame)
    Process.sleep(20)

    assert [{{1, 1}, %System{mavlink_major_version: 2, mavlink_minor_version: 3}}] =
             :ets.tab2list(@systems)
  end

  test "caches messages and params" do
    send(CacheManager, TestHelpers.frame(TestHelpers.default_heartbeat()))

    param =
      %ParamValue{
        param_id: "WPNAV_SPEED",
        param_value: 500.0,
        param_count: 1,
        param_index: 0,
        param_type: :mav_param_type_real32
      }

    send(CacheManager, TestHelpers.frame(param))
    Process.sleep(20)

    assert {:ok, _age, %Heartbeat{}} = CacheManager.msg({1, 1, 2}, Heartbeat)
    assert {:ok, %{wpnav_speed: 500.0}} = CacheManager.params({1, 1, 2}, "WPNAV")
  end

  test "msg/2 returns error when message is missing" do
    TestHelpers.insert_vehicle(3, 1)
    assert {:error, :no_such_message} = CacheManager.msg({3, 1, 2}, Heartbeat)
  end
end
