defmodule MAVLink.Util.TestHelpers do
  @moduledoc false

  alias APM.Message.Heartbeat
  alias MAVLink.Util.System

  @systems :systems
  @messages :messages
  @params :params

  def ensure_tables! do
    access = if Mix.env() == :test, do: :public, else: :protected

    for {name, type} <- [
          {@messages, :set},
          {@systems, :ordered_set},
          {@params, :ordered_set}
        ] do
      case :ets.info(name) do
        :undefined ->
          :ets.new(name, [:named_table, access, {:read_concurrency, true}, type])

        _ ->
          :ok
      end
    end

    :ok
  end

  def reset_tables! do
    for table <- [@messages, @systems, @params] do
      case :ets.info(table) do
        :undefined -> :ok
        _ -> :ets.delete_all_objects(table)
      end
    end

    :ok
  end

  def insert_vehicle(system_id, component_id, attrs \\ []) do
    ensure_tables!()

    system =
      System.new(
        Keyword.get(attrs, :mavlink_major_version, 2),
        Keyword.get(attrs, :mavlink_minor_version, 3)
      )
      |> then(fn sys ->
        Enum.reduce(attrs, sys, fn
          {:param_count, value}, acc -> %{acc | param_count: value}
          {:param_count_loaded, value}, acc -> %{acc | param_count_loaded: value}
          _, acc -> acc
        end)
      end)

    :ets.insert(@systems, {{system_id, component_id}, system})
    :ok
  end

  def insert_heartbeat(system_id, component_id, heartbeat \\ default_heartbeat()) do
    ensure_tables!()

    :ets.insert(
      @messages,
      {{system_id, component_id, Heartbeat}, {:erlang.monotonic_time(:milli_seconds), heartbeat}}
    )

    :ok
  end

  def default_heartbeat(overrides \\ []) do
    struct!(
      %Heartbeat{
        type: :mav_type_quadrotor,
        autopilot: :mav_autopilot_ardupilotmega,
        base_mode: MapSet.new([:mav_mode_flag_safety_armed, :mav_mode_flag_custom_mode_enabled]),
        custom_mode: 0,
        system_status: :mav_state_active,
        mavlink_version: 3
      },
      overrides
    )
  end

  def frame(message, system_id \\ 1, component_id \\ 1, version \\ 2) do
    %MAVLink.Frame{
      message: message,
      source_system: system_id,
      source_component: component_id,
      version: version
    }
  end
end
