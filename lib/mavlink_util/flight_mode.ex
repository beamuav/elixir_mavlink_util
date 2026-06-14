defmodule MAVLink.Util.FlightMode do
  @moduledoc false

  alias APM.Message.Heartbeat
  alias APM.Message.SetMode

  @mode_map %{
    manual: %{
      :mav_type_quadrotor => {:copter_mode, :copter_mode_acro},
      :mav_type_hexarotor => {:copter_mode, :copter_mode_acro},
      :mav_type_octorotor => {:copter_mode, :copter_mode_acro},
      :mav_type_tricopter => {:copter_mode, :copter_mode_acro},
      :mav_type_fixed_wing => {:plane_mode, :plane_mode_manual},
      :mav_type_vtol_duorotor => {:plane_mode, :plane_mode_manual},
      :mav_type_vtol_quadrotor => {:plane_mode, :plane_mode_manual},
      :mav_type_vtol_tiltrotor => {:plane_mode, :plane_mode_manual},
      :mav_type_ground_rover => {:rover_mode, :rover_mode_manual},
      :mav_type_surface_boat => {:rover_mode, :rover_mode_manual},
      :mav_type_submarine => {:sub_mode, :sub_mode_manual}
    },
    stabilise: %{
      :mav_type_quadrotor => {:copter_mode, :copter_mode_stabilize},
      :mav_type_hexarotor => {:copter_mode, :copter_mode_stabilize},
      :mav_type_octorotor => {:copter_mode, :copter_mode_stabilize},
      :mav_type_tricopter => {:copter_mode, :copter_mode_stabilize},
      :mav_type_fixed_wing => {:plane_mode, :plane_mode_stabilize},
      :mav_type_vtol_duorotor => {:plane_mode, :plane_mode_qstabilize},
      :mav_type_vtol_quadrotor => {:plane_mode, :plane_mode_qstabilize},
      :mav_type_vtol_tiltrotor => {:plane_mode, :plane_mode_qstabilize}
    }
  }

  @doc false
  def build_set_mode(%Heartbeat{type: type, base_mode: base_mode}, mode_name)
      when mode_name in [:manual, :stabilise] do
    with {enum_type, enum_value} <- Map.get(@mode_map, mode_name, %{}) |> Map.get(type) do
      custom_mode = APM.encode(enum_value, enum_type)

      base_mode =
        MapSet.new([:mav_mode_flag_custom_mode_enabled])
        |> maybe_add_armed(base_mode)

      {:ok,
       %SetMode{
         target_system: 0,
         base_mode: base_mode,
         custom_mode: custom_mode
       }}
    else
      _ -> {:error, {:unsupported_mode, mode_name, type}}
    end
  end

  @doc false
  def mode_confirmed?(%Heartbeat{custom_mode: current}, expected_custom_mode),
    do: current == expected_custom_mode

  defp maybe_add_armed(base_mode, current_base_mode) do
    if :mav_mode_flag_safety_armed in current_base_mode do
      MapSet.put(base_mode, :mav_mode_flag_safety_armed)
    else
      base_mode
    end
  end
end
