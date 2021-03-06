defmodule APM.Types do

  @typedoc "A MAVLink message"
  @type message :: APM.Message.Heartbeat | APM.Message.SysStatus | APM.Message.SystemTime | APM.Message.Ping | APM.Message.ChangeOperatorControl | APM.Message.ChangeOperatorControlAck | APM.Message.AuthKey | APM.Message.SetMode | APM.Message.ParamRequestRead | APM.Message.ParamRequestList | APM.Message.ParamValue | APM.Message.ParamSet | APM.Message.GpsRawInt | APM.Message.GpsStatus | APM.Message.ScaledImu | APM.Message.RawImu | APM.Message.RawPressure | APM.Message.ScaledPressure | APM.Message.Attitude | APM.Message.AttitudeQuaternion | APM.Message.LocalPositionNed | APM.Message.GlobalPositionInt | APM.Message.RcChannelsScaled | APM.Message.RcChannelsRaw | APM.Message.ServoOutputRaw | APM.Message.MissionRequestPartialList | APM.Message.MissionWritePartialList | APM.Message.MissionItem | APM.Message.MissionRequest | APM.Message.MissionSetCurrent | APM.Message.MissionCurrent | APM.Message.MissionRequestList | APM.Message.MissionCount | APM.Message.MissionClearAll | APM.Message.MissionItemReached | APM.Message.MissionAck | APM.Message.SetGpsGlobalOrigin | APM.Message.GpsGlobalOrigin | APM.Message.ParamMapRc | APM.Message.MissionRequestInt | APM.Message.SafetySetAllowedArea | APM.Message.SafetyAllowedArea | APM.Message.AttitudeQuaternionCov | APM.Message.NavControllerOutput | APM.Message.GlobalPositionIntCov | APM.Message.LocalPositionNedCov | APM.Message.RcChannels | APM.Message.RequestDataStream | APM.Message.DataStream | APM.Message.ManualControl | APM.Message.RcChannelsOverride | APM.Message.MissionItemInt | APM.Message.VfrHud | APM.Message.CommandInt | APM.Message.CommandLong | APM.Message.CommandAck | APM.Message.ManualSetpoint | APM.Message.SetAttitudeTarget | APM.Message.AttitudeTarget | APM.Message.SetPositionTargetLocalNed | APM.Message.PositionTargetLocalNed | APM.Message.SetPositionTargetGlobalInt | APM.Message.PositionTargetGlobalInt | APM.Message.LocalPositionNedSystemGlobalOffset | APM.Message.HilState | APM.Message.HilControls | APM.Message.HilRcInputsRaw | APM.Message.HilActuatorControls | APM.Message.OpticalFlow | APM.Message.GlobalVisionPositionEstimate | APM.Message.VisionPositionEstimate | APM.Message.VisionSpeedEstimate | APM.Message.ViconPositionEstimate | APM.Message.HighresImu | APM.Message.OpticalFlowRad | APM.Message.HilSensor | APM.Message.SimState | APM.Message.RadioStatus | APM.Message.FileTransferProtocol | APM.Message.Timesync | APM.Message.CameraTrigger | APM.Message.HilGps | APM.Message.HilOpticalFlow | APM.Message.HilStateQuaternion | APM.Message.ScaledImu2 | APM.Message.LogRequestList | APM.Message.LogEntry | APM.Message.LogRequestData | APM.Message.LogData | APM.Message.LogErase | APM.Message.LogRequestEnd | APM.Message.GpsInjectData | APM.Message.Gps2Raw | APM.Message.PowerStatus | APM.Message.SerialControl | APM.Message.GpsRtk | APM.Message.Gps2Rtk | APM.Message.ScaledImu3 | APM.Message.DataTransmissionHandshake | APM.Message.EncapsulatedData | APM.Message.DistanceSensor | APM.Message.TerrainRequest | APM.Message.TerrainData | APM.Message.TerrainCheck | APM.Message.TerrainReport | APM.Message.ScaledPressure2 | APM.Message.AttPosMocap | APM.Message.SetActuatorControlTarget | APM.Message.ActuatorControlTarget | APM.Message.Altitude | APM.Message.ResourceRequest | APM.Message.ScaledPressure3 | APM.Message.FollowTarget | APM.Message.ControlSystemState | APM.Message.BatteryStatus | APM.Message.AutopilotVersion | APM.Message.LandingTarget | APM.Message.SensorOffsets | APM.Message.SetMagOffsets | APM.Message.Meminfo | APM.Message.ApAdc | APM.Message.DigicamConfigure | APM.Message.DigicamControl | APM.Message.MountConfigure | APM.Message.MountControl | APM.Message.MountStatus | APM.Message.FencePoint | APM.Message.FenceFetchPoint | APM.Message.FenceStatus | APM.Message.Ahrs | APM.Message.Simstate | APM.Message.Hwstatus | APM.Message.Radio | APM.Message.LimitsStatus | APM.Message.Wind | APM.Message.Data16 | APM.Message.Data32 | APM.Message.Data64 | APM.Message.Data96 | APM.Message.Rangefinder | APM.Message.AirspeedAutocal | APM.Message.RallyPoint | APM.Message.RallyFetchPoint | APM.Message.CompassmotStatus | APM.Message.Ahrs2 | APM.Message.CameraStatus | APM.Message.CameraFeedback | APM.Message.Battery2 | APM.Message.Ahrs3 | APM.Message.AutopilotVersionRequest | APM.Message.RemoteLogDataBlock | APM.Message.RemoteLogBlockStatus | APM.Message.LedControl | APM.Message.MagCalProgress | APM.Message.MagCalReport | APM.Message.EkfStatusReport | APM.Message.PidTuning | APM.Message.Deepstall | APM.Message.GimbalReport | APM.Message.GimbalControl | APM.Message.GimbalTorqueCmdReport | APM.Message.GoproHeartbeat | APM.Message.GoproGetRequest | APM.Message.GoproGetResponse | APM.Message.GoproSetRequest | APM.Message.GoproSetResponse | APM.Message.EfiStatus | APM.Message.Rpm | APM.Message.EstimatorStatus | APM.Message.WindCov | APM.Message.GpsInput | APM.Message.GpsRtcmData | APM.Message.HighLatency | APM.Message.HighLatency2 | APM.Message.Vibration | APM.Message.HomePosition | APM.Message.SetHomePosition | APM.Message.MessageInterval | APM.Message.ExtendedSysState | APM.Message.AdsbVehicle | APM.Message.Collision | APM.Message.V2Extension | APM.Message.MemoryVect | APM.Message.DebugVect | APM.Message.NamedValueFloat | APM.Message.NamedValueInt | APM.Message.Statustext | APM.Message.Debug | APM.Message.SetupSigning | APM.Message.ButtonChange | APM.Message.PlayTune | APM.Message.CameraInformation | APM.Message.CameraSettings | APM.Message.StorageInformation | APM.Message.CameraCaptureStatus | APM.Message.CameraImageCaptured | APM.Message.FlightInformation | APM.Message.MountOrientation | APM.Message.LoggingData | APM.Message.LoggingDataAcked | APM.Message.LoggingAck | APM.Message.VideoStreamInformation | APM.Message.VideoStreamStatus | APM.Message.WifiConfigAp | APM.Message.AisVessel | APM.Message.UavcanNodeStatus | APM.Message.UavcanNodeInfo | APM.Message.ObstacleDistance | APM.Message.Odometry | APM.Message.IsbdLinkStatus | APM.Message.RawRpm | APM.Message.UtmGlobalPosition | APM.Message.DebugFloatArray | APM.Message.GeneratorStatus | APM.Message.ActuatorOutputStatus | APM.Message.WheelDistance | APM.Message.WinchStatus | APM.Message.UavionixAdsbOutCfg | APM.Message.UavionixAdsbOutDynamic | APM.Message.UavionixAdsbTransceiverHealthReport | APM.Message.DeviceOpRead | APM.Message.DeviceOpReadReply | APM.Message.DeviceOpWrite | APM.Message.DeviceOpWriteReply | APM.Message.AdapTuning | APM.Message.VisionPositionDelta | APM.Message.AoaSsa | APM.Message.EscTelemetry1To4 | APM.Message.EscTelemetry5To8 | APM.Message.EscTelemetry9To12 | APM.Message.OsdParamConfig | APM.Message.OsdParamConfigReply | APM.Message.OsdParamShowConfig | APM.Message.OsdParamShowConfigReply | APM.Message.ObstacleDistance3d | APM.Message.IcarousHeartbeat | APM.Message.IcarousKinematicBands
  
  
  @typedoc "An atom representing a MAVLink enumeration type"
  @type enum_type :: :accelcal_vehicle_pos | :adsb_altitude_type | :adsb_emitter_type | :adsb_flags | :ais_flags | :ais_nav_status | :ais_type | :attitude_target_typemask | :camera_cap_flags | :camera_feedback_flags | :camera_mode | :camera_status_types | :copter_mode | :deepstall_stage | :device_op_bustype | :ekf_status_flags | :estimator_status_flags | :fence_action | :fence_breach | :fence_mitigate | :firmware_version_type | :gimbal_axis | :gimbal_axis_calibration_required | :gimbal_axis_calibration_status | :gopro_burst_rate | :gopro_capture_mode | :gopro_charging | :gopro_command | :gopro_field_of_view | :gopro_frame_rate | :gopro_heartbeat_flags | :gopro_heartbeat_status | :gopro_model | :gopro_photo_resolution | :gopro_protune_colour | :gopro_protune_exposure | :gopro_protune_gain | :gopro_protune_sharpness | :gopro_protune_white_balance | :gopro_request_status | :gopro_resolution | :gopro_video_settings_flags | :gps_fix_type | :gps_input_ignore_flags | :gripper_actions | :heading_type | :hl_failure_flag | :icarous_fms_state | :icarous_track_band_types | :landing_target_type | :led_control_pattern | :limit_module | :limits_state | :mag_cal_status | :mav_arm_auth_denied_reason | :mav_autopilot | :mav_battery_charge_state | :mav_battery_function | :mav_battery_type | :mav_cmd | :mav_cmd_ack | :mav_cmd_do_aux_function_switch_level | :mav_collision_action | :mav_collision_src | :mav_collision_threat_level | :mav_component | :mav_data_stream | :mav_distance_sensor | :mav_do_reposition_flags | :mav_estimator_type | :mav_frame | :mav_generator_status_flag | :mav_goto | :mav_landed_state | :mav_mission_result | :mav_mission_type | :mav_mode | :mav_mode_flag | :mav_mode_flag_decode_position | :mav_mode_gimbal | :mav_mount_mode | :mav_param_type | :mav_power_status | :mav_protocol_capability | :mav_remote_log_data_block_commands | :mav_remote_log_data_block_statuses | :mav_result | :mav_roi | :mav_sensor_orientation | :mav_severity | :mav_state | :mav_sys_status_sensor | :mav_type | :mav_vtol_state | :mav_winch_status_flag | :mavlink_data_stream_type | :motor_test_order | :motor_test_throttle_type | :osd_param_config_error | :osd_param_config_type | :parachute_action | :pid_tuning_axis | :plane_mode | :position_target_typemask | :precision_land_mode | :rally_flags | :rc_type | :rover_mode | :rtk_baseline_coordinate_system | :scripting_cmd | :serial_control_dev | :serial_control_flag | :speed_type | :storage_status | :sub_mode | :tracker_mode | :uavcan_node_health | :uavcan_node_mode | :uavionix_adsb_emergency_status | :uavionix_adsb_out_cfg_aircraft_size | :uavionix_adsb_out_cfg_gps_offset_lat | :uavionix_adsb_out_cfg_gps_offset_lon | :uavionix_adsb_out_dynamic_gps_fix | :uavionix_adsb_out_dynamic_state | :uavionix_adsb_out_rf_select | :uavionix_adsb_rf_health | :utm_data_avail_flags | :utm_flight_state | :video_stream_status_flags | :video_stream_type | :vtol_transition_heading | :winch_actions
  
  
  @typedoc "An atom representing a MAVLink enumeration type value"
  @type enum_value :: accelcal_vehicle_pos | adsb_altitude_type | adsb_emitter_type | adsb_flags | ais_flags | ais_nav_status | ais_type | attitude_target_typemask | camera_cap_flags | camera_feedback_flags | camera_mode | camera_status_types | copter_mode | deepstall_stage | device_op_bustype | ekf_status_flags | estimator_status_flags | fence_action | fence_breach | fence_mitigate | firmware_version_type | gimbal_axis | gimbal_axis_calibration_required | gimbal_axis_calibration_status | gopro_burst_rate | gopro_capture_mode | gopro_charging | gopro_command | gopro_field_of_view | gopro_frame_rate | gopro_heartbeat_flags | gopro_heartbeat_status | gopro_model | gopro_photo_resolution | gopro_protune_colour | gopro_protune_exposure | gopro_protune_gain | gopro_protune_sharpness | gopro_protune_white_balance | gopro_request_status | gopro_resolution | gopro_video_settings_flags | gps_fix_type | gps_input_ignore_flags | gripper_actions | heading_type | hl_failure_flag | icarous_fms_state | icarous_track_band_types | landing_target_type | led_control_pattern | limit_module | limits_state | mag_cal_status | mav_arm_auth_denied_reason | mav_autopilot | mav_battery_charge_state | mav_battery_function | mav_battery_type | mav_cmd | mav_cmd_ack | mav_cmd_do_aux_function_switch_level | mav_collision_action | mav_collision_src | mav_collision_threat_level | mav_component | mav_data_stream | mav_distance_sensor | mav_do_reposition_flags | mav_estimator_type | mav_frame | mav_generator_status_flag | mav_goto | mav_landed_state | mav_mission_result | mav_mission_type | mav_mode | mav_mode_flag | mav_mode_flag_decode_position | mav_mode_gimbal | mav_mount_mode | mav_param_type | mav_power_status | mav_protocol_capability | mav_remote_log_data_block_commands | mav_remote_log_data_block_statuses | mav_result | mav_roi | mav_sensor_orientation | mav_severity | mav_state | mav_sys_status_sensor | mav_type | mav_vtol_state | mav_winch_status_flag | mavlink_data_stream_type | motor_test_order | motor_test_throttle_type | osd_param_config_error | osd_param_config_type | parachute_action | pid_tuning_axis | plane_mode | position_target_typemask | precision_land_mode | rally_flags | rc_type | rover_mode | rtk_baseline_coordinate_system | scripting_cmd | serial_control_dev | serial_control_flag | speed_type | storage_status | sub_mode | tracker_mode | uavcan_node_health | uavcan_node_mode | uavionix_adsb_emergency_status | uavionix_adsb_out_cfg_aircraft_size | uavionix_adsb_out_cfg_gps_offset_lat | uavionix_adsb_out_cfg_gps_offset_lon | uavionix_adsb_out_dynamic_gps_fix | uavionix_adsb_out_dynamic_state | uavionix_adsb_out_rf_select | uavionix_adsb_rf_health | utm_data_avail_flags | utm_flight_state | video_stream_status_flags | video_stream_type | vtol_transition_heading | winch_actions
  
  
  @typedoc "Measurement unit of field value"
  @type field_unit :: :"%" | :"MiB/s" | :"bits/s" | :"c%" | :"cdeg/s" | :"cm/s" | :"cm^2" | :"cm^3" | :"cm^3/min" | :"d%" | :"deg/2" | :"deg/s" | :"dm/s" | :"m/s" | :"m/s*5" | :"m/s/s" | :"mm/s" | :"mrad/s" | :"rad/s" | :A | :Hz | :MiB | :Pa | :V | :W | :bytes | :cA | :cV | :cdeg | :cdegC | :cm | :cs | :dB | :dam | :deg | :degC | :degE5 | :degE7 | :dm | :dpix | :ds | :gauss | :hJ | :hPa | :kPa | :kg | :m | :mAh | :mG | :mV | :mbar | :mgauss | :mm | :ms | :pix | :rad | :rpm | :s | :us
  
  
  @typedoc ""
  @type accelcal_vehicle_pos :: :accelcal_vehicle_pos_level | :accelcal_vehicle_pos_left | :accelcal_vehicle_pos_right | :accelcal_vehicle_pos_nosedown | :accelcal_vehicle_pos_noseup | :accelcal_vehicle_pos_back | :accelcal_vehicle_pos_success | :accelcal_vehicle_pos_failed

  @typedoc "Enumeration of the ADSB altimeter types"
  @type adsb_altitude_type :: :adsb_altitude_type_pressure_qnh | :adsb_altitude_type_geometric

  @typedoc "ADSB classification for the type of vehicle emitting the transponder signal"
  @type adsb_emitter_type :: :adsb_emitter_type_no_info | :adsb_emitter_type_light | :adsb_emitter_type_small | :adsb_emitter_type_large | :adsb_emitter_type_high_vortex_large | :adsb_emitter_type_heavy | :adsb_emitter_type_highly_manuv | :adsb_emitter_type_rotocraft | :adsb_emitter_type_unassigned | :adsb_emitter_type_glider | :adsb_emitter_type_lighter_air | :adsb_emitter_type_parachute | :adsb_emitter_type_ultra_light | :adsb_emitter_type_unassigned2 | :adsb_emitter_type_uav | :adsb_emitter_type_space | :adsb_emitter_type_unassgined3 | :adsb_emitter_type_emergency_surface | :adsb_emitter_type_service_surface | :adsb_emitter_type_point_obstacle

  @typedoc "These flags indicate status such as data validity of each data source. Set = data valid"
  @type adsb_flags :: :adsb_flags_valid_coords | :adsb_flags_valid_altitude | :adsb_flags_valid_heading | :adsb_flags_valid_velocity | :adsb_flags_valid_callsign | :adsb_flags_valid_squawk | :adsb_flags_simulated | :adsb_flags_vertical_velocity_valid | :adsb_flags_baro_valid | :adsb_flags_source_uat

  @typedoc "These flags are used in the AIS_VESSEL.fields bitmask to indicate validity of data in the other message fields. When set, the data is valid."
  @type ais_flags :: :ais_flags_position_accuracy | :ais_flags_valid_cog | :ais_flags_valid_velocity | :ais_flags_high_velocity | :ais_flags_valid_turn_rate | :ais_flags_turn_rate_sign_only | :ais_flags_valid_dimensions | :ais_flags_large_bow_dimension | :ais_flags_large_stern_dimension | :ais_flags_large_port_dimension | :ais_flags_large_starboard_dimension | :ais_flags_valid_callsign | :ais_flags_valid_name

  @typedoc "Navigational status of AIS vessel, enum duplicated from AIS standard, https://gpsd.gitlab.io/gpsd/AIVDM.html"
  @type ais_nav_status :: :under_way | :ais_nav_anchored | :ais_nav_un_commanded | :ais_nav_restricted_manoeuverability | :ais_nav_draught_constrained | :ais_nav_moored | :ais_nav_aground | :ais_nav_fishing | :ais_nav_sailing | :ais_nav_reserved_hsc | :ais_nav_reserved_wig | :ais_nav_reserved_1 | :ais_nav_reserved_2 | :ais_nav_reserved_3 | :ais_nav_ais_sart | :ais_nav_unknown

  @typedoc "Type of AIS vessel, enum duplicated from AIS standard, https://gpsd.gitlab.io/gpsd/AIVDM.html"
  @type ais_type :: :ais_type_unknown | :ais_type_reserved_1 | :ais_type_reserved_2 | :ais_type_reserved_3 | :ais_type_reserved_4 | :ais_type_reserved_5 | :ais_type_reserved_6 | :ais_type_reserved_7 | :ais_type_reserved_8 | :ais_type_reserved_9 | :ais_type_reserved_10 | :ais_type_reserved_11 | :ais_type_reserved_12 | :ais_type_reserved_13 | :ais_type_reserved_14 | :ais_type_reserved_15 | :ais_type_reserved_16 | :ais_type_reserved_17 | :ais_type_reserved_18 | :ais_type_reserved_19 | :ais_type_wig | :ais_type_wig_hazardous_a | :ais_type_wig_hazardous_b | :ais_type_wig_hazardous_c | :ais_type_wig_hazardous_d | :ais_type_wig_reserved_1 | :ais_type_wig_reserved_2 | :ais_type_wig_reserved_3 | :ais_type_wig_reserved_4 | :ais_type_wig_reserved_5 | :ais_type_fishing | :ais_type_towing | :ais_type_towing_large | :ais_type_dredging | :ais_type_diving | :ais_type_military | :ais_type_sailing | :ais_type_pleasure | :ais_type_reserved_20 | :ais_type_reserved_21 | :ais_type_hsc | :ais_type_hsc_hazardous_a | :ais_type_hsc_hazardous_b | :ais_type_hsc_hazardous_c | :ais_type_hsc_hazardous_d | :ais_type_hsc_reserved_1 | :ais_type_hsc_reserved_2 | :ais_type_hsc_reserved_3 | :ais_type_hsc_reserved_4 | :ais_type_hsc_unknown | :ais_type_pilot | :ais_type_sar | :ais_type_tug | :ais_type_port_tender | :ais_type_anti_pollution | :ais_type_law_enforcement | :ais_type_spare_local_1 | :ais_type_spare_local_2 | :ais_type_medical_transport | :ais_type_nonecombatant | :ais_type_passenger | :ais_type_passenger_hazardous_a | :ais_type_passenger_hazardous_b | :ais_type_ais_type_passenger_hazardous_c | :ais_type_passenger_hazardous_d | :ais_type_passenger_reserved_1 | :ais_type_passenger_reserved_2 | :ais_type_passenger_reserved_3 | :ais_type_ais_type_passenger_reserved_4 | :ais_type_passenger_unknown | :ais_type_cargo | :ais_type_cargo_hazardous_a | :ais_type_cargo_hazardous_b | :ais_type_cargo_hazardous_c | :ais_type_cargo_hazardous_d | :ais_type_cargo_reserved_1 | :ais_type_cargo_reserved_2 | :ais_type_cargo_reserved_3 | :ais_type_cargo_reserved_4 | :ais_type_cargo_unknown | :ais_type_tanker | :ais_type_tanker_hazardous_a | :ais_type_tanker_hazardous_b | :ais_type_tanker_hazardous_c | :ais_type_tanker_hazardous_d | :ais_type_tanker_reserved_1 | :ais_type_tanker_reserved_2 | :ais_type_tanker_reserved_3 | :ais_type_tanker_reserved_4 | :ais_type_tanker_unknown | :ais_type_other | :ais_type_other_hazardous_a | :ais_type_other_hazardous_b | :ais_type_other_hazardous_c | :ais_type_other_hazardous_d | :ais_type_other_reserved_1 | :ais_type_other_reserved_2 | :ais_type_other_reserved_3 | :ais_type_other_reserved_4 | :ais_type_other_unknown

  @typedoc "Bitmap to indicate which dimensions should be ignored by the vehicle: a value of 0b00000000 indicates that none of the setpoint dimensions should be ignored."
  @type attitude_target_typemask :: :attitude_target_typemask_body_roll_rate_ignore | :attitude_target_typemask_body_pitch_rate_ignore | :attitude_target_typemask_body_yaw_rate_ignore | :attitude_target_typemask_throttle_ignore | :attitude_target_typemask_attitude_ignore

  @typedoc "Camera capability flags (Bitmap)"
  @type camera_cap_flags :: :camera_cap_flags_capture_video | :camera_cap_flags_capture_image | :camera_cap_flags_has_modes | :camera_cap_flags_can_capture_image_in_video_mode | :camera_cap_flags_can_capture_video_in_image_mode | :camera_cap_flags_has_image_survey_mode | :camera_cap_flags_has_basic_zoom | :camera_cap_flags_has_basic_focus | :camera_cap_flags_has_video_stream | :camera_cap_flags_has_tracking_point | :camera_cap_flags_has_tracking_rectangle | :camera_cap_flags_has_tracking_geo_status

  @typedoc ""
  @type camera_feedback_flags :: :camera_feedback_photo | :camera_feedback_video | :camera_feedback_badexposure | :camera_feedback_closedloop | :camera_feedback_openloop

  @typedoc "Camera Modes."
  @type camera_mode :: :camera_mode_image | :camera_mode_video | :camera_mode_image_survey

  @typedoc ""
  @type camera_status_types :: :camera_status_type_heartbeat | :camera_status_type_trigger | :camera_status_type_disconnect | :camera_status_type_error | :camera_status_type_lowbatt | :camera_status_type_lowstore | :camera_status_type_lowstorev

  @typedoc "A mapping of copter flight modes for custom_mode field of heartbeat."
  @type copter_mode :: :copter_mode_stabilize | :copter_mode_acro | :copter_mode_alt_hold | :copter_mode_auto | :copter_mode_guided | :copter_mode_loiter | :copter_mode_rtl | :copter_mode_circle | :copter_mode_land | :copter_mode_drift | :copter_mode_sport | :copter_mode_flip | :copter_mode_autotune | :copter_mode_poshold | :copter_mode_brake | :copter_mode_throw | :copter_mode_avoid_adsb | :copter_mode_guided_nogps | :copter_mode_smart_rtl | :copter_mode_flowhold | :copter_mode_follow | :copter_mode_zigzag | :copter_mode_systemid | :copter_mode_autorotate

  @typedoc "Deepstall flight stage."
  @type deepstall_stage :: :deepstall_stage_fly_to_landing | :deepstall_stage_estimate_wind | :deepstall_stage_wait_for_breakout | :deepstall_stage_fly_to_arc | :deepstall_stage_arc | :deepstall_stage_approach | :deepstall_stage_land

  @typedoc "Bus types for device operations."
  @type device_op_bustype :: :device_op_bustype_i2c | :device_op_bustype_spi

  @typedoc "Flags in EKF_STATUS message."
  @type ekf_status_flags :: :ekf_attitude | :ekf_velocity_horiz | :ekf_velocity_vert | :ekf_pos_horiz_rel | :ekf_pos_horiz_abs | :ekf_pos_vert_abs | :ekf_pos_vert_agl | :ekf_const_pos_mode | :ekf_pred_pos_horiz_rel | :ekf_pred_pos_horiz_abs | :ekf_uninitialized

  @typedoc "Flags in ESTIMATOR_STATUS message"
  @type estimator_status_flags :: :estimator_attitude | :estimator_velocity_horiz | :estimator_velocity_vert | :estimator_pos_horiz_rel | :estimator_pos_horiz_abs | :estimator_pos_vert_abs | :estimator_pos_vert_agl | :estimator_const_pos_mode | :estimator_pred_pos_horiz_rel | :estimator_pred_pos_horiz_abs | :estimator_gps_glitch | :estimator_accel_error

  @typedoc ""
  @type fence_action :: :fence_action_none | :fence_action_guided | :fence_action_report | :fence_action_guided_thr_pass | :fence_action_rtl

  @typedoc ""
  @type fence_breach :: :fence_breach_none | :fence_breach_minalt | :fence_breach_maxalt | :fence_breach_boundary

  @typedoc "Actions being taken to mitigate/prevent fence breach"
  @type fence_mitigate :: :fence_mitigate_unknown | :fence_mitigate_none | :fence_mitigate_vel_limit

  @typedoc "These values define the type of firmware release. These values indicate the first version or release of this type. For example the first alpha release would be 64, the second would be 65."
  @type firmware_version_type :: :firmware_version_type_dev | :firmware_version_type_alpha | :firmware_version_type_beta | :firmware_version_type_rc | :firmware_version_type_official

  @typedoc ""
  @type gimbal_axis :: :gimbal_axis_yaw | :gimbal_axis_pitch | :gimbal_axis_roll

  @typedoc ""
  @type gimbal_axis_calibration_required :: :gimbal_axis_calibration_required_unknown | :gimbal_axis_calibration_required_true | :gimbal_axis_calibration_required_false

  @typedoc ""
  @type gimbal_axis_calibration_status :: :gimbal_axis_calibration_status_in_progress | :gimbal_axis_calibration_status_succeeded | :gimbal_axis_calibration_status_failed

  @typedoc ""
  @type gopro_burst_rate :: :gopro_burst_rate_3_in_1_second | :gopro_burst_rate_5_in_1_second | :gopro_burst_rate_10_in_1_second | :gopro_burst_rate_10_in_2_second | :gopro_burst_rate_10_in_3_second | :gopro_burst_rate_30_in_1_second | :gopro_burst_rate_30_in_2_second | :gopro_burst_rate_30_in_3_second | :gopro_burst_rate_30_in_6_second

  @typedoc ""
  @type gopro_capture_mode :: :gopro_capture_mode_video | :gopro_capture_mode_photo | :gopro_capture_mode_burst | :gopro_capture_mode_time_lapse | :gopro_capture_mode_multi_shot | :gopro_capture_mode_playback | :gopro_capture_mode_setup | :gopro_capture_mode_unknown

  @typedoc ""
  @type gopro_charging :: :gopro_charging_disabled | :gopro_charging_enabled

  @typedoc ""
  @type gopro_command :: :gopro_command_power | :gopro_command_capture_mode | :gopro_command_shutter | :gopro_command_battery | :gopro_command_model | :gopro_command_video_settings | :gopro_command_low_light | :gopro_command_photo_resolution | :gopro_command_photo_burst_rate | :gopro_command_protune | :gopro_command_protune_white_balance | :gopro_command_protune_colour | :gopro_command_protune_gain | :gopro_command_protune_sharpness | :gopro_command_protune_exposure | :gopro_command_time | :gopro_command_charging

  @typedoc ""
  @type gopro_field_of_view :: :gopro_field_of_view_wide | :gopro_field_of_view_medium | :gopro_field_of_view_narrow

  @typedoc ""
  @type gopro_frame_rate :: :gopro_frame_rate_12 | :gopro_frame_rate_15 | :gopro_frame_rate_24 | :gopro_frame_rate_25 | :gopro_frame_rate_30 | :gopro_frame_rate_48 | :gopro_frame_rate_50 | :gopro_frame_rate_60 | :gopro_frame_rate_80 | :gopro_frame_rate_90 | :gopro_frame_rate_100 | :gopro_frame_rate_120 | :gopro_frame_rate_240 | :gopro_frame_rate_12_5

  @typedoc ""
  @type gopro_heartbeat_flags :: :gopro_flag_recording

  @typedoc ""
  @type gopro_heartbeat_status :: :gopro_heartbeat_status_disconnected | :gopro_heartbeat_status_incompatible | :gopro_heartbeat_status_connected | :gopro_heartbeat_status_error

  @typedoc ""
  @type gopro_model :: :gopro_model_unknown | :gopro_model_hero_3_plus_silver | :gopro_model_hero_3_plus_black | :gopro_model_hero_4_silver | :gopro_model_hero_4_black

  @typedoc ""
  @type gopro_photo_resolution :: :gopro_photo_resolution_5mp_medium | :gopro_photo_resolution_7mp_medium | :gopro_photo_resolution_7mp_wide | :gopro_photo_resolution_10mp_wide | :gopro_photo_resolution_12mp_wide

  @typedoc ""
  @type gopro_protune_colour :: :gopro_protune_colour_standard | :gopro_protune_colour_neutral

  @typedoc ""
  @type gopro_protune_exposure :: :gopro_protune_exposure_neg_5_0 | :gopro_protune_exposure_neg_4_5 | :gopro_protune_exposure_neg_4_0 | :gopro_protune_exposure_neg_3_5 | :gopro_protune_exposure_neg_3_0 | :gopro_protune_exposure_neg_2_5 | :gopro_protune_exposure_neg_2_0 | :gopro_protune_exposure_neg_1_5 | :gopro_protune_exposure_neg_1_0 | :gopro_protune_exposure_neg_0_5 | :gopro_protune_exposure_zero | :gopro_protune_exposure_pos_0_5 | :gopro_protune_exposure_pos_1_0 | :gopro_protune_exposure_pos_1_5 | :gopro_protune_exposure_pos_2_0 | :gopro_protune_exposure_pos_2_5 | :gopro_protune_exposure_pos_3_0 | :gopro_protune_exposure_pos_3_5 | :gopro_protune_exposure_pos_4_0 | :gopro_protune_exposure_pos_4_5 | :gopro_protune_exposure_pos_5_0

  @typedoc ""
  @type gopro_protune_gain :: :gopro_protune_gain_400 | :gopro_protune_gain_800 | :gopro_protune_gain_1600 | :gopro_protune_gain_3200 | :gopro_protune_gain_6400

  @typedoc ""
  @type gopro_protune_sharpness :: :gopro_protune_sharpness_low | :gopro_protune_sharpness_medium | :gopro_protune_sharpness_high

  @typedoc ""
  @type gopro_protune_white_balance :: :gopro_protune_white_balance_auto | :gopro_protune_white_balance_3000k | :gopro_protune_white_balance_5500k | :gopro_protune_white_balance_6500k | :gopro_protune_white_balance_raw

  @typedoc ""
  @type gopro_request_status :: :gopro_request_success | :gopro_request_failed

  @typedoc ""
  @type gopro_resolution :: :gopro_resolution_480p | :gopro_resolution_720p | :gopro_resolution_960p | :gopro_resolution_1080p | :gopro_resolution_1440p | :gopro_resolution_2_7k_17_9 | :gopro_resolution_2_7k_16_9 | :gopro_resolution_2_7k_4_3 | :gopro_resolution_4k_16_9 | :gopro_resolution_4k_17_9 | :gopro_resolution_720p_superview | :gopro_resolution_1080p_superview | :gopro_resolution_2_7k_superview | :gopro_resolution_4k_superview

  @typedoc ""
  @type gopro_video_settings_flags :: :gopro_video_settings_tv_mode

  @typedoc "Type of GPS fix"
  @type gps_fix_type :: :gps_fix_type_no_gps | :gps_fix_type_no_fix | :gps_fix_type_2d_fix | :gps_fix_type_3d_fix | :gps_fix_type_dgps | :gps_fix_type_rtk_float | :gps_fix_type_rtk_fixed | :gps_fix_type_static | :gps_fix_type_ppp

  @typedoc ""
  @type gps_input_ignore_flags :: :gps_input_ignore_flag_alt | :gps_input_ignore_flag_hdop | :gps_input_ignore_flag_vdop | :gps_input_ignore_flag_vel_horiz | :gps_input_ignore_flag_vel_vert | :gps_input_ignore_flag_speed_accuracy | :gps_input_ignore_flag_horizontal_accuracy | :gps_input_ignore_flag_vertical_accuracy

  @typedoc "Gripper actions."
  @type gripper_actions :: :gripper_action_release | :gripper_action_grab

  @typedoc ""
  @type heading_type :: :heading_type_course_over_ground | :heading_type_heading

  @typedoc "Flags to report failure cases over the high latency telemtry."
  @type hl_failure_flag :: :hl_failure_flag_gps | :hl_failure_flag_differential_pressure | :hl_failure_flag_absolute_pressure | :hl_failure_flag_3d_accel | :hl_failure_flag_3d_gyro | :hl_failure_flag_3d_mag | :hl_failure_flag_terrain | :hl_failure_flag_battery | :hl_failure_flag_rc_receiver | :hl_failure_flag_offboard_link | :hl_failure_flag_engine | :hl_failure_flag_geofence | :hl_failure_flag_estimator | :hl_failure_flag_mission

  @typedoc ""
  @type icarous_fms_state :: :icarous_fms_state_idle | :icarous_fms_state_takeoff | :icarous_fms_state_climb | :icarous_fms_state_cruise | :icarous_fms_state_approach | :icarous_fms_state_land

  @typedoc ""
  @type icarous_track_band_types :: :icarous_track_band_type_none | :icarous_track_band_type_near | :icarous_track_band_type_recovery

  @typedoc "Type of landing target"
  @type landing_target_type :: :landing_target_type_light_beacon | :landing_target_type_radio_beacon | :landing_target_type_vision_fiducial | :landing_target_type_vision_other

  @typedoc ""
  @type led_control_pattern :: :led_control_pattern_off | :led_control_pattern_firmwareupdate | :led_control_pattern_custom

  @typedoc ""
  @type limit_module :: :limit_gpslock | :limit_geofence | :limit_altitude

  @typedoc ""
  @type limits_state :: :limits_init | :limits_disabled | :limits_enabled | :limits_triggered | :limits_recovering | :limits_recovered

  @typedoc ""
  @type mag_cal_status :: :mag_cal_not_started | :mag_cal_waiting_to_start | :mag_cal_running_step_one | :mag_cal_running_step_two | :mag_cal_success | :mag_cal_failed | :mag_cal_bad_orientation | :mag_cal_bad_radius

  @typedoc ""
  @type mav_arm_auth_denied_reason :: :mav_arm_auth_denied_reason_generic | :mav_arm_auth_denied_reason_none | :mav_arm_auth_denied_reason_invalid_waypoint | :mav_arm_auth_denied_reason_timeout | :mav_arm_auth_denied_reason_airspace_in_use | :mav_arm_auth_denied_reason_bad_weather

  @typedoc "Micro air vehicle / autopilot classes. This identifies the individual model."
  @type mav_autopilot :: :mav_autopilot_generic | :mav_autopilot_reserved | :mav_autopilot_slugs | :mav_autopilot_ardupilotmega | :mav_autopilot_openpilot | :mav_autopilot_generic_waypoints_only | :mav_autopilot_generic_waypoints_and_simple_navigation_only | :mav_autopilot_generic_mission_full | :mav_autopilot_invalid | :mav_autopilot_ppz | :mav_autopilot_udb | :mav_autopilot_fp | :mav_autopilot_px4 | :mav_autopilot_smaccmpilot | :mav_autopilot_autoquad | :mav_autopilot_armazila | :mav_autopilot_aerob | :mav_autopilot_asluav | :mav_autopilot_smartap | :mav_autopilot_airrails

  @typedoc "Enumeration for battery charge states."
  @type mav_battery_charge_state :: :mav_battery_charge_state_undefined | :mav_battery_charge_state_ok | :mav_battery_charge_state_low | :mav_battery_charge_state_critical | :mav_battery_charge_state_emergency | :mav_battery_charge_state_failed | :mav_battery_charge_state_unhealthy | :mav_battery_charge_state_charging

  @typedoc "Enumeration of battery functions"
  @type mav_battery_function :: :mav_battery_function_unknown | :mav_battery_function_all | :mav_battery_function_propulsion | :mav_battery_function_avionics | :mav_battery_type_payload

  @typedoc "Enumeration of battery types"
  @type mav_battery_type :: :mav_battery_type_unknown | :mav_battery_type_lipo | :mav_battery_type_life | :mav_battery_type_lion | :mav_battery_type_nimh

  @typedoc ""
  @type mav_cmd :: :mav_cmd_nav_waypoint | :mav_cmd_nav_loiter_unlim | :mav_cmd_nav_loiter_turns | :mav_cmd_nav_loiter_time | :mav_cmd_nav_return_to_launch | :mav_cmd_nav_land | :mav_cmd_nav_takeoff | :mav_cmd_nav_land_local | :mav_cmd_nav_takeoff_local | :mav_cmd_nav_follow | :mav_cmd_nav_continue_and_change_alt | :mav_cmd_nav_loiter_to_alt | :mav_cmd_do_follow | :mav_cmd_do_follow_reposition | :mav_cmd_nav_roi | :mav_cmd_nav_pathplanning | :mav_cmd_nav_spline_waypoint | :mav_cmd_nav_altitude_wait | :mav_cmd_nav_vtol_takeoff | :mav_cmd_nav_vtol_land | :mav_cmd_nav_guided_enable | :mav_cmd_nav_delay | :mav_cmd_nav_payload_place | :mav_cmd_nav_last | :mav_cmd_condition_delay | :mav_cmd_condition_change_alt | :mav_cmd_condition_distance | :mav_cmd_condition_yaw | :mav_cmd_condition_last | :mav_cmd_do_set_mode | :mav_cmd_do_jump | :mav_cmd_do_change_speed | :mav_cmd_do_set_home | :mav_cmd_do_set_parameter | :mav_cmd_do_set_relay | :mav_cmd_do_repeat_relay | :mav_cmd_do_set_servo | :mav_cmd_do_repeat_servo | :mav_cmd_do_flighttermination | :mav_cmd_do_change_altitude | :mav_cmd_do_land_start | :mav_cmd_do_rally_land | :mav_cmd_do_go_around | :mav_cmd_do_reposition | :mav_cmd_do_pause_continue | :mav_cmd_do_set_reverse | :mav_cmd_do_set_roi_location | :mav_cmd_do_set_roi_wpnext_offset | :mav_cmd_do_set_roi_none | :mav_cmd_do_set_roi_sysid | :mav_cmd_do_control_video | :mav_cmd_do_set_roi | :mav_cmd_do_digicam_configure | :mav_cmd_do_digicam_control | :mav_cmd_do_mount_configure | :mav_cmd_do_mount_control | :mav_cmd_do_set_cam_trigg_dist | :mav_cmd_do_fence_enable | :mav_cmd_do_parachute | :mav_cmd_do_motor_test | :mav_cmd_do_inverted_flight | :mav_cmd_do_gripper | :mav_cmd_do_autotune_enable | :mav_cmd_nav_set_yaw_speed | :mav_cmd_do_set_cam_trigg_interval | :mav_cmd_do_set_resume_repeat_dist | :mav_cmd_do_sprayer | :mav_cmd_do_send_script_message | :mav_cmd_do_aux_function | :mav_cmd_do_mount_control_quat | :mav_cmd_do_guided_master | :mav_cmd_do_guided_limits | :mav_cmd_do_engine_control | :mav_cmd_do_set_mission_current | :mav_cmd_do_last | :mav_cmd_preflight_calibration | :mav_cmd_preflight_set_sensor_offsets | :mav_cmd_preflight_uavcan | :mav_cmd_preflight_storage | :mav_cmd_preflight_reboot_shutdown | :mav_cmd_override_goto | :mav_cmd_oblique_survey | :mav_cmd_mission_start | :mav_cmd_component_arm_disarm | :mav_cmd_get_home_position | :mav_cmd_start_rx_pair | :mav_cmd_get_message_interval | :mav_cmd_set_message_interval | :mav_cmd_request_message | :mav_cmd_request_protocol_version | :mav_cmd_request_autopilot_capabilities | :mav_cmd_request_camera_information | :mav_cmd_request_camera_settings | :mav_cmd_request_storage_information | :mav_cmd_storage_format | :mav_cmd_request_camera_capture_status | :mav_cmd_request_flight_information | :mav_cmd_reset_camera_settings | :mav_cmd_set_camera_mode | :mav_cmd_jump_tag | :mav_cmd_do_jump_tag | :mav_cmd_image_start_capture | :mav_cmd_image_stop_capture | :mav_cmd_do_trigger_control | :mav_cmd_video_start_capture | :mav_cmd_video_stop_capture | :mav_cmd_video_start_streaming | :mav_cmd_video_stop_streaming | :mav_cmd_request_video_stream_information | :mav_cmd_request_video_stream_status | :mav_cmd_logging_start | :mav_cmd_logging_stop | :mav_cmd_airframe_configuration | :mav_cmd_control_high_latency | :mav_cmd_panorama_create | :mav_cmd_do_vtol_transition | :mav_cmd_arm_authorization_request | :mav_cmd_set_guided_submode_standard | :mav_cmd_set_guided_submode_circle | :mav_cmd_nav_fence_return_point | :mav_cmd_nav_fence_polygon_vertex_inclusion | :mav_cmd_nav_fence_polygon_vertex_exclusion | :mav_cmd_nav_fence_circle_inclusion | :mav_cmd_nav_fence_circle_exclusion | :mav_cmd_nav_rally_point | :mav_cmd_uavcan_get_node_info | :mav_cmd_payload_prepare_deploy | :mav_cmd_payload_control_deploy | :mav_cmd_waypoint_user_1 | :mav_cmd_waypoint_user_2 | :mav_cmd_waypoint_user_3 | :mav_cmd_waypoint_user_4 | :mav_cmd_waypoint_user_5 | :mav_cmd_spatial_user_1 | :mav_cmd_spatial_user_2 | :mav_cmd_spatial_user_3 | :mav_cmd_spatial_user_4 | :mav_cmd_spatial_user_5 | :mav_cmd_user_1 | :mav_cmd_user_2 | :mav_cmd_user_3 | :mav_cmd_user_4 | :mav_cmd_user_5 | :mav_cmd_power_off_initiated | :mav_cmd_solo_btn_fly_click | :mav_cmd_solo_btn_fly_hold | :mav_cmd_solo_btn_pause_click | :mav_cmd_fixed_mag_cal | :mav_cmd_fixed_mag_cal_field | :mav_cmd_fixed_mag_cal_yaw | :mav_cmd_do_start_mag_cal | :mav_cmd_do_accept_mag_cal | :mav_cmd_do_cancel_mag_cal | :mav_cmd_set_factory_test_mode | :mav_cmd_do_send_banner | :mav_cmd_accelcal_vehicle_pos | :mav_cmd_gimbal_reset | :mav_cmd_gimbal_axis_calibration_status | :mav_cmd_gimbal_request_axis_calibration | :mav_cmd_gimbal_full_reset | :mav_cmd_do_winch | :mav_cmd_flash_bootloader | :mav_cmd_battery_reset | :mav_cmd_debug_trap | :mav_cmd_scripting | :mav_cmd_guided_change_speed | :mav_cmd_guided_change_altitude | :mav_cmd_guided_change_heading

  @typedoc "ACK / NACK / ERROR values as a result of MAV_CMDs and for mission item transmission."
  @type mav_cmd_ack :: :mav_cmd_ack_ok | :mav_cmd_ack_err_fail | :mav_cmd_ack_err_access_denied | :mav_cmd_ack_err_not_supported | :mav_cmd_ack_err_coordinate_frame_not_supported | :mav_cmd_ack_err_coordinates_out_of_range | :mav_cmd_ack_err_x_lat_out_of_range | :mav_cmd_ack_err_y_lon_out_of_range | :mav_cmd_ack_err_z_alt_out_of_range

  @typedoc ""
  @type mav_cmd_do_aux_function_switch_level :: :mav_cmd_do_aux_function_switch_level_low | :mav_cmd_do_aux_function_switch_level_middle | :mav_cmd_do_aux_function_switch_level_high

  @typedoc "Possible actions an aircraft can take to avoid a collision."
  @type mav_collision_action :: :mav_collision_action_none | :mav_collision_action_report | :mav_collision_action_ascend_or_descend | :mav_collision_action_move_horizontally | :mav_collision_action_move_perpendicular | :mav_collision_action_rtl | :mav_collision_action_hover

  @typedoc "Source of information about this collision."
  @type mav_collision_src :: :mav_collision_src_adsb | :mav_collision_src_mavlink_gps_global_int

  @typedoc "Aircraft-rated danger from this threat."
  @type mav_collision_threat_level :: :mav_collision_threat_level_none | :mav_collision_threat_level_low | :mav_collision_threat_level_high

  @typedoc "Component ids (values) for the different types and instances of onboard hardware/software that might make up a MAVLink system (autopilot, cameras, servos, GPS systems, avoidance systems etc.). Components must use the appropriate ID in their source address when sending messages. Components can also use IDs to determine if they are the intended recipient of an incoming message. The MAV_COMP_ID_ALL value is used to indicate messages that must be processed by all components. When creating new entries, components that can have multiple instances (e.g. cameras, servos etc.) should be allocated sequential values. An appropriate number of values should be left free after these components to allow the number of instances to be expanded."
  @type mav_component :: :mav_comp_id_all | :mav_comp_id_autopilot1 | :mav_comp_id_user1 | :mav_comp_id_user2 | :mav_comp_id_user3 | :mav_comp_id_user4 | :mav_comp_id_user5 | :mav_comp_id_user6 | :mav_comp_id_user7 | :mav_comp_id_user8 | :mav_comp_id_user9 | :mav_comp_id_user10 | :mav_comp_id_user11 | :mav_comp_id_user12 | :mav_comp_id_user13 | :mav_comp_id_user14 | :mav_comp_id_user15 | :mav_comp_id_user16 | :mav_comp_id_user17 | :mav_comp_id_user18 | :mav_comp_id_user19 | :mav_comp_id_user20 | :mav_comp_id_user21 | :mav_comp_id_user22 | :mav_comp_id_user23 | :mav_comp_id_user24 | :mav_comp_id_user25 | :mav_comp_id_user26 | :mav_comp_id_user27 | :mav_comp_id_user28 | :mav_comp_id_user29 | :mav_comp_id_user30 | :mav_comp_id_user31 | :mav_comp_id_user32 | :mav_comp_id_user33 | :mav_comp_id_user34 | :mav_comp_id_user35 | :mav_comp_id_user36 | :mav_comp_id_user37 | :mav_comp_id_user38 | :mav_comp_id_user39 | :mav_comp_id_user40 | :mav_comp_id_user41 | :mav_comp_id_user42 | :mav_comp_id_user43 | :mav_comp_id_telemetry_radio | :mav_comp_id_user45 | :mav_comp_id_user46 | :mav_comp_id_user47 | :mav_comp_id_user48 | :mav_comp_id_user49 | :mav_comp_id_user50 | :mav_comp_id_user51 | :mav_comp_id_user52 | :mav_comp_id_user53 | :mav_comp_id_user54 | :mav_comp_id_user55 | :mav_comp_id_user56 | :mav_comp_id_user57 | :mav_comp_id_user58 | :mav_comp_id_user59 | :mav_comp_id_user60 | :mav_comp_id_user61 | :mav_comp_id_user62 | :mav_comp_id_user63 | :mav_comp_id_user64 | :mav_comp_id_user65 | :mav_comp_id_user66 | :mav_comp_id_user67 | :mav_comp_id_user68 | :mav_comp_id_user69 | :mav_comp_id_user70 | :mav_comp_id_user71 | :mav_comp_id_user72 | :mav_comp_id_user73 | :mav_comp_id_user74 | :mav_comp_id_user75 | :mav_comp_id_camera | :mav_comp_id_camera2 | :mav_comp_id_camera3 | :mav_comp_id_camera4 | :mav_comp_id_camera5 | :mav_comp_id_camera6 | :mav_comp_id_servo1 | :mav_comp_id_servo2 | :mav_comp_id_servo3 | :mav_comp_id_servo4 | :mav_comp_id_servo5 | :mav_comp_id_servo6 | :mav_comp_id_servo7 | :mav_comp_id_servo8 | :mav_comp_id_servo9 | :mav_comp_id_servo10 | :mav_comp_id_servo11 | :mav_comp_id_servo12 | :mav_comp_id_servo13 | :mav_comp_id_servo14 | :mav_comp_id_gimbal | :mav_comp_id_log | :mav_comp_id_adsb | :mav_comp_id_osd | :mav_comp_id_peripheral | :mav_comp_id_qx1_gimbal | :mav_comp_id_flarm | :mav_comp_id_gimbal2 | :mav_comp_id_gimbal3 | :mav_comp_id_gimbal4 | :mav_comp_id_gimbal5 | :mav_comp_id_gimbal6 | :mav_comp_id_missionplanner | :mav_comp_id_onboard_computer | :mav_comp_id_pathplanner | :mav_comp_id_obstacle_avoidance | :mav_comp_id_visual_inertial_odometry | :mav_comp_id_pairing_manager | :mav_comp_id_imu | :mav_comp_id_imu_2 | :mav_comp_id_imu_3 | :mav_comp_id_gps | :mav_comp_id_gps2 | :mav_comp_id_odid_txrx_1 | :mav_comp_id_odid_txrx_2 | :mav_comp_id_odid_txrx_3 | :mav_comp_id_udp_bridge | :mav_comp_id_uart_bridge | :mav_comp_id_tunnel_node | :mav_comp_id_system_control

  @typedoc "A data stream is not a fixed set of messages, but rather a recommendation to the autopilot software. Individual autopilots may or may not obey the recommended messages."
  @type mav_data_stream :: :mav_data_stream_all | :mav_data_stream_raw_sensors | :mav_data_stream_extended_status | :mav_data_stream_rc_channels | :mav_data_stream_raw_controller | :mav_data_stream_position | :mav_data_stream_extra1 | :mav_data_stream_extra2 | :mav_data_stream_extra3

  @typedoc "Enumeration of distance sensor types"
  @type mav_distance_sensor :: :mav_distance_sensor_laser | :mav_distance_sensor_ultrasound | :mav_distance_sensor_infrared | :mav_distance_sensor_radar | :mav_distance_sensor_unknown

  @typedoc "Bitmap of options for the MAV_CMD_DO_REPOSITION"
  @type mav_do_reposition_flags :: :mav_do_reposition_flags_change_mode

  @typedoc "Enumeration of estimator types"
  @type mav_estimator_type :: :mav_estimator_type_unknown | :mav_estimator_type_naive | :mav_estimator_type_vision | :mav_estimator_type_vio | :mav_estimator_type_gps | :mav_estimator_type_gps_ins | :mav_estimator_type_mocap | :mav_estimator_type_lidar | :mav_estimator_type_autopilot

  @typedoc ""
  @type mav_frame :: :mav_frame_global | :mav_frame_local_ned | :mav_frame_mission | :mav_frame_global_relative_alt | :mav_frame_local_enu | :mav_frame_global_int | :mav_frame_global_relative_alt_int | :mav_frame_local_offset_ned | :mav_frame_body_ned | :mav_frame_body_offset_ned | :mav_frame_global_terrain_alt | :mav_frame_global_terrain_alt_int | :mav_frame_body_frd | :mav_frame_reserved_13 | :mav_frame_reserved_14 | :mav_frame_reserved_15 | :mav_frame_reserved_16 | :mav_frame_reserved_17 | :mav_frame_reserved_18 | :mav_frame_reserved_19 | :mav_frame_local_frd | :mav_frame_local_flu

  @typedoc "Flags to report status/failure cases for a power generator (used in GENERATOR_STATUS). Note that FAULTS are conditions that cause the generator to fail. Warnings are conditions that require attention before the next use (they indicate the system is not operating properly)."
  @type mav_generator_status_flag :: :mav_generator_status_flag_off | :mav_generator_status_flag_ready | :mav_generator_status_flag_generating | :mav_generator_status_flag_charging | :mav_generator_status_flag_reduced_power | :mav_generator_status_flag_maxpower | :mav_generator_status_flag_overtemp_warning | :mav_generator_status_flag_overtemp_fault | :mav_generator_status_flag_electronics_overtemp_warning | :mav_generator_status_flag_electronics_overtemp_fault | :mav_generator_status_flag_electronics_fault | :mav_generator_status_flag_powersource_fault | :mav_generator_status_flag_communication_warning | :mav_generator_status_flag_cooling_warning | :mav_generator_status_flag_power_rail_fault | :mav_generator_status_flag_overcurrent_fault | :mav_generator_status_flag_battery_overcharge_current_fault | :mav_generator_status_flag_overvoltage_fault | :mav_generator_status_flag_battery_undervolt_fault | :mav_generator_status_flag_start_inhibited | :mav_generator_status_flag_maintenance_required | :mav_generator_status_flag_warming_up | :mav_generator_status_flag_idle

  @typedoc "Actions that may be specified in MAV_CMD_OVERRIDE_GOTO to override mission execution."
  @type mav_goto :: :mav_goto_do_hold | :mav_goto_do_continue | :mav_goto_hold_at_current_position | :mav_goto_hold_at_specified_position

  @typedoc "Enumeration of landed detector states"
  @type mav_landed_state :: :mav_landed_state_undefined | :mav_landed_state_on_ground | :mav_landed_state_in_air | :mav_landed_state_takeoff | :mav_landed_state_landing

  @typedoc "Result of mission operation (in a MISSION_ACK message)."
  @type mav_mission_result :: :mav_mission_accepted | :mav_mission_error | :mav_mission_unsupported_frame | :mav_mission_unsupported | :mav_mission_no_space | :mav_mission_invalid | :mav_mission_invalid_param1 | :mav_mission_invalid_param2 | :mav_mission_invalid_param3 | :mav_mission_invalid_param4 | :mav_mission_invalid_param5_x | :mav_mission_invalid_param6_y | :mav_mission_invalid_param7 | :mav_mission_invalid_sequence | :mav_mission_denied | :mav_mission_operation_cancelled

  @typedoc "Type of mission items being requested/sent in mission protocol."
  @type mav_mission_type :: :mav_mission_type_mission | :mav_mission_type_fence | :mav_mission_type_rally | :mav_mission_type_all

  @typedoc "These defines are predefined OR-combined mode flags. There is no need to use values from this enum, but it simplifies the use of the mode flags. Note that manual input is enabled in all modes as a safety override."
  @type mav_mode :: :mav_mode_preflight | :mav_mode_stabilize_disarmed | :mav_mode_stabilize_armed | :mav_mode_manual_disarmed | :mav_mode_manual_armed | :mav_mode_guided_disarmed | :mav_mode_guided_armed | :mav_mode_auto_disarmed | :mav_mode_auto_armed | :mav_mode_test_disarmed | :mav_mode_test_armed

  @typedoc "These flags encode the MAV mode."
  @type mav_mode_flag :: :mav_mode_flag_safety_armed | :mav_mode_flag_manual_input_enabled | :mav_mode_flag_hil_enabled | :mav_mode_flag_stabilize_enabled | :mav_mode_flag_guided_enabled | :mav_mode_flag_auto_enabled | :mav_mode_flag_test_enabled | :mav_mode_flag_custom_mode_enabled

  @typedoc "These values encode the bit positions of the decode position. These values can be used to read the value of a flag bit by combining the base_mode variable with AND with the flag position value. The result will be either 0 or 1, depending on if the flag is set or not."
  @type mav_mode_flag_decode_position :: :mav_mode_flag_decode_position_safety | :mav_mode_flag_decode_position_manual | :mav_mode_flag_decode_position_hil | :mav_mode_flag_decode_position_stabilize | :mav_mode_flag_decode_position_guided | :mav_mode_flag_decode_position_auto | :mav_mode_flag_decode_position_test | :mav_mode_flag_decode_position_custom_mode

  @typedoc ""
  @type mav_mode_gimbal :: :mav_mode_gimbal_uninitialized | :mav_mode_gimbal_calibrating_pitch | :mav_mode_gimbal_calibrating_roll | :mav_mode_gimbal_calibrating_yaw | :mav_mode_gimbal_initialized | :mav_mode_gimbal_active | :mav_mode_gimbal_rate_cmd_timeout

  @typedoc "Enumeration of possible mount operation modes"
  @type mav_mount_mode :: :mav_mount_mode_retract | :mav_mount_mode_neutral | :mav_mount_mode_mavlink_targeting | :mav_mount_mode_rc_targeting | :mav_mount_mode_gps_point | :mav_mount_mode_sysid_target | :mav_mount_mode_home_location

  @typedoc "Specifies the datatype of a MAVLink parameter."
  @type mav_param_type :: :mav_param_type_uint8 | :mav_param_type_int8 | :mav_param_type_uint16 | :mav_param_type_int16 | :mav_param_type_uint32 | :mav_param_type_int32 | :mav_param_type_uint64 | :mav_param_type_int64 | :mav_param_type_real32 | :mav_param_type_real64

  @typedoc "Power supply status flags (bitmask)"
  @type mav_power_status :: :mav_power_status_brick_valid | :mav_power_status_servo_valid | :mav_power_status_usb_connected | :mav_power_status_periph_overcurrent | :mav_power_status_periph_hipower_overcurrent | :mav_power_status_changed

  @typedoc "Bitmask of (optional) autopilot capabilities (64 bit). If a bit is set, the autopilot supports this capability."
  @type mav_protocol_capability :: :mav_protocol_capability_mission_float | :mav_protocol_capability_param_float | :mav_protocol_capability_mission_int | :mav_protocol_capability_command_int | :mav_protocol_capability_param_union | :mav_protocol_capability_ftp | :mav_protocol_capability_set_attitude_target | :mav_protocol_capability_set_position_target_local_ned | :mav_protocol_capability_set_position_target_global_int | :mav_protocol_capability_terrain | :mav_protocol_capability_set_actuator_target | :mav_protocol_capability_flight_termination | :mav_protocol_capability_compass_calibration | :mav_protocol_capability_mavlink2 | :mav_protocol_capability_mission_fence | :mav_protocol_capability_mission_rally | :mav_protocol_capability_flight_information

  @typedoc "Special ACK block numbers control activation of dataflash log streaming."
  @type mav_remote_log_data_block_commands :: :mav_remote_log_data_block_stop | :mav_remote_log_data_block_start

  @typedoc "Possible remote log data block statuses."
  @type mav_remote_log_data_block_statuses :: :mav_remote_log_data_block_nack | :mav_remote_log_data_block_ack

  @typedoc "Result from a MAVLink command (MAV_CMD)"
  @type mav_result :: :mav_result_accepted | :mav_result_temporarily_rejected | :mav_result_denied | :mav_result_unsupported | :mav_result_failed | :mav_result_in_progress

  @typedoc "The ROI (region of interest) for the vehicle. This can be be used by the vehicle for camera/vehicle attitude alignment (see MAV_CMD_NAV_ROI)."
  @type mav_roi :: :mav_roi_none | :mav_roi_wpnext | :mav_roi_wpindex | :mav_roi_location | :mav_roi_target

  @typedoc "Enumeration of sensor orientation, according to its rotations"
  @type mav_sensor_orientation :: :mav_sensor_rotation_none | :mav_sensor_rotation_yaw_45 | :mav_sensor_rotation_yaw_90 | :mav_sensor_rotation_yaw_135 | :mav_sensor_rotation_yaw_180 | :mav_sensor_rotation_yaw_225 | :mav_sensor_rotation_yaw_270 | :mav_sensor_rotation_yaw_315 | :mav_sensor_rotation_roll_180 | :mav_sensor_rotation_roll_180_yaw_45 | :mav_sensor_rotation_roll_180_yaw_90 | :mav_sensor_rotation_roll_180_yaw_135 | :mav_sensor_rotation_pitch_180 | :mav_sensor_rotation_roll_180_yaw_225 | :mav_sensor_rotation_roll_180_yaw_270 | :mav_sensor_rotation_roll_180_yaw_315 | :mav_sensor_rotation_roll_90 | :mav_sensor_rotation_roll_90_yaw_45 | :mav_sensor_rotation_roll_90_yaw_90 | :mav_sensor_rotation_roll_90_yaw_135 | :mav_sensor_rotation_roll_270 | :mav_sensor_rotation_roll_270_yaw_45 | :mav_sensor_rotation_roll_270_yaw_90 | :mav_sensor_rotation_roll_270_yaw_135 | :mav_sensor_rotation_pitch_90 | :mav_sensor_rotation_pitch_270 | :mav_sensor_rotation_pitch_180_yaw_90 | :mav_sensor_rotation_pitch_180_yaw_270 | :mav_sensor_rotation_roll_90_pitch_90 | :mav_sensor_rotation_roll_180_pitch_90 | :mav_sensor_rotation_roll_270_pitch_90 | :mav_sensor_rotation_roll_90_pitch_180 | :mav_sensor_rotation_roll_270_pitch_180 | :mav_sensor_rotation_roll_90_pitch_270 | :mav_sensor_rotation_roll_180_pitch_270 | :mav_sensor_rotation_roll_270_pitch_270 | :mav_sensor_rotation_roll_90_pitch_180_yaw_90 | :mav_sensor_rotation_roll_90_yaw_270 | :mav_sensor_rotation_roll_90_pitch_68_yaw_293 | :mav_sensor_rotation_pitch_315 | :mav_sensor_rotation_roll_90_pitch_315 | :mav_sensor_rotation_custom

  @typedoc "Indicates the severity level, generally used for status messages to indicate their relative urgency. Based on RFC-5424 using expanded definitions at: http://www.kiwisyslog.com/kb/info:-syslog-message-levels/."
  @type mav_severity :: :mav_severity_emergency | :mav_severity_alert | :mav_severity_critical | :mav_severity_error | :mav_severity_warning | :mav_severity_notice | :mav_severity_info | :mav_severity_debug

  @typedoc ""
  @type mav_state :: :mav_state_uninit | :mav_state_boot | :mav_state_calibrating | :mav_state_standby | :mav_state_active | :mav_state_critical | :mav_state_emergency | :mav_state_poweroff | :mav_state_flight_termination

  @typedoc "These encode the sensors whose status is sent as part of the SYS_STATUS message."
  @type mav_sys_status_sensor :: :mav_sys_status_sensor_3d_gyro | :mav_sys_status_sensor_3d_accel | :mav_sys_status_sensor_3d_mag | :mav_sys_status_sensor_absolute_pressure | :mav_sys_status_sensor_differential_pressure | :mav_sys_status_sensor_gps | :mav_sys_status_sensor_optical_flow | :mav_sys_status_sensor_vision_position | :mav_sys_status_sensor_laser_position | :mav_sys_status_sensor_external_ground_truth | :mav_sys_status_sensor_angular_rate_control | :mav_sys_status_sensor_attitude_stabilization | :mav_sys_status_sensor_yaw_position | :mav_sys_status_sensor_z_altitude_control | :mav_sys_status_sensor_xy_position_control | :mav_sys_status_sensor_motor_outputs | :mav_sys_status_sensor_rc_receiver | :mav_sys_status_sensor_3d_gyro2 | :mav_sys_status_sensor_3d_accel2 | :mav_sys_status_sensor_3d_mag2 | :mav_sys_status_geofence | :mav_sys_status_ahrs | :mav_sys_status_terrain | :mav_sys_status_reverse_motor | :mav_sys_status_logging | :mav_sys_status_sensor_battery | :mav_sys_status_sensor_proximity | :mav_sys_status_sensor_satcom | :mav_sys_status_prearm_check | :mav_sys_status_obstacle_avoidance | :mav_sys_status_sensor_propulsion

  @typedoc "MAVLINK component type reported in HEARTBEAT message. Flight controllers must report the type of the vehicle on which they are mounted (e.g. MAV_TYPE_OCTOROTOR). All other components must report a value appropriate for their type (e.g. a camera must use MAV_TYPE_CAMERA)."
  @type mav_type :: :mav_type_generic | :mav_type_fixed_wing | :mav_type_quadrotor | :mav_type_coaxial | :mav_type_helicopter | :mav_type_antenna_tracker | :mav_type_gcs | :mav_type_airship | :mav_type_free_balloon | :mav_type_rocket | :mav_type_ground_rover | :mav_type_surface_boat | :mav_type_submarine | :mav_type_hexarotor | :mav_type_octorotor | :mav_type_tricopter | :mav_type_flapping_wing | :mav_type_kite | :mav_type_onboard_controller | :mav_type_vtol_duorotor | :mav_type_vtol_quadrotor | :mav_type_vtol_tiltrotor | :mav_type_vtol_reserved2 | :mav_type_vtol_reserved3 | :mav_type_vtol_reserved4 | :mav_type_vtol_reserved5 | :mav_type_gimbal | :mav_type_adsb | :mav_type_parafoil | :mav_type_dodecarotor | :mav_type_camera | :mav_type_charging_station | :mav_type_flarm | :mav_type_servo | :mav_type_odid | :mav_type_decarotor

  @typedoc "Enumeration of VTOL states"
  @type mav_vtol_state :: :mav_vtol_state_undefined | :mav_vtol_state_transition_to_fw | :mav_vtol_state_transition_to_mc | :mav_vtol_state_mc | :mav_vtol_state_fw

  @typedoc "Winch status flags used in WINCH_STATUS"
  @type mav_winch_status_flag :: :mav_winch_status_healthy | :mav_winch_status_fully_retracted | :mav_winch_status_moving | :mav_winch_status_clutch_engaged

  @typedoc ""
  @type mavlink_data_stream_type :: :mavlink_data_stream_img_jpeg | :mavlink_data_stream_img_bmp | :mavlink_data_stream_img_raw8u | :mavlink_data_stream_img_raw32u | :mavlink_data_stream_img_pgm | :mavlink_data_stream_img_png

  @typedoc ""
  @type motor_test_order :: :motor_test_order_default | :motor_test_order_sequence | :motor_test_order_board

  @typedoc ""
  @type motor_test_throttle_type :: :motor_test_throttle_percent | :motor_test_throttle_pwm | :motor_test_throttle_pilot | :motor_test_compass_cal

  @typedoc "The error type for the OSD parameter editor."
  @type osd_param_config_error :: :osd_param_success | :osd_param_invalid_screen | :osd_param_invalid_parameter_index | :osd_param_invalid_parameter

  @typedoc "The type of parameter for the OSD parameter editor."
  @type osd_param_config_type :: :osd_param_none | :osd_param_serial_protocol | :osd_param_servo_function | :osd_param_aux_function | :osd_param_flight_mode | :osd_param_failsafe_action | :osd_param_failsafe_action_1 | :osd_param_failsafe_action_2 | :osd_param_num_types

  @typedoc "Parachute actions. Trigger release and enable/disable auto-release."
  @type parachute_action :: :parachute_disable | :parachute_enable | :parachute_release

  @typedoc ""
  @type pid_tuning_axis :: :pid_tuning_roll | :pid_tuning_pitch | :pid_tuning_yaw | :pid_tuning_accz | :pid_tuning_steer | :pid_tuning_landing

  @typedoc "A mapping of plane flight modes for custom_mode field of heartbeat."
  @type plane_mode :: :plane_mode_manual | :plane_mode_circle | :plane_mode_stabilize | :plane_mode_training | :plane_mode_acro | :plane_mode_fly_by_wire_a | :plane_mode_fly_by_wire_b | :plane_mode_cruise | :plane_mode_autotune | :plane_mode_auto | :plane_mode_rtl | :plane_mode_loiter | :plane_mode_takeoff | :plane_mode_avoid_adsb | :plane_mode_guided | :plane_mode_initializing | :plane_mode_qstabilize | :plane_mode_qhover | :plane_mode_qloiter | :plane_mode_qland | :plane_mode_qrtl | :plane_mode_qautotune | :plane_mode_qacro | :plane_mode_thermal

  @typedoc "Bitmap to indicate which dimensions should be ignored by the vehicle: a value of 0b0000000000000000 or 0b0000001000000000 indicates that none of the setpoint dimensions should be ignored. If bit 9 is set the floats afx afy afz should be interpreted as force instead of acceleration."
  @type position_target_typemask :: :position_target_typemask_x_ignore | :position_target_typemask_y_ignore | :position_target_typemask_z_ignore | :position_target_typemask_vx_ignore | :position_target_typemask_vy_ignore | :position_target_typemask_vz_ignore | :position_target_typemask_ax_ignore | :position_target_typemask_ay_ignore | :position_target_typemask_az_ignore | :position_target_typemask_force_set | :position_target_typemask_yaw_ignore | :position_target_typemask_yaw_rate_ignore

  @typedoc "Precision land modes (used in MAV_CMD_NAV_LAND)."
  @type precision_land_mode :: :precision_land_mode_disabled | :precision_land_mode_opportunistic | :precision_land_mode_required

  @typedoc "Flags in RALLY_POINT message."
  @type rally_flags :: :favorable_wind | :land_immediately

  @typedoc "RC type"
  @type rc_type :: :rc_type_spektrum_dsm2 | :rc_type_spektrum_dsmx

  @typedoc "A mapping of rover flight modes for custom_mode field of heartbeat."
  @type rover_mode :: :rover_mode_manual | :rover_mode_acro | :rover_mode_steering | :rover_mode_hold | :rover_mode_loiter | :rover_mode_follow | :rover_mode_simple | :rover_mode_auto | :rover_mode_rtl | :rover_mode_smart_rtl | :rover_mode_guided | :rover_mode_initializing

  @typedoc "RTK GPS baseline coordinate system, used for RTK corrections"
  @type rtk_baseline_coordinate_system :: :rtk_baseline_coordinate_system_ecef | :rtk_baseline_coordinate_system_ned

  @typedoc ""
  @type scripting_cmd :: :scripting_cmd_repl_start | :scripting_cmd_repl_stop

  @typedoc "SERIAL_CONTROL device types"
  @type serial_control_dev :: :serial_control_dev_telem1 | :serial_control_dev_telem2 | :serial_control_dev_gps1 | :serial_control_dev_gps2 | :serial_control_dev_shell | :serial_control_serial0 | :serial_control_serial1 | :serial_control_serial2 | :serial_control_serial3 | :serial_control_serial4 | :serial_control_serial5 | :serial_control_serial6 | :serial_control_serial7 | :serial_control_serial8 | :serial_control_serial9

  @typedoc "SERIAL_CONTROL flags (bitmask)"
  @type serial_control_flag :: :serial_control_flag_reply | :serial_control_flag_respond | :serial_control_flag_exclusive | :serial_control_flag_blocking | :serial_control_flag_multi

  @typedoc ""
  @type speed_type :: :speed_type_airspeed | :speed_type_groundspeed

  @typedoc "Flags to indicate the status of camera storage."
  @type storage_status :: :storage_status_empty | :storage_status_unformatted | :storage_status_ready | :storage_status_not_supported

  @typedoc "A mapping of sub flight modes for custom_mode field of heartbeat."
  @type sub_mode :: :sub_mode_stabilize | :sub_mode_acro | :sub_mode_alt_hold | :sub_mode_auto | :sub_mode_guided | :sub_mode_circle | :sub_mode_surface | :sub_mode_poshold | :sub_mode_manual

  @typedoc "A mapping of antenna tracker flight modes for custom_mode field of heartbeat."
  @type tracker_mode :: :tracker_mode_manual | :tracker_mode_stop | :tracker_mode_scan | :tracker_mode_servo_test | :tracker_mode_auto | :tracker_mode_initializing

  @typedoc "Generalized UAVCAN node health"
  @type uavcan_node_health :: :uavcan_node_health_ok | :uavcan_node_health_warning | :uavcan_node_health_error | :uavcan_node_health_critical

  @typedoc "Generalized UAVCAN node mode"
  @type uavcan_node_mode :: :uavcan_node_mode_operational | :uavcan_node_mode_initialization | :uavcan_node_mode_maintenance | :uavcan_node_mode_software_update | :uavcan_node_mode_offline

  @typedoc "Emergency status encoding"
  @type uavionix_adsb_emergency_status :: :uavionix_adsb_out_no_emergency | :uavionix_adsb_out_general_emergency | :uavionix_adsb_out_lifeguard_emergency | :uavionix_adsb_out_minimum_fuel_emergency | :uavionix_adsb_out_no_comm_emergency | :uavionix_adsb_out_unlawful_interferance_emergency | :uavionix_adsb_out_downed_aircraft_emergency | :uavionix_adsb_out_reserved

  @typedoc "Definitions for aircraft size"
  @type uavionix_adsb_out_cfg_aircraft_size :: :uavionix_adsb_out_cfg_aircraft_size_no_data | :uavionix_adsb_out_cfg_aircraft_size_l15m_w23m | :uavionix_adsb_out_cfg_aircraft_size_l25m_w28p5m | :uavionix_adsb_out_cfg_aircraft_size_l25_34m | :uavionix_adsb_out_cfg_aircraft_size_l35_33m | :uavionix_adsb_out_cfg_aircraft_size_l35_38m | :uavionix_adsb_out_cfg_aircraft_size_l45_39p5m | :uavionix_adsb_out_cfg_aircraft_size_l45_45m | :uavionix_adsb_out_cfg_aircraft_size_l55_45m | :uavionix_adsb_out_cfg_aircraft_size_l55_52m | :uavionix_adsb_out_cfg_aircraft_size_l65_59p5m | :uavionix_adsb_out_cfg_aircraft_size_l65_67m | :uavionix_adsb_out_cfg_aircraft_size_l75_w72p5m | :uavionix_adsb_out_cfg_aircraft_size_l75_w80m | :uavionix_adsb_out_cfg_aircraft_size_l85_w80m | :uavionix_adsb_out_cfg_aircraft_size_l85_w90m

  @typedoc "GPS lataral offset encoding"
  @type uavionix_adsb_out_cfg_gps_offset_lat :: :uavionix_adsb_out_cfg_gps_offset_lat_no_data | :uavionix_adsb_out_cfg_gps_offset_lat_left_2m | :uavionix_adsb_out_cfg_gps_offset_lat_left_4m | :uavionix_adsb_out_cfg_gps_offset_lat_left_6m | :uavionix_adsb_out_cfg_gps_offset_lat_right_0m | :uavionix_adsb_out_cfg_gps_offset_lat_right_2m | :uavionix_adsb_out_cfg_gps_offset_lat_right_4m | :uavionix_adsb_out_cfg_gps_offset_lat_right_6m

  @typedoc "GPS longitudinal offset encoding"
  @type uavionix_adsb_out_cfg_gps_offset_lon :: :uavionix_adsb_out_cfg_gps_offset_lon_no_data | :uavionix_adsb_out_cfg_gps_offset_lon_applied_by_sensor

  @typedoc "Status for ADS-B transponder dynamic input"
  @type uavionix_adsb_out_dynamic_gps_fix :: :uavionix_adsb_out_dynamic_gps_fix_none_0 | :uavionix_adsb_out_dynamic_gps_fix_none_1 | :uavionix_adsb_out_dynamic_gps_fix_2d | :uavionix_adsb_out_dynamic_gps_fix_3d | :uavionix_adsb_out_dynamic_gps_fix_dgps | :uavionix_adsb_out_dynamic_gps_fix_rtk

  @typedoc "State flags for ADS-B transponder dynamic report"
  @type uavionix_adsb_out_dynamic_state :: :uavionix_adsb_out_dynamic_state_intent_change | :uavionix_adsb_out_dynamic_state_autopilot_enabled | :uavionix_adsb_out_dynamic_state_nicbaro_crosschecked | :uavionix_adsb_out_dynamic_state_on_ground | :uavionix_adsb_out_dynamic_state_ident

  @typedoc "Transceiver RF control flags for ADS-B transponder dynamic reports"
  @type uavionix_adsb_out_rf_select :: :uavionix_adsb_out_rf_select_standby | :uavionix_adsb_out_rf_select_rx_enabled | :uavionix_adsb_out_rf_select_tx_enabled

  @typedoc "Status flags for ADS-B transponder dynamic output"
  @type uavionix_adsb_rf_health :: :uavionix_adsb_rf_health_initializing | :uavionix_adsb_rf_health_ok | :uavionix_adsb_rf_health_fail_tx | :uavionix_adsb_rf_health_fail_rx

  @typedoc "Flags for the global position report."
  @type utm_data_avail_flags :: :utm_data_avail_flags_time_valid | :utm_data_avail_flags_uas_id_available | :utm_data_avail_flags_position_available | :utm_data_avail_flags_altitude_available | :utm_data_avail_flags_relative_altitude_available | :utm_data_avail_flags_horizontal_velo_available | :utm_data_avail_flags_vertical_velo_available | :utm_data_avail_flags_next_waypoint_available

  @typedoc "Airborne status of UAS."
  @type utm_flight_state :: :utm_flight_state_unknown | :utm_flight_state_ground | :utm_flight_state_airborne | :utm_flight_state_emergency | :utm_flight_state_noctrl

  @typedoc "Stream status flags (Bitmap)"
  @type video_stream_status_flags :: :video_stream_status_flags_running | :video_stream_status_flags_thermal

  @typedoc "Video stream types"
  @type video_stream_type :: :video_stream_type_rtsp | :video_stream_type_rtpudp | :video_stream_type_tcp_mpeg | :video_stream_type_mpeg_ts_h264

  @typedoc "Direction of VTOL transition"
  @type vtol_transition_heading :: :vtol_transition_heading_vehicle_default | :vtol_transition_heading_next_waypoint | :vtol_transition_heading_takeoff | :vtol_transition_heading_specified | :vtol_transition_heading_any

  @typedoc "Winch actions."
  @type winch_actions :: :winch_relaxed | :winch_relative_length_control | :winch_rate_control

end


defmodule APM.Message.Heartbeat do
  @enforce_keys [:type, :autopilot, :base_mode, :custom_mode, :system_status, :mavlink_version]
  defstruct [:type, :autopilot, :base_mode, :custom_mode, :system_status, :mavlink_version]
  @typedoc "The heartbeat message shows that a system or component is present and responding. The type and autopilot fields (along with the message component id), allow the receiving system to treat further messages from this system appropriately (e.g. by laying out the user interface based on the autopilot). This microservice is documented at https://mavlink.io/en/services/heartbeat.html"
  @type t :: %APM.Message.Heartbeat{type: APM.Types.mav_type, autopilot: APM.Types.mav_autopilot, base_mode: MapSet.t(APM.Types.mav_mode_flag), custom_mode: MAVLink.Types.uint32_t, system_status: APM.Types.mav_state, mavlink_version: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 0, APM.msg_attributes(0), <<msg.custom_mode::little-integer-size(32),APM.encode(msg.type, :mav_type)::integer-size(8),APM.encode(msg.autopilot, :mav_autopilot)::integer-size(8),APM.pack_bitmask(msg.base_mode, :mav_mode_flag, &APM.encode/2)::integer-size(8),APM.encode(msg.system_status, :mav_state)::integer-size(8),msg.mavlink_version::integer-size(8)>>}
  end
end


defmodule APM.Message.SysStatus do
  @enforce_keys [:onboard_control_sensors_present, :onboard_control_sensors_enabled, :onboard_control_sensors_health, :load, :voltage_battery, :current_battery, :battery_remaining, :drop_rate_comm, :errors_comm, :errors_count1, :errors_count2, :errors_count3, :errors_count4]
  defstruct [:onboard_control_sensors_present, :onboard_control_sensors_enabled, :onboard_control_sensors_health, :load, :voltage_battery, :current_battery, :battery_remaining, :drop_rate_comm, :errors_comm, :errors_count1, :errors_count2, :errors_count3, :errors_count4]
  @typedoc "The general system state. If the system is following the MAVLink standard, the system state is mainly defined by three orthogonal states/modes: The system mode, which is either LOCKED (motors shut down and locked), MANUAL (system under RC control), GUIDED (system with autonomous position control, position setpoint controlled manually) or AUTO (system guided by path/waypoint planner). The NAV_MODE defined the current flight state: LIFTOFF (often an open-loop maneuver), LANDING, WAYPOINTS or VECTOR. This represents the internal navigation state machine. The system status shows whether the system is currently active or not and if an emergency occurred. During the CRITICAL and EMERGENCY states the MAV is still considered to be active, but should start emergency procedures autonomously. After a failure occurred it should first move from active to critical to allow manual intervention and then move to emergency after a certain timeout."
  @type t :: %APM.Message.SysStatus{onboard_control_sensors_present: MapSet.t(APM.Types.mav_sys_status_sensor), onboard_control_sensors_enabled: MapSet.t(APM.Types.mav_sys_status_sensor), onboard_control_sensors_health: MapSet.t(APM.Types.mav_sys_status_sensor), load: MAVLink.Types.uint16_t, voltage_battery: MAVLink.Types.uint16_t, current_battery: MAVLink.Types.int16_t, battery_remaining: MAVLink.Types.int8_t, drop_rate_comm: MAVLink.Types.uint16_t, errors_comm: MAVLink.Types.uint16_t, errors_count1: MAVLink.Types.uint16_t, errors_count2: MAVLink.Types.uint16_t, errors_count3: MAVLink.Types.uint16_t, errors_count4: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 1, APM.msg_attributes(1), <<APM.pack_bitmask(msg.onboard_control_sensors_present, :mav_sys_status_sensor, &APM.encode/2)::little-integer-size(32),APM.pack_bitmask(msg.onboard_control_sensors_enabled, :mav_sys_status_sensor, &APM.encode/2)::little-integer-size(32),APM.pack_bitmask(msg.onboard_control_sensors_health, :mav_sys_status_sensor, &APM.encode/2)::little-integer-size(32),msg.load::little-integer-size(16),msg.voltage_battery::little-integer-size(16),msg.current_battery::little-signed-integer-size(16),msg.drop_rate_comm::little-integer-size(16),msg.errors_comm::little-integer-size(16),msg.errors_count1::little-integer-size(16),msg.errors_count2::little-integer-size(16),msg.errors_count3::little-integer-size(16),msg.errors_count4::little-integer-size(16),msg.battery_remaining::signed-integer-size(8)>>}
  end
end


defmodule APM.Message.SystemTime do
  @enforce_keys [:time_unix_usec, :time_boot_ms]
  defstruct [:time_unix_usec, :time_boot_ms]
  @typedoc "The system time is the time of the master clock, typically the computer clock of the main onboard computer."
  @type t :: %APM.Message.SystemTime{time_unix_usec: MAVLink.Types.uint64_t, time_boot_ms: MAVLink.Types.uint32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 2, APM.msg_attributes(2), <<msg.time_unix_usec::little-integer-size(64),msg.time_boot_ms::little-integer-size(32)>>}
  end
end


defmodule APM.Message.Ping do
  @enforce_keys [:time_usec, :seq, :target_system, :target_component]
  defstruct [:time_usec, :seq, :target_system, :target_component]
  @typedoc "A ping message either requesting or responding to a ping. This allows to measure the system latencies, including serial port, radio modem and UDP connections. The ping microservice is documented at https://mavlink.io/en/services/ping.html"
  @type t :: %APM.Message.Ping{time_usec: MAVLink.Types.uint64_t, seq: MAVLink.Types.uint32_t, target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 4, APM.msg_attributes(4), <<msg.time_usec::little-integer-size(64),msg.seq::little-integer-size(32),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
  end
end


defmodule APM.Message.ChangeOperatorControl do
  @enforce_keys [:target_system, :control_request, :version, :passkey]
  defstruct [:target_system, :control_request, :version, :passkey]
  @typedoc "Request to control this MAV"
  @type t :: %APM.Message.ChangeOperatorControl{target_system: MAVLink.Types.uint8_t, control_request: MAVLink.Types.uint8_t, version: MAVLink.Types.uint8_t, passkey: [ char ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 5, APM.msg_attributes(5), <<msg.target_system::integer-size(8),msg.control_request::integer-size(8),msg.version::integer-size(8),MAVLink.Utils.pack_string(msg.passkey, 25)::binary-size(25)>>}
  end
end


defmodule APM.Message.ChangeOperatorControlAck do
  @enforce_keys [:gcs_system_id, :control_request, :ack]
  defstruct [:gcs_system_id, :control_request, :ack]
  @typedoc "Accept / deny control of this MAV"
  @type t :: %APM.Message.ChangeOperatorControlAck{gcs_system_id: MAVLink.Types.uint8_t, control_request: MAVLink.Types.uint8_t, ack: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 6, APM.msg_attributes(6), <<msg.gcs_system_id::integer-size(8),msg.control_request::integer-size(8),msg.ack::integer-size(8)>>}
  end
end


defmodule APM.Message.AuthKey do
  @enforce_keys [:key]
  defstruct [:key]
  @typedoc "Emit an encrypted signature / key identifying this system. PLEASE NOTE: This protocol has been kept simple, so transmitting the key requires an encrypted channel for true safety."
  @type t :: %APM.Message.AuthKey{key: [ char ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 7, APM.msg_attributes(7), <<MAVLink.Utils.pack_string(msg.key, 32)::binary-size(32)>>}
  end
end


defmodule APM.Message.SetMode do
  @enforce_keys [:target_system, :base_mode, :custom_mode]
  defstruct [:target_system, :base_mode, :custom_mode]
  @typedoc "Set the system mode, as defined by enum MAV_MODE. There is no target component id as the mode is by definition for the overall aircraft, not only for one component."
  @type t :: %APM.Message.SetMode{target_system: MAVLink.Types.uint8_t, base_mode: APM.Types.mav_mode, custom_mode: MAVLink.Types.uint32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 11, APM.msg_attributes(11), <<msg.custom_mode::little-integer-size(32),msg.target_system::integer-size(8),APM.encode(msg.base_mode, :mav_mode)::integer-size(8)>>}
  end
end


defmodule APM.Message.ParamRequestRead do
  @enforce_keys [:target_system, :target_component, :param_id, :param_index]
  defstruct [:target_system, :target_component, :param_id, :param_index]
  @typedoc "Request to read the onboard parameter with the param_id string id. Onboard parameters are stored as key[const char*] -> value[float]. This allows to send a parameter to any other component (such as the GCS) without the need of previous knowledge of possible parameter names. Thus the same GCS can store different parameters for different autopilots. See also https://mavlink.io/en/services/parameter.html for a full documentation of QGroundControl and IMU code."
  @type t :: %APM.Message.ParamRequestRead{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, param_id: [ char ], param_index: MAVLink.Types.int16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 20, APM.msg_attributes(20), <<msg.param_index::little-signed-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),MAVLink.Utils.pack_string(msg.param_id, 16)::binary-size(16)>>}
  end
end


defmodule APM.Message.ParamRequestList do
  @enforce_keys [:target_system, :target_component]
  defstruct [:target_system, :target_component]
  @typedoc "Request all parameters of this component. After this request, all parameters are emitted. The parameter microservice is documented at https://mavlink.io/en/services/parameter.html"
  @type t :: %APM.Message.ParamRequestList{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 21, APM.msg_attributes(21), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
  end
end


defmodule APM.Message.ParamValue do
  @enforce_keys [:param_id, :param_value, :param_type, :param_count, :param_index]
  defstruct [:param_id, :param_value, :param_type, :param_count, :param_index]
  @typedoc "Emit the value of a onboard parameter. The inclusion of param_count and param_index in the message allows the recipient to keep track of received parameters and allows him to re-request missing parameters after a loss or timeout. The parameter microservice is documented at https://mavlink.io/en/services/parameter.html"
  @type t :: %APM.Message.ParamValue{param_id: [ char ], param_value: Float32, param_type: APM.Types.mav_param_type, param_count: MAVLink.Types.uint16_t, param_index: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 22, APM.msg_attributes(22), <<MAVLink.Utils.pack_float(msg.param_value)::binary-size(4),msg.param_count::little-integer-size(16),msg.param_index::little-integer-size(16),MAVLink.Utils.pack_string(msg.param_id, 16)::binary-size(16),APM.encode(msg.param_type, :mav_param_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.ParamSet do
  @enforce_keys [:target_system, :target_component, :param_id, :param_value, :param_type]
  defstruct [:target_system, :target_component, :param_id, :param_value, :param_type]
  @typedoc "Set a parameter value (write new value to permanent storage). The receiving component should acknowledge the new parameter value by broadcasting a PARAM_VALUE message (broadcasting ensures that multiple GCS all have an up-to-date list of all parameters). If the sending GCS did not receive a PARAM_VALUE within its timeout time, it should re-send the PARAM_SET message. The parameter microservice is documented at https://mavlink.io/en/services/parameter.html."
  @type t :: %APM.Message.ParamSet{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, param_id: [ char ], param_value: Float32, param_type: APM.Types.mav_param_type}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 23, APM.msg_attributes(23), <<MAVLink.Utils.pack_float(msg.param_value)::binary-size(4),msg.target_system::integer-size(8),msg.target_component::integer-size(8),MAVLink.Utils.pack_string(msg.param_id, 16)::binary-size(16),APM.encode(msg.param_type, :mav_param_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.GpsRawInt do
  @enforce_keys [:time_usec, :fix_type, :lat, :lon, :alt, :eph, :epv, :vel, :cog, :satellites_visible]
  defstruct [:time_usec, :fix_type, :lat, :lon, :alt, :eph, :epv, :vel, :cog, :satellites_visible, :alt_ellipsoid, :h_acc, :v_acc, :vel_acc, :hdg_acc, :yaw]
  @typedoc "The global position, as returned by the Global Positioning System (GPS). This is NOT the global position estimate of the system, but rather a RAW sensor value. See message GLOBAL_POSITION for the global position estimate."
  @type t :: %APM.Message.GpsRawInt{time_usec: MAVLink.Types.uint64_t, fix_type: APM.Types.gps_fix_type, lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, alt: MAVLink.Types.int32_t, eph: MAVLink.Types.uint16_t, epv: MAVLink.Types.uint16_t, vel: MAVLink.Types.uint16_t, cog: MAVLink.Types.uint16_t, satellites_visible: MAVLink.Types.uint8_t, alt_ellipsoid: MAVLink.Types.int32_t, h_acc: MAVLink.Types.uint32_t, v_acc: MAVLink.Types.uint32_t, vel_acc: MAVLink.Types.uint32_t, hdg_acc: MAVLink.Types.uint32_t, yaw: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 24, APM.msg_attributes(24), <<msg.time_usec::little-integer-size(64),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.alt::little-signed-integer-size(32),msg.eph::little-integer-size(16),msg.epv::little-integer-size(16),msg.vel::little-integer-size(16),msg.cog::little-integer-size(16),APM.encode(msg.fix_type, :gps_fix_type)::integer-size(8),msg.satellites_visible::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 24, APM.msg_attributes(24), <<msg.time_usec::little-integer-size(64),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.alt::little-signed-integer-size(32),msg.eph::little-integer-size(16),msg.epv::little-integer-size(16),msg.vel::little-integer-size(16),msg.cog::little-integer-size(16),APM.encode(msg.fix_type, :gps_fix_type)::integer-size(8),msg.satellites_visible::integer-size(8),msg.alt_ellipsoid::little-signed-integer-size(32),msg.h_acc::little-integer-size(32),msg.v_acc::little-integer-size(32),msg.vel_acc::little-integer-size(32),msg.hdg_acc::little-integer-size(32),msg.yaw::little-integer-size(16)>>}
  end
end


defmodule APM.Message.GpsStatus do
  @enforce_keys [:satellites_visible, :satellite_prn, :satellite_used, :satellite_elevation, :satellite_azimuth, :satellite_snr]
  defstruct [:satellites_visible, :satellite_prn, :satellite_used, :satellite_elevation, :satellite_azimuth, :satellite_snr]
  @typedoc "The positioning status, as reported by GPS. This message is intended to display status information about each satellite visible to the receiver. See message GLOBAL_POSITION for the global position estimate. This message can contain information for up to 20 satellites."
  @type t :: %APM.Message.GpsStatus{satellites_visible: MAVLink.Types.uint8_t, satellite_prn: [ MAVLink.Types.uint8_t ], satellite_used: [ MAVLink.Types.uint8_t ], satellite_elevation: [ MAVLink.Types.uint8_t ], satellite_azimuth: [ MAVLink.Types.uint8_t ], satellite_snr: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 25, APM.msg_attributes(25), <<msg.satellites_visible::integer-size(8),MAVLink.Utils.pack_array(msg.satellite_prn, 20, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(20),MAVLink.Utils.pack_array(msg.satellite_used, 20, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(20),MAVLink.Utils.pack_array(msg.satellite_elevation, 20, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(20),MAVLink.Utils.pack_array(msg.satellite_azimuth, 20, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(20),MAVLink.Utils.pack_array(msg.satellite_snr, 20, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(20)>>}
  end
end


defmodule APM.Message.ScaledImu do
  @enforce_keys [:time_boot_ms, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :xmag, :ymag, :zmag]
  defstruct [:time_boot_ms, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :xmag, :ymag, :zmag, :temperature]
  @typedoc "The RAW IMU readings for the usual 9DOF sensor setup. This message should contain the scaled values to the described units"
  @type t :: %APM.Message.ScaledImu{time_boot_ms: MAVLink.Types.uint32_t, xacc: MAVLink.Types.int16_t, yacc: MAVLink.Types.int16_t, zacc: MAVLink.Types.int16_t, xgyro: MAVLink.Types.int16_t, ygyro: MAVLink.Types.int16_t, zgyro: MAVLink.Types.int16_t, xmag: MAVLink.Types.int16_t, ymag: MAVLink.Types.int16_t, zmag: MAVLink.Types.int16_t, temperature: MAVLink.Types.int16_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 26, APM.msg_attributes(26), <<msg.time_boot_ms::little-integer-size(32),msg.xacc::little-signed-integer-size(16),msg.yacc::little-signed-integer-size(16),msg.zacc::little-signed-integer-size(16),msg.xgyro::little-signed-integer-size(16),msg.ygyro::little-signed-integer-size(16),msg.zgyro::little-signed-integer-size(16),msg.xmag::little-signed-integer-size(16),msg.ymag::little-signed-integer-size(16),msg.zmag::little-signed-integer-size(16)>>}
    def pack(msg, 2), do: {:ok, 26, APM.msg_attributes(26), <<msg.time_boot_ms::little-integer-size(32),msg.xacc::little-signed-integer-size(16),msg.yacc::little-signed-integer-size(16),msg.zacc::little-signed-integer-size(16),msg.xgyro::little-signed-integer-size(16),msg.ygyro::little-signed-integer-size(16),msg.zgyro::little-signed-integer-size(16),msg.xmag::little-signed-integer-size(16),msg.ymag::little-signed-integer-size(16),msg.zmag::little-signed-integer-size(16),msg.temperature::little-signed-integer-size(16)>>}
  end
end


defmodule APM.Message.RawImu do
  @enforce_keys [:time_usec, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :xmag, :ymag, :zmag]
  defstruct [:time_usec, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :xmag, :ymag, :zmag, :id, :temperature]
  @typedoc "The RAW IMU readings for a 9DOF sensor, which is identified by the id (default IMU1). This message should always contain the true raw values without any scaling to allow data capture and system debugging."
  @type t :: %APM.Message.RawImu{time_usec: MAVLink.Types.uint64_t, xacc: MAVLink.Types.int16_t, yacc: MAVLink.Types.int16_t, zacc: MAVLink.Types.int16_t, xgyro: MAVLink.Types.int16_t, ygyro: MAVLink.Types.int16_t, zgyro: MAVLink.Types.int16_t, xmag: MAVLink.Types.int16_t, ymag: MAVLink.Types.int16_t, zmag: MAVLink.Types.int16_t, id: MAVLink.Types.uint8_t, temperature: MAVLink.Types.int16_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 27, APM.msg_attributes(27), <<msg.time_usec::little-integer-size(64),msg.xacc::little-signed-integer-size(16),msg.yacc::little-signed-integer-size(16),msg.zacc::little-signed-integer-size(16),msg.xgyro::little-signed-integer-size(16),msg.ygyro::little-signed-integer-size(16),msg.zgyro::little-signed-integer-size(16),msg.xmag::little-signed-integer-size(16),msg.ymag::little-signed-integer-size(16),msg.zmag::little-signed-integer-size(16)>>}
    def pack(msg, 2), do: {:ok, 27, APM.msg_attributes(27), <<msg.time_usec::little-integer-size(64),msg.xacc::little-signed-integer-size(16),msg.yacc::little-signed-integer-size(16),msg.zacc::little-signed-integer-size(16),msg.xgyro::little-signed-integer-size(16),msg.ygyro::little-signed-integer-size(16),msg.zgyro::little-signed-integer-size(16),msg.xmag::little-signed-integer-size(16),msg.ymag::little-signed-integer-size(16),msg.zmag::little-signed-integer-size(16),msg.id::integer-size(8),msg.temperature::little-signed-integer-size(16)>>}
  end
end


defmodule APM.Message.RawPressure do
  @enforce_keys [:time_usec, :press_abs, :press_diff1, :press_diff2, :temperature]
  defstruct [:time_usec, :press_abs, :press_diff1, :press_diff2, :temperature]
  @typedoc "The RAW pressure readings for the typical setup of one absolute pressure and one differential pressure sensor. The sensor values should be the raw, UNSCALED ADC values."
  @type t :: %APM.Message.RawPressure{time_usec: MAVLink.Types.uint64_t, press_abs: MAVLink.Types.int16_t, press_diff1: MAVLink.Types.int16_t, press_diff2: MAVLink.Types.int16_t, temperature: MAVLink.Types.int16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 28, APM.msg_attributes(28), <<msg.time_usec::little-integer-size(64),msg.press_abs::little-signed-integer-size(16),msg.press_diff1::little-signed-integer-size(16),msg.press_diff2::little-signed-integer-size(16),msg.temperature::little-signed-integer-size(16)>>}
  end
end


defmodule APM.Message.ScaledPressure do
  @enforce_keys [:time_boot_ms, :press_abs, :press_diff, :temperature]
  defstruct [:time_boot_ms, :press_abs, :press_diff, :temperature, :temperature_press_diff]
  @typedoc "The pressure readings for the typical setup of one absolute and differential pressure sensor. The units are as specified in each field."
  @type t :: %APM.Message.ScaledPressure{time_boot_ms: MAVLink.Types.uint32_t, press_abs: Float32, press_diff: Float32, temperature: MAVLink.Types.int16_t, temperature_press_diff: MAVLink.Types.int16_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 29, APM.msg_attributes(29), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.press_abs)::binary-size(4),MAVLink.Utils.pack_float(msg.press_diff)::binary-size(4),msg.temperature::little-signed-integer-size(16)>>}
    def pack(msg, 2), do: {:ok, 29, APM.msg_attributes(29), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.press_abs)::binary-size(4),MAVLink.Utils.pack_float(msg.press_diff)::binary-size(4),msg.temperature::little-signed-integer-size(16),msg.temperature_press_diff::little-signed-integer-size(16)>>}
  end
end


defmodule APM.Message.Attitude do
  @enforce_keys [:time_boot_ms, :roll, :pitch, :yaw, :rollspeed, :pitchspeed, :yawspeed]
  defstruct [:time_boot_ms, :roll, :pitch, :yaw, :rollspeed, :pitchspeed, :yawspeed]
  @typedoc "The attitude in the aeronautical frame (right-handed, Z-down, X-front, Y-right)."
  @type t :: %APM.Message.Attitude{time_boot_ms: MAVLink.Types.uint32_t, roll: Float32, pitch: Float32, yaw: Float32, rollspeed: Float32, pitchspeed: Float32, yawspeed: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 30, APM.msg_attributes(30), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_float(msg.rollspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.pitchspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.yawspeed)::binary-size(4)>>}
  end
end


defmodule APM.Message.AttitudeQuaternion do
  @enforce_keys [:time_boot_ms, :q1, :q2, :q3, :q4, :rollspeed, :pitchspeed, :yawspeed]
  defstruct [:time_boot_ms, :q1, :q2, :q3, :q4, :rollspeed, :pitchspeed, :yawspeed, :repr_offset_q]
  @typedoc "The attitude in the aeronautical frame (right-handed, Z-down, X-front, Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a zero rotation would be expressed as (1 0 0 0)."
  @type t :: %APM.Message.AttitudeQuaternion{time_boot_ms: MAVLink.Types.uint32_t, q1: Float32, q2: Float32, q3: Float32, q4: Float32, rollspeed: Float32, pitchspeed: Float32, yawspeed: Float32, repr_offset_q: [ Float32 ]}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 31, APM.msg_attributes(31), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.q1)::binary-size(4),MAVLink.Utils.pack_float(msg.q2)::binary-size(4),MAVLink.Utils.pack_float(msg.q3)::binary-size(4),MAVLink.Utils.pack_float(msg.q4)::binary-size(4),MAVLink.Utils.pack_float(msg.rollspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.pitchspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.yawspeed)::binary-size(4)>>}
    def pack(msg, 2), do: {:ok, 31, APM.msg_attributes(31), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.q1)::binary-size(4),MAVLink.Utils.pack_float(msg.q2)::binary-size(4),MAVLink.Utils.pack_float(msg.q3)::binary-size(4),MAVLink.Utils.pack_float(msg.q4)::binary-size(4),MAVLink.Utils.pack_float(msg.rollspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.pitchspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.yawspeed)::binary-size(4),MAVLink.Utils.pack_array(msg.repr_offset_q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16)>>}
  end
end


defmodule APM.Message.LocalPositionNed do
  @enforce_keys [:time_boot_ms, :x, :y, :z, :vx, :vy, :vz]
  defstruct [:time_boot_ms, :x, :y, :z, :vx, :vy, :vz]
  @typedoc "The filtered local position (e.g. fused computer vision and accelerometers). Coordinate frame is right-handed, Z-axis down (aeronautical frame, NED / north-east-down convention)"
  @type t :: %APM.Message.LocalPositionNed{time_boot_ms: MAVLink.Types.uint32_t, x: Float32, y: Float32, z: Float32, vx: Float32, vy: Float32, vz: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 32, APM.msg_attributes(32), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_float(msg.vx)::binary-size(4),MAVLink.Utils.pack_float(msg.vy)::binary-size(4),MAVLink.Utils.pack_float(msg.vz)::binary-size(4)>>}
  end
end


defmodule APM.Message.GlobalPositionInt do
  @enforce_keys [:time_boot_ms, :lat, :lon, :alt, :relative_alt, :vx, :vy, :vz, :hdg]
  defstruct [:time_boot_ms, :lat, :lon, :alt, :relative_alt, :vx, :vy, :vz, :hdg]
  @typedoc "The filtered global position (e.g. fused GPS and accelerometers). The position is in GPS-frame (right-handed, Z-up). It is designed as scaled integer message since the resolution of float is not sufficient."
  @type t :: %APM.Message.GlobalPositionInt{time_boot_ms: MAVLink.Types.uint32_t, lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, alt: MAVLink.Types.int32_t, relative_alt: MAVLink.Types.int32_t, vx: MAVLink.Types.int16_t, vy: MAVLink.Types.int16_t, vz: MAVLink.Types.int16_t, hdg: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 33, APM.msg_attributes(33), <<msg.time_boot_ms::little-integer-size(32),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.alt::little-signed-integer-size(32),msg.relative_alt::little-signed-integer-size(32),msg.vx::little-signed-integer-size(16),msg.vy::little-signed-integer-size(16),msg.vz::little-signed-integer-size(16),msg.hdg::little-integer-size(16)>>}
  end
end


defmodule APM.Message.RcChannelsScaled do
  @enforce_keys [:time_boot_ms, :port, :chan1_scaled, :chan2_scaled, :chan3_scaled, :chan4_scaled, :chan5_scaled, :chan6_scaled, :chan7_scaled, :chan8_scaled, :rssi]
  defstruct [:time_boot_ms, :port, :chan1_scaled, :chan2_scaled, :chan3_scaled, :chan4_scaled, :chan5_scaled, :chan6_scaled, :chan7_scaled, :chan8_scaled, :rssi]
  @typedoc "The scaled values of the RC channels received: (-100%) -10000, (0%) 0, (100%) 10000. Channels that are inactive should be set to UINT16_MAX."
  @type t :: %APM.Message.RcChannelsScaled{time_boot_ms: MAVLink.Types.uint32_t, port: MAVLink.Types.uint8_t, chan1_scaled: MAVLink.Types.int16_t, chan2_scaled: MAVLink.Types.int16_t, chan3_scaled: MAVLink.Types.int16_t, chan4_scaled: MAVLink.Types.int16_t, chan5_scaled: MAVLink.Types.int16_t, chan6_scaled: MAVLink.Types.int16_t, chan7_scaled: MAVLink.Types.int16_t, chan8_scaled: MAVLink.Types.int16_t, rssi: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 34, APM.msg_attributes(34), <<msg.time_boot_ms::little-integer-size(32),msg.chan1_scaled::little-signed-integer-size(16),msg.chan2_scaled::little-signed-integer-size(16),msg.chan3_scaled::little-signed-integer-size(16),msg.chan4_scaled::little-signed-integer-size(16),msg.chan5_scaled::little-signed-integer-size(16),msg.chan6_scaled::little-signed-integer-size(16),msg.chan7_scaled::little-signed-integer-size(16),msg.chan8_scaled::little-signed-integer-size(16),msg.port::integer-size(8),msg.rssi::integer-size(8)>>}
  end
end


defmodule APM.Message.RcChannelsRaw do
  @enforce_keys [:time_boot_ms, :port, :chan1_raw, :chan2_raw, :chan3_raw, :chan4_raw, :chan5_raw, :chan6_raw, :chan7_raw, :chan8_raw, :rssi]
  defstruct [:time_boot_ms, :port, :chan1_raw, :chan2_raw, :chan3_raw, :chan4_raw, :chan5_raw, :chan6_raw, :chan7_raw, :chan8_raw, :rssi]
  @typedoc "The RAW values of the RC channels received. The standard PPM modulation is as follows: 1000 microseconds: 0%, 2000 microseconds: 100%. A value of UINT16_MAX implies the channel is unused. Individual receivers/transmitters might violate this specification."
  @type t :: %APM.Message.RcChannelsRaw{time_boot_ms: MAVLink.Types.uint32_t, port: MAVLink.Types.uint8_t, chan1_raw: MAVLink.Types.uint16_t, chan2_raw: MAVLink.Types.uint16_t, chan3_raw: MAVLink.Types.uint16_t, chan4_raw: MAVLink.Types.uint16_t, chan5_raw: MAVLink.Types.uint16_t, chan6_raw: MAVLink.Types.uint16_t, chan7_raw: MAVLink.Types.uint16_t, chan8_raw: MAVLink.Types.uint16_t, rssi: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 35, APM.msg_attributes(35), <<msg.time_boot_ms::little-integer-size(32),msg.chan1_raw::little-integer-size(16),msg.chan2_raw::little-integer-size(16),msg.chan3_raw::little-integer-size(16),msg.chan4_raw::little-integer-size(16),msg.chan5_raw::little-integer-size(16),msg.chan6_raw::little-integer-size(16),msg.chan7_raw::little-integer-size(16),msg.chan8_raw::little-integer-size(16),msg.port::integer-size(8),msg.rssi::integer-size(8)>>}
  end
end


defmodule APM.Message.ServoOutputRaw do
  @enforce_keys [:time_usec, :port, :servo1_raw, :servo2_raw, :servo3_raw, :servo4_raw, :servo5_raw, :servo6_raw, :servo7_raw, :servo8_raw]
  defstruct [:time_usec, :port, :servo1_raw, :servo2_raw, :servo3_raw, :servo4_raw, :servo5_raw, :servo6_raw, :servo7_raw, :servo8_raw, :servo9_raw, :servo10_raw, :servo11_raw, :servo12_raw, :servo13_raw, :servo14_raw, :servo15_raw, :servo16_raw]
  @typedoc "Superseded by ACTUATOR_OUTPUT_STATUS. The RAW values of the servo outputs (for RC input from the remote, use the RC_CHANNELS messages). The standard PPM modulation is as follows: 1000 microseconds: 0%, 2000 microseconds: 100%."
  @type t :: %APM.Message.ServoOutputRaw{time_usec: MAVLink.Types.uint32_t, port: MAVLink.Types.uint8_t, servo1_raw: MAVLink.Types.uint16_t, servo2_raw: MAVLink.Types.uint16_t, servo3_raw: MAVLink.Types.uint16_t, servo4_raw: MAVLink.Types.uint16_t, servo5_raw: MAVLink.Types.uint16_t, servo6_raw: MAVLink.Types.uint16_t, servo7_raw: MAVLink.Types.uint16_t, servo8_raw: MAVLink.Types.uint16_t, servo9_raw: MAVLink.Types.uint16_t, servo10_raw: MAVLink.Types.uint16_t, servo11_raw: MAVLink.Types.uint16_t, servo12_raw: MAVLink.Types.uint16_t, servo13_raw: MAVLink.Types.uint16_t, servo14_raw: MAVLink.Types.uint16_t, servo15_raw: MAVLink.Types.uint16_t, servo16_raw: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 36, APM.msg_attributes(36), <<msg.time_usec::little-integer-size(32),msg.servo1_raw::little-integer-size(16),msg.servo2_raw::little-integer-size(16),msg.servo3_raw::little-integer-size(16),msg.servo4_raw::little-integer-size(16),msg.servo5_raw::little-integer-size(16),msg.servo6_raw::little-integer-size(16),msg.servo7_raw::little-integer-size(16),msg.servo8_raw::little-integer-size(16),msg.port::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 36, APM.msg_attributes(36), <<msg.time_usec::little-integer-size(32),msg.servo1_raw::little-integer-size(16),msg.servo2_raw::little-integer-size(16),msg.servo3_raw::little-integer-size(16),msg.servo4_raw::little-integer-size(16),msg.servo5_raw::little-integer-size(16),msg.servo6_raw::little-integer-size(16),msg.servo7_raw::little-integer-size(16),msg.servo8_raw::little-integer-size(16),msg.port::integer-size(8),msg.servo9_raw::little-integer-size(16),msg.servo10_raw::little-integer-size(16),msg.servo11_raw::little-integer-size(16),msg.servo12_raw::little-integer-size(16),msg.servo13_raw::little-integer-size(16),msg.servo14_raw::little-integer-size(16),msg.servo15_raw::little-integer-size(16),msg.servo16_raw::little-integer-size(16)>>}
  end
end


defmodule APM.Message.MissionRequestPartialList do
  @enforce_keys [:target_system, :target_component, :start_index, :end_index]
  defstruct [:target_system, :target_component, :start_index, :end_index, :mission_type]
  @typedoc "Request a partial list of mission items from the system/component. https://mavlink.io/en/services/mission.html. If start and end index are the same, just send one waypoint."
  @type t :: %APM.Message.MissionRequestPartialList{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, start_index: MAVLink.Types.int16_t, end_index: MAVLink.Types.int16_t, mission_type: APM.Types.mav_mission_type}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 37, APM.msg_attributes(37), <<msg.start_index::little-signed-integer-size(16),msg.end_index::little-signed-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 37, APM.msg_attributes(37), <<msg.start_index::little-signed-integer-size(16),msg.end_index::little-signed-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.mission_type, :mav_mission_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.MissionWritePartialList do
  @enforce_keys [:target_system, :target_component, :start_index, :end_index]
  defstruct [:target_system, :target_component, :start_index, :end_index, :mission_type]
  @typedoc "This message is sent to the MAV to write a partial list. If start index == end index, only one item will be transmitted / updated. If the start index is NOT 0 and above the current list size, this request should be REJECTED!"
  @type t :: %APM.Message.MissionWritePartialList{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, start_index: MAVLink.Types.int16_t, end_index: MAVLink.Types.int16_t, mission_type: APM.Types.mav_mission_type}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 38, APM.msg_attributes(38), <<msg.start_index::little-signed-integer-size(16),msg.end_index::little-signed-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 38, APM.msg_attributes(38), <<msg.start_index::little-signed-integer-size(16),msg.end_index::little-signed-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.mission_type, :mav_mission_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.MissionItem do
  @enforce_keys [:target_system, :target_component, :seq, :frame, :command, :current, :autocontinue, :param1, :param2, :param3, :param4, :x, :y, :z]
  defstruct [:target_system, :target_component, :seq, :frame, :command, :current, :autocontinue, :param1, :param2, :param3, :param4, :x, :y, :z, :mission_type]
  @typedoc "Message encoding a mission item. This message is emitted to announce the presence of a mission item and to set a mission item on the system. The mission item can be either in x, y, z meters (type: LOCAL) or x:lat, y:lon, z:altitude. Local frame is Z-down, right handed (NED), global frame is Z-up, right handed (ENU). NaN may be used to indicate an optional/default value (e.g. to use the system's current latitude or yaw rather than a specific value). See also https://mavlink.io/en/services/mission.html."
  @type t :: %APM.Message.MissionItem{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, seq: MAVLink.Types.uint16_t, frame: APM.Types.mav_frame, command: APM.Types.mav_cmd, current: MAVLink.Types.uint8_t, autocontinue: MAVLink.Types.uint8_t, param1: Float32, param2: Float32, param3: Float32, param4: Float32, x: Float32, y: Float32, z: Float32, mission_type: APM.Types.mav_mission_type}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 39, APM.msg_attributes(39), <<MAVLink.Utils.pack_float(msg.param1)::binary-size(4),MAVLink.Utils.pack_float(msg.param2)::binary-size(4),MAVLink.Utils.pack_float(msg.param3)::binary-size(4),MAVLink.Utils.pack_float(msg.param4)::binary-size(4),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),msg.seq::little-integer-size(16),APM.encode(msg.command, :mav_cmd)::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.frame, :mav_frame)::integer-size(8),msg.current::integer-size(8),msg.autocontinue::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 39, APM.msg_attributes(39), <<MAVLink.Utils.pack_float(msg.param1)::binary-size(4),MAVLink.Utils.pack_float(msg.param2)::binary-size(4),MAVLink.Utils.pack_float(msg.param3)::binary-size(4),MAVLink.Utils.pack_float(msg.param4)::binary-size(4),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),msg.seq::little-integer-size(16),APM.encode(msg.command, :mav_cmd)::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.frame, :mav_frame)::integer-size(8),msg.current::integer-size(8),msg.autocontinue::integer-size(8),APM.encode(msg.mission_type, :mav_mission_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.MissionRequest do
  @enforce_keys [:target_system, :target_component, :seq]
  defstruct [:target_system, :target_component, :seq, :mission_type]
  @typedoc "Request the information of the mission item with the sequence number seq. The response of the system to this message should be a MISSION_ITEM message. https://mavlink.io/en/services/mission.html"
  @type t :: %APM.Message.MissionRequest{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, seq: MAVLink.Types.uint16_t, mission_type: APM.Types.mav_mission_type}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 40, APM.msg_attributes(40), <<msg.seq::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 40, APM.msg_attributes(40), <<msg.seq::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.mission_type, :mav_mission_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.MissionSetCurrent do
  @enforce_keys [:target_system, :target_component, :seq]
  defstruct [:target_system, :target_component, :seq]
  @typedoc "Set the mission item with sequence number seq as current item. This means that the MAV will continue to this mission item on the shortest path (not following the mission items in-between)."
  @type t :: %APM.Message.MissionSetCurrent{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, seq: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 41, APM.msg_attributes(41), <<msg.seq::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
  end
end


defmodule APM.Message.MissionCurrent do
  @enforce_keys [:seq]
  defstruct [:seq]
  @typedoc "Message that announces the sequence number of the current active mission item. The MAV will fly towards this mission item."
  @type t :: %APM.Message.MissionCurrent{seq: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 42, APM.msg_attributes(42), <<msg.seq::little-integer-size(16)>>}
  end
end


defmodule APM.Message.MissionRequestList do
  @enforce_keys [:target_system, :target_component]
  defstruct [:target_system, :target_component, :mission_type]
  @typedoc "Request the overall list of mission items from the system/component."
  @type t :: %APM.Message.MissionRequestList{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, mission_type: APM.Types.mav_mission_type}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 43, APM.msg_attributes(43), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 43, APM.msg_attributes(43), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.mission_type, :mav_mission_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.MissionCount do
  @enforce_keys [:target_system, :target_component, :count]
  defstruct [:target_system, :target_component, :count, :mission_type]
  @typedoc "This message is emitted as response to MISSION_REQUEST_LIST by the MAV and to initiate a write transaction. The GCS can then request the individual mission item based on the knowledge of the total number of waypoints."
  @type t :: %APM.Message.MissionCount{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, count: MAVLink.Types.uint16_t, mission_type: APM.Types.mav_mission_type}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 44, APM.msg_attributes(44), <<msg.count::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 44, APM.msg_attributes(44), <<msg.count::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.mission_type, :mav_mission_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.MissionClearAll do
  @enforce_keys [:target_system, :target_component]
  defstruct [:target_system, :target_component, :mission_type]
  @typedoc "Delete all mission items at once."
  @type t :: %APM.Message.MissionClearAll{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, mission_type: APM.Types.mav_mission_type}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 45, APM.msg_attributes(45), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 45, APM.msg_attributes(45), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.mission_type, :mav_mission_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.MissionItemReached do
  @enforce_keys [:seq]
  defstruct [:seq]
  @typedoc "A certain mission item has been reached. The system will either hold this position (or circle on the orbit) or (if the autocontinue on the WP was set) continue to the next waypoint."
  @type t :: %APM.Message.MissionItemReached{seq: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 46, APM.msg_attributes(46), <<msg.seq::little-integer-size(16)>>}
  end
end


defmodule APM.Message.MissionAck do
  @enforce_keys [:target_system, :target_component, :type]
  defstruct [:target_system, :target_component, :type, :mission_type]
  @typedoc "Acknowledgment message during waypoint handling. The type field states if this message is a positive ack (type=0) or if an error happened (type=non-zero)."
  @type t :: %APM.Message.MissionAck{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, type: APM.Types.mav_mission_result, mission_type: APM.Types.mav_mission_type}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 47, APM.msg_attributes(47), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.type, :mav_mission_result)::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 47, APM.msg_attributes(47), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.type, :mav_mission_result)::integer-size(8),APM.encode(msg.mission_type, :mav_mission_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.SetGpsGlobalOrigin do
  @enforce_keys [:target_system, :latitude, :longitude, :altitude]
  defstruct [:target_system, :latitude, :longitude, :altitude, :time_usec]
  @typedoc "Sets the GPS co-ordinates of the vehicle local origin (0,0,0) position. Vehicle should emit GPS_GLOBAL_ORIGIN irrespective of whether the origin is changed. This enables transform between the local coordinate frame and the global (GPS) coordinate frame, which may be necessary when (for example) indoor and outdoor settings are connected and the MAV should move from in- to outdoor."
  @type t :: %APM.Message.SetGpsGlobalOrigin{target_system: MAVLink.Types.uint8_t, latitude: MAVLink.Types.int32_t, longitude: MAVLink.Types.int32_t, altitude: MAVLink.Types.int32_t, time_usec: MAVLink.Types.uint64_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 48, APM.msg_attributes(48), <<msg.latitude::little-signed-integer-size(32),msg.longitude::little-signed-integer-size(32),msg.altitude::little-signed-integer-size(32),msg.target_system::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 48, APM.msg_attributes(48), <<msg.latitude::little-signed-integer-size(32),msg.longitude::little-signed-integer-size(32),msg.altitude::little-signed-integer-size(32),msg.target_system::integer-size(8),msg.time_usec::little-integer-size(64)>>}
  end
end


defmodule APM.Message.GpsGlobalOrigin do
  @enforce_keys [:latitude, :longitude, :altitude]
  defstruct [:latitude, :longitude, :altitude, :time_usec]
  @typedoc "Publishes the GPS co-ordinates of the vehicle local origin (0,0,0) position. Emitted whenever a new GPS-Local position mapping is requested or set - e.g. following SET_GPS_GLOBAL_ORIGIN message."
  @type t :: %APM.Message.GpsGlobalOrigin{latitude: MAVLink.Types.int32_t, longitude: MAVLink.Types.int32_t, altitude: MAVLink.Types.int32_t, time_usec: MAVLink.Types.uint64_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 49, APM.msg_attributes(49), <<msg.latitude::little-signed-integer-size(32),msg.longitude::little-signed-integer-size(32),msg.altitude::little-signed-integer-size(32)>>}
    def pack(msg, 2), do: {:ok, 49, APM.msg_attributes(49), <<msg.latitude::little-signed-integer-size(32),msg.longitude::little-signed-integer-size(32),msg.altitude::little-signed-integer-size(32),msg.time_usec::little-integer-size(64)>>}
  end
end


defmodule APM.Message.ParamMapRc do
  @enforce_keys [:target_system, :target_component, :param_id, :param_index, :parameter_rc_channel_index, :param_value0, :scale, :param_value_min, :param_value_max]
  defstruct [:target_system, :target_component, :param_id, :param_index, :parameter_rc_channel_index, :param_value0, :scale, :param_value_min, :param_value_max]
  @typedoc "Bind a RC channel to a parameter. The parameter should change according to the RC channel value."
  @type t :: %APM.Message.ParamMapRc{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, param_id: [ char ], param_index: MAVLink.Types.int16_t, parameter_rc_channel_index: MAVLink.Types.uint8_t, param_value0: Float32, scale: Float32, param_value_min: Float32, param_value_max: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 50, APM.msg_attributes(50), <<MAVLink.Utils.pack_float(msg.param_value0)::binary-size(4),MAVLink.Utils.pack_float(msg.scale)::binary-size(4),MAVLink.Utils.pack_float(msg.param_value_min)::binary-size(4),MAVLink.Utils.pack_float(msg.param_value_max)::binary-size(4),msg.param_index::little-signed-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),MAVLink.Utils.pack_string(msg.param_id, 16)::binary-size(16),msg.parameter_rc_channel_index::integer-size(8)>>}
  end
end


defmodule APM.Message.MissionRequestInt do
  @enforce_keys [:target_system, :target_component, :seq]
  defstruct [:target_system, :target_component, :seq, :mission_type]
  @typedoc "Request the information of the mission item with the sequence number seq. The response of the system to this message should be a MISSION_ITEM_INT message. https://mavlink.io/en/services/mission.html"
  @type t :: %APM.Message.MissionRequestInt{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, seq: MAVLink.Types.uint16_t, mission_type: APM.Types.mav_mission_type}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 51, APM.msg_attributes(51), <<msg.seq::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 51, APM.msg_attributes(51), <<msg.seq::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.mission_type, :mav_mission_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.SafetySetAllowedArea do
  @enforce_keys [:target_system, :target_component, :frame, :p1x, :p1y, :p1z, :p2x, :p2y, :p2z]
  defstruct [:target_system, :target_component, :frame, :p1x, :p1y, :p1z, :p2x, :p2y, :p2z]
  @typedoc "Set a safety zone (volume), which is defined by two corners of a cube. This message can be used to tell the MAV which setpoints/waypoints to accept and which to reject. Safety areas are often enforced by national or competition regulations."
  @type t :: %APM.Message.SafetySetAllowedArea{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, frame: APM.Types.mav_frame, p1x: Float32, p1y: Float32, p1z: Float32, p2x: Float32, p2y: Float32, p2z: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 54, APM.msg_attributes(54), <<MAVLink.Utils.pack_float(msg.p1x)::binary-size(4),MAVLink.Utils.pack_float(msg.p1y)::binary-size(4),MAVLink.Utils.pack_float(msg.p1z)::binary-size(4),MAVLink.Utils.pack_float(msg.p2x)::binary-size(4),MAVLink.Utils.pack_float(msg.p2y)::binary-size(4),MAVLink.Utils.pack_float(msg.p2z)::binary-size(4),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.frame, :mav_frame)::integer-size(8)>>}
  end
end


defmodule APM.Message.SafetyAllowedArea do
  @enforce_keys [:frame, :p1x, :p1y, :p1z, :p2x, :p2y, :p2z]
  defstruct [:frame, :p1x, :p1y, :p1z, :p2x, :p2y, :p2z]
  @typedoc "Read out the safety zone the MAV currently assumes."
  @type t :: %APM.Message.SafetyAllowedArea{frame: APM.Types.mav_frame, p1x: Float32, p1y: Float32, p1z: Float32, p2x: Float32, p2y: Float32, p2z: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 55, APM.msg_attributes(55), <<MAVLink.Utils.pack_float(msg.p1x)::binary-size(4),MAVLink.Utils.pack_float(msg.p1y)::binary-size(4),MAVLink.Utils.pack_float(msg.p1z)::binary-size(4),MAVLink.Utils.pack_float(msg.p2x)::binary-size(4),MAVLink.Utils.pack_float(msg.p2y)::binary-size(4),MAVLink.Utils.pack_float(msg.p2z)::binary-size(4),APM.encode(msg.frame, :mav_frame)::integer-size(8)>>}
  end
end


defmodule APM.Message.AttitudeQuaternionCov do
  @enforce_keys [:time_usec, :q, :rollspeed, :pitchspeed, :yawspeed, :covariance]
  defstruct [:time_usec, :q, :rollspeed, :pitchspeed, :yawspeed, :covariance]
  @typedoc "The attitude in the aeronautical frame (right-handed, Z-down, X-front, Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a zero rotation would be expressed as (1 0 0 0)."
  @type t :: %APM.Message.AttitudeQuaternionCov{time_usec: MAVLink.Types.uint64_t, q: [ Float32 ], rollspeed: Float32, pitchspeed: Float32, yawspeed: Float32, covariance: [ Float32 ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 61, APM.msg_attributes(61), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_array(msg.q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),MAVLink.Utils.pack_float(msg.rollspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.pitchspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.yawspeed)::binary-size(4),MAVLink.Utils.pack_array(msg.covariance, 9, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(36)>>}
  end
end


defmodule APM.Message.NavControllerOutput do
  @enforce_keys [:nav_roll, :nav_pitch, :nav_bearing, :target_bearing, :wp_dist, :alt_error, :aspd_error, :xtrack_error]
  defstruct [:nav_roll, :nav_pitch, :nav_bearing, :target_bearing, :wp_dist, :alt_error, :aspd_error, :xtrack_error]
  @typedoc "The state of the fixed wing navigation and position controller."
  @type t :: %APM.Message.NavControllerOutput{nav_roll: Float32, nav_pitch: Float32, nav_bearing: MAVLink.Types.int16_t, target_bearing: MAVLink.Types.int16_t, wp_dist: MAVLink.Types.uint16_t, alt_error: Float32, aspd_error: Float32, xtrack_error: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 62, APM.msg_attributes(62), <<MAVLink.Utils.pack_float(msg.nav_roll)::binary-size(4),MAVLink.Utils.pack_float(msg.nav_pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.alt_error)::binary-size(4),MAVLink.Utils.pack_float(msg.aspd_error)::binary-size(4),MAVLink.Utils.pack_float(msg.xtrack_error)::binary-size(4),msg.nav_bearing::little-signed-integer-size(16),msg.target_bearing::little-signed-integer-size(16),msg.wp_dist::little-integer-size(16)>>}
  end
end


defmodule APM.Message.GlobalPositionIntCov do
  @enforce_keys [:time_usec, :estimator_type, :lat, :lon, :alt, :relative_alt, :vx, :vy, :vz, :covariance]
  defstruct [:time_usec, :estimator_type, :lat, :lon, :alt, :relative_alt, :vx, :vy, :vz, :covariance]
  @typedoc "The filtered global position (e.g. fused GPS and accelerometers). The position is in GPS-frame (right-handed, Z-up). It is designed as scaled integer message since the resolution of float is not sufficient. NOTE: This message is intended for onboard networks / companion computers and higher-bandwidth links and optimized for accuracy and completeness. Please use the GLOBAL_POSITION_INT message for a minimal subset."
  @type t :: %APM.Message.GlobalPositionIntCov{time_usec: MAVLink.Types.uint64_t, estimator_type: APM.Types.mav_estimator_type, lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, alt: MAVLink.Types.int32_t, relative_alt: MAVLink.Types.int32_t, vx: Float32, vy: Float32, vz: Float32, covariance: [ Float32 ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 63, APM.msg_attributes(63), <<msg.time_usec::little-integer-size(64),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.alt::little-signed-integer-size(32),msg.relative_alt::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.vx)::binary-size(4),MAVLink.Utils.pack_float(msg.vy)::binary-size(4),MAVLink.Utils.pack_float(msg.vz)::binary-size(4),MAVLink.Utils.pack_array(msg.covariance, 36, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(144),APM.encode(msg.estimator_type, :mav_estimator_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.LocalPositionNedCov do
  @enforce_keys [:time_usec, :estimator_type, :x, :y, :z, :vx, :vy, :vz, :ax, :ay, :az, :covariance]
  defstruct [:time_usec, :estimator_type, :x, :y, :z, :vx, :vy, :vz, :ax, :ay, :az, :covariance]
  @typedoc "The filtered local position (e.g. fused computer vision and accelerometers). Coordinate frame is right-handed, Z-axis down (aeronautical frame, NED / north-east-down convention)"
  @type t :: %APM.Message.LocalPositionNedCov{time_usec: MAVLink.Types.uint64_t, estimator_type: APM.Types.mav_estimator_type, x: Float32, y: Float32, z: Float32, vx: Float32, vy: Float32, vz: Float32, ax: Float32, ay: Float32, az: Float32, covariance: [ Float32 ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 64, APM.msg_attributes(64), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_float(msg.vx)::binary-size(4),MAVLink.Utils.pack_float(msg.vy)::binary-size(4),MAVLink.Utils.pack_float(msg.vz)::binary-size(4),MAVLink.Utils.pack_float(msg.ax)::binary-size(4),MAVLink.Utils.pack_float(msg.ay)::binary-size(4),MAVLink.Utils.pack_float(msg.az)::binary-size(4),MAVLink.Utils.pack_array(msg.covariance, 45, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(180),APM.encode(msg.estimator_type, :mav_estimator_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.RcChannels do
  @enforce_keys [:time_boot_ms, :chancount, :chan1_raw, :chan2_raw, :chan3_raw, :chan4_raw, :chan5_raw, :chan6_raw, :chan7_raw, :chan8_raw, :chan9_raw, :chan10_raw, :chan11_raw, :chan12_raw, :chan13_raw, :chan14_raw, :chan15_raw, :chan16_raw, :chan17_raw, :chan18_raw, :rssi]
  defstruct [:time_boot_ms, :chancount, :chan1_raw, :chan2_raw, :chan3_raw, :chan4_raw, :chan5_raw, :chan6_raw, :chan7_raw, :chan8_raw, :chan9_raw, :chan10_raw, :chan11_raw, :chan12_raw, :chan13_raw, :chan14_raw, :chan15_raw, :chan16_raw, :chan17_raw, :chan18_raw, :rssi]
  @typedoc "The PPM values of the RC channels received. The standard PPM modulation is as follows: 1000 microseconds: 0%, 2000 microseconds: 100%. A value of UINT16_MAX implies the channel is unused. Individual receivers/transmitters might violate this specification."
  @type t :: %APM.Message.RcChannels{time_boot_ms: MAVLink.Types.uint32_t, chancount: MAVLink.Types.uint8_t, chan1_raw: MAVLink.Types.uint16_t, chan2_raw: MAVLink.Types.uint16_t, chan3_raw: MAVLink.Types.uint16_t, chan4_raw: MAVLink.Types.uint16_t, chan5_raw: MAVLink.Types.uint16_t, chan6_raw: MAVLink.Types.uint16_t, chan7_raw: MAVLink.Types.uint16_t, chan8_raw: MAVLink.Types.uint16_t, chan9_raw: MAVLink.Types.uint16_t, chan10_raw: MAVLink.Types.uint16_t, chan11_raw: MAVLink.Types.uint16_t, chan12_raw: MAVLink.Types.uint16_t, chan13_raw: MAVLink.Types.uint16_t, chan14_raw: MAVLink.Types.uint16_t, chan15_raw: MAVLink.Types.uint16_t, chan16_raw: MAVLink.Types.uint16_t, chan17_raw: MAVLink.Types.uint16_t, chan18_raw: MAVLink.Types.uint16_t, rssi: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 65, APM.msg_attributes(65), <<msg.time_boot_ms::little-integer-size(32),msg.chan1_raw::little-integer-size(16),msg.chan2_raw::little-integer-size(16),msg.chan3_raw::little-integer-size(16),msg.chan4_raw::little-integer-size(16),msg.chan5_raw::little-integer-size(16),msg.chan6_raw::little-integer-size(16),msg.chan7_raw::little-integer-size(16),msg.chan8_raw::little-integer-size(16),msg.chan9_raw::little-integer-size(16),msg.chan10_raw::little-integer-size(16),msg.chan11_raw::little-integer-size(16),msg.chan12_raw::little-integer-size(16),msg.chan13_raw::little-integer-size(16),msg.chan14_raw::little-integer-size(16),msg.chan15_raw::little-integer-size(16),msg.chan16_raw::little-integer-size(16),msg.chan17_raw::little-integer-size(16),msg.chan18_raw::little-integer-size(16),msg.chancount::integer-size(8),msg.rssi::integer-size(8)>>}
  end
end


defmodule APM.Message.RequestDataStream do
  @enforce_keys [:target_system, :target_component, :req_stream_id, :req_message_rate, :start_stop]
  defstruct [:target_system, :target_component, :req_stream_id, :req_message_rate, :start_stop]
  @typedoc "Request a data stream."
  @type t :: %APM.Message.RequestDataStream{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, req_stream_id: MAVLink.Types.uint8_t, req_message_rate: MAVLink.Types.uint16_t, start_stop: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 66, APM.msg_attributes(66), <<msg.req_message_rate::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.req_stream_id::integer-size(8),msg.start_stop::integer-size(8)>>}
  end
end


defmodule APM.Message.DataStream do
  @enforce_keys [:stream_id, :message_rate, :on_off]
  defstruct [:stream_id, :message_rate, :on_off]
  @typedoc "Data stream status information."
  @type t :: %APM.Message.DataStream{stream_id: MAVLink.Types.uint8_t, message_rate: MAVLink.Types.uint16_t, on_off: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 67, APM.msg_attributes(67), <<msg.message_rate::little-integer-size(16),msg.stream_id::integer-size(8),msg.on_off::integer-size(8)>>}
  end
end


defmodule APM.Message.ManualControl do
  @enforce_keys [:target, :x, :y, :z, :r, :buttons]
  defstruct [:target, :x, :y, :z, :r, :buttons]
  @typedoc "This message provides an API for manually controlling the vehicle using standard joystick axes nomenclature, along with a joystick-like input device. Unused axes can be disabled an buttons are also transmit as boolean values of their"
  @type t :: %APM.Message.ManualControl{target: MAVLink.Types.uint8_t, x: MAVLink.Types.int16_t, y: MAVLink.Types.int16_t, z: MAVLink.Types.int16_t, r: MAVLink.Types.int16_t, buttons: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 69, APM.msg_attributes(69), <<msg.x::little-signed-integer-size(16),msg.y::little-signed-integer-size(16),msg.z::little-signed-integer-size(16),msg.r::little-signed-integer-size(16),msg.buttons::little-integer-size(16),msg.target::integer-size(8)>>}
  end
end


defmodule APM.Message.RcChannelsOverride do
  @enforce_keys [:target_system, :target_component, :chan1_raw, :chan2_raw, :chan3_raw, :chan4_raw, :chan5_raw, :chan6_raw, :chan7_raw, :chan8_raw]
  defstruct [:target_system, :target_component, :chan1_raw, :chan2_raw, :chan3_raw, :chan4_raw, :chan5_raw, :chan6_raw, :chan7_raw, :chan8_raw, :chan9_raw, :chan10_raw, :chan11_raw, :chan12_raw, :chan13_raw, :chan14_raw, :chan15_raw, :chan16_raw, :chan17_raw, :chan18_raw]
  @typedoc "The RAW values of the RC channels sent to the MAV to override info received from the RC radio. The standard PPM modulation is as follows: 1000 microseconds: 0%, 2000 microseconds: 100%. Individual receivers/transmitters might violate this specification. Note carefully the semantic differences between the first 8 channels and the subsequent channels"
  @type t :: %APM.Message.RcChannelsOverride{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, chan1_raw: MAVLink.Types.uint16_t, chan2_raw: MAVLink.Types.uint16_t, chan3_raw: MAVLink.Types.uint16_t, chan4_raw: MAVLink.Types.uint16_t, chan5_raw: MAVLink.Types.uint16_t, chan6_raw: MAVLink.Types.uint16_t, chan7_raw: MAVLink.Types.uint16_t, chan8_raw: MAVLink.Types.uint16_t, chan9_raw: MAVLink.Types.uint16_t, chan10_raw: MAVLink.Types.uint16_t, chan11_raw: MAVLink.Types.uint16_t, chan12_raw: MAVLink.Types.uint16_t, chan13_raw: MAVLink.Types.uint16_t, chan14_raw: MAVLink.Types.uint16_t, chan15_raw: MAVLink.Types.uint16_t, chan16_raw: MAVLink.Types.uint16_t, chan17_raw: MAVLink.Types.uint16_t, chan18_raw: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 70, APM.msg_attributes(70), <<msg.chan1_raw::little-integer-size(16),msg.chan2_raw::little-integer-size(16),msg.chan3_raw::little-integer-size(16),msg.chan4_raw::little-integer-size(16),msg.chan5_raw::little-integer-size(16),msg.chan6_raw::little-integer-size(16),msg.chan7_raw::little-integer-size(16),msg.chan8_raw::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 70, APM.msg_attributes(70), <<msg.chan1_raw::little-integer-size(16),msg.chan2_raw::little-integer-size(16),msg.chan3_raw::little-integer-size(16),msg.chan4_raw::little-integer-size(16),msg.chan5_raw::little-integer-size(16),msg.chan6_raw::little-integer-size(16),msg.chan7_raw::little-integer-size(16),msg.chan8_raw::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.chan9_raw::little-integer-size(16),msg.chan10_raw::little-integer-size(16),msg.chan11_raw::little-integer-size(16),msg.chan12_raw::little-integer-size(16),msg.chan13_raw::little-integer-size(16),msg.chan14_raw::little-integer-size(16),msg.chan15_raw::little-integer-size(16),msg.chan16_raw::little-integer-size(16),msg.chan17_raw::little-integer-size(16),msg.chan18_raw::little-integer-size(16)>>}
  end
end


defmodule APM.Message.MissionItemInt do
  @enforce_keys [:target_system, :target_component, :seq, :frame, :command, :current, :autocontinue, :param1, :param2, :param3, :param4, :x, :y, :z]
  defstruct [:target_system, :target_component, :seq, :frame, :command, :current, :autocontinue, :param1, :param2, :param3, :param4, :x, :y, :z, :mission_type]
  @typedoc "Message encoding a mission item. This message is emitted to announce the presence of a mission item and to set a mission item on the system. The mission item can be either in x, y, z meters (type: LOCAL) or x:lat, y:lon, z:altitude. Local frame is Z-down, right handed (NED), global frame is Z-up, right handed (ENU). NaN or INT32_MAX may be used in float/integer params (respectively) to indicate optional/default values (e.g. to use the component's current latitude, yaw rather than a specific value). See also https://mavlink.io/en/services/mission.html."
  @type t :: %APM.Message.MissionItemInt{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, seq: MAVLink.Types.uint16_t, frame: APM.Types.mav_frame, command: APM.Types.mav_cmd, current: MAVLink.Types.uint8_t, autocontinue: MAVLink.Types.uint8_t, param1: Float32, param2: Float32, param3: Float32, param4: Float32, x: MAVLink.Types.int32_t, y: MAVLink.Types.int32_t, z: Float32, mission_type: APM.Types.mav_mission_type}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 73, APM.msg_attributes(73), <<MAVLink.Utils.pack_float(msg.param1)::binary-size(4),MAVLink.Utils.pack_float(msg.param2)::binary-size(4),MAVLink.Utils.pack_float(msg.param3)::binary-size(4),MAVLink.Utils.pack_float(msg.param4)::binary-size(4),msg.x::little-signed-integer-size(32),msg.y::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.z)::binary-size(4),msg.seq::little-integer-size(16),APM.encode(msg.command, :mav_cmd)::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.frame, :mav_frame)::integer-size(8),msg.current::integer-size(8),msg.autocontinue::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 73, APM.msg_attributes(73), <<MAVLink.Utils.pack_float(msg.param1)::binary-size(4),MAVLink.Utils.pack_float(msg.param2)::binary-size(4),MAVLink.Utils.pack_float(msg.param3)::binary-size(4),MAVLink.Utils.pack_float(msg.param4)::binary-size(4),msg.x::little-signed-integer-size(32),msg.y::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.z)::binary-size(4),msg.seq::little-integer-size(16),APM.encode(msg.command, :mav_cmd)::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.frame, :mav_frame)::integer-size(8),msg.current::integer-size(8),msg.autocontinue::integer-size(8),APM.encode(msg.mission_type, :mav_mission_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.VfrHud do
  @enforce_keys [:airspeed, :groundspeed, :heading, :throttle, :alt, :climb]
  defstruct [:airspeed, :groundspeed, :heading, :throttle, :alt, :climb]
  @typedoc "Metrics typically displayed on a HUD for fixed wing aircraft."
  @type t :: %APM.Message.VfrHud{airspeed: Float32, groundspeed: Float32, heading: MAVLink.Types.int16_t, throttle: MAVLink.Types.uint16_t, alt: Float32, climb: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 74, APM.msg_attributes(74), <<MAVLink.Utils.pack_float(msg.airspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.groundspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.alt)::binary-size(4),MAVLink.Utils.pack_float(msg.climb)::binary-size(4),msg.heading::little-signed-integer-size(16),msg.throttle::little-integer-size(16)>>}
  end
end


defmodule APM.Message.CommandInt do
  @enforce_keys [:target_system, :target_component, :frame, :command, :current, :autocontinue, :param1, :param2, :param3, :param4, :x, :y, :z]
  defstruct [:target_system, :target_component, :frame, :command, :current, :autocontinue, :param1, :param2, :param3, :param4, :x, :y, :z]
  @typedoc "Message encoding a command with parameters as scaled integers. Scaling depends on the actual command value. The command microservice is documented at https://mavlink.io/en/services/command.html"
  @type t :: %APM.Message.CommandInt{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, frame: APM.Types.mav_frame, command: APM.Types.mav_cmd, current: MAVLink.Types.uint8_t, autocontinue: MAVLink.Types.uint8_t, param1: Float32, param2: Float32, param3: Float32, param4: Float32, x: MAVLink.Types.int32_t, y: MAVLink.Types.int32_t, z: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 75, APM.msg_attributes(75), <<MAVLink.Utils.pack_float(msg.param1)::binary-size(4),MAVLink.Utils.pack_float(msg.param2)::binary-size(4),MAVLink.Utils.pack_float(msg.param3)::binary-size(4),MAVLink.Utils.pack_float(msg.param4)::binary-size(4),msg.x::little-signed-integer-size(32),msg.y::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.z)::binary-size(4),APM.encode(msg.command, :mav_cmd)::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.frame, :mav_frame)::integer-size(8),msg.current::integer-size(8),msg.autocontinue::integer-size(8)>>}
  end
end


defmodule APM.Message.CommandLong do
  @enforce_keys [:target_system, :target_component, :command, :confirmation, :param1, :param2, :param3, :param4, :param5, :param6, :param7]
  defstruct [:target_system, :target_component, :command, :confirmation, :param1, :param2, :param3, :param4, :param5, :param6, :param7]
  @typedoc "Send a command with up to seven parameters to the MAV. The command microservice is documented at https://mavlink.io/en/services/command.html"
  @type t :: %APM.Message.CommandLong{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, command: APM.Types.mav_cmd, confirmation: MAVLink.Types.uint8_t, param1: Float32, param2: Float32, param3: Float32, param4: Float32, param5: Float32, param6: Float32, param7: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 76, APM.msg_attributes(76), <<MAVLink.Utils.pack_float(msg.param1)::binary-size(4),MAVLink.Utils.pack_float(msg.param2)::binary-size(4),MAVLink.Utils.pack_float(msg.param3)::binary-size(4),MAVLink.Utils.pack_float(msg.param4)::binary-size(4),MAVLink.Utils.pack_float(msg.param5)::binary-size(4),MAVLink.Utils.pack_float(msg.param6)::binary-size(4),MAVLink.Utils.pack_float(msg.param7)::binary-size(4),APM.encode(msg.command, :mav_cmd)::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.confirmation::integer-size(8)>>}
  end
end


defmodule APM.Message.CommandAck do
  @enforce_keys [:command, :result]
  defstruct [:command, :result]
  @typedoc "Report status of a command. Includes feedback whether the command was executed. The command microservice is documented at https://mavlink.io/en/services/command.html"
  @type t :: %APM.Message.CommandAck{command: APM.Types.mav_cmd, result: APM.Types.mav_result}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 77, APM.msg_attributes(77), <<APM.encode(msg.command, :mav_cmd)::little-integer-size(16),APM.encode(msg.result, :mav_result)::integer-size(8)>>}
  end
end


defmodule APM.Message.ManualSetpoint do
  @enforce_keys [:time_boot_ms, :roll, :pitch, :yaw, :thrust, :mode_switch, :manual_override_switch]
  defstruct [:time_boot_ms, :roll, :pitch, :yaw, :thrust, :mode_switch, :manual_override_switch]
  @typedoc "Setpoint in roll, pitch, yaw and thrust from the operator"
  @type t :: %APM.Message.ManualSetpoint{time_boot_ms: MAVLink.Types.uint32_t, roll: Float32, pitch: Float32, yaw: Float32, thrust: Float32, mode_switch: MAVLink.Types.uint8_t, manual_override_switch: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 81, APM.msg_attributes(81), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_float(msg.thrust)::binary-size(4),msg.mode_switch::integer-size(8),msg.manual_override_switch::integer-size(8)>>}
  end
end


defmodule APM.Message.SetAttitudeTarget do
  @enforce_keys [:time_boot_ms, :target_system, :target_component, :type_mask, :q, :body_roll_rate, :body_pitch_rate, :body_yaw_rate, :thrust]
  defstruct [:time_boot_ms, :target_system, :target_component, :type_mask, :q, :body_roll_rate, :body_pitch_rate, :body_yaw_rate, :thrust]
  @typedoc "Sets a desired vehicle attitude. Used by an external controller to command the vehicle (manual controller or other system)."
  @type t :: %APM.Message.SetAttitudeTarget{time_boot_ms: MAVLink.Types.uint32_t, target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, type_mask: MapSet.t(APM.Types.attitude_target_typemask), q: [ Float32 ], body_roll_rate: Float32, body_pitch_rate: Float32, body_yaw_rate: Float32, thrust: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 82, APM.msg_attributes(82), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_array(msg.q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),MAVLink.Utils.pack_float(msg.body_roll_rate)::binary-size(4),MAVLink.Utils.pack_float(msg.body_pitch_rate)::binary-size(4),MAVLink.Utils.pack_float(msg.body_yaw_rate)::binary-size(4),MAVLink.Utils.pack_float(msg.thrust)::binary-size(4),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.pack_bitmask(msg.type_mask, :attitude_target_typemask, &APM.encode/2)::integer-size(8)>>}
  end
end


defmodule APM.Message.AttitudeTarget do
  @enforce_keys [:time_boot_ms, :type_mask, :q, :body_roll_rate, :body_pitch_rate, :body_yaw_rate, :thrust]
  defstruct [:time_boot_ms, :type_mask, :q, :body_roll_rate, :body_pitch_rate, :body_yaw_rate, :thrust]
  @typedoc "Reports the current commanded attitude of the vehicle as specified by the autopilot. This should match the commands sent in a SET_ATTITUDE_TARGET message if the vehicle is being controlled this way."
  @type t :: %APM.Message.AttitudeTarget{time_boot_ms: MAVLink.Types.uint32_t, type_mask: MapSet.t(APM.Types.attitude_target_typemask), q: [ Float32 ], body_roll_rate: Float32, body_pitch_rate: Float32, body_yaw_rate: Float32, thrust: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 83, APM.msg_attributes(83), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_array(msg.q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),MAVLink.Utils.pack_float(msg.body_roll_rate)::binary-size(4),MAVLink.Utils.pack_float(msg.body_pitch_rate)::binary-size(4),MAVLink.Utils.pack_float(msg.body_yaw_rate)::binary-size(4),MAVLink.Utils.pack_float(msg.thrust)::binary-size(4),APM.pack_bitmask(msg.type_mask, :attitude_target_typemask, &APM.encode/2)::integer-size(8)>>}
  end
end


defmodule APM.Message.SetPositionTargetLocalNed do
  @enforce_keys [:time_boot_ms, :target_system, :target_component, :coordinate_frame, :type_mask, :x, :y, :z, :vx, :vy, :vz, :afx, :afy, :afz, :yaw, :yaw_rate]
  defstruct [:time_boot_ms, :target_system, :target_component, :coordinate_frame, :type_mask, :x, :y, :z, :vx, :vy, :vz, :afx, :afy, :afz, :yaw, :yaw_rate]
  @typedoc "Sets a desired vehicle position in a local north-east-down coordinate frame. Used by an external controller to command the vehicle (manual controller or other system)."
  @type t :: %APM.Message.SetPositionTargetLocalNed{time_boot_ms: MAVLink.Types.uint32_t, target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, coordinate_frame: APM.Types.mav_frame, type_mask: MapSet.t(APM.Types.position_target_typemask), x: Float32, y: Float32, z: Float32, vx: Float32, vy: Float32, vz: Float32, afx: Float32, afy: Float32, afz: Float32, yaw: Float32, yaw_rate: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 84, APM.msg_attributes(84), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_float(msg.vx)::binary-size(4),MAVLink.Utils.pack_float(msg.vy)::binary-size(4),MAVLink.Utils.pack_float(msg.vz)::binary-size(4),MAVLink.Utils.pack_float(msg.afx)::binary-size(4),MAVLink.Utils.pack_float(msg.afy)::binary-size(4),MAVLink.Utils.pack_float(msg.afz)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw_rate)::binary-size(4),APM.pack_bitmask(msg.type_mask, :position_target_typemask, &APM.encode/2)::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.coordinate_frame, :mav_frame)::integer-size(8)>>}
  end
end


defmodule APM.Message.PositionTargetLocalNed do
  @enforce_keys [:time_boot_ms, :coordinate_frame, :type_mask, :x, :y, :z, :vx, :vy, :vz, :afx, :afy, :afz, :yaw, :yaw_rate]
  defstruct [:time_boot_ms, :coordinate_frame, :type_mask, :x, :y, :z, :vx, :vy, :vz, :afx, :afy, :afz, :yaw, :yaw_rate]
  @typedoc "Reports the current commanded vehicle position, velocity, and acceleration as specified by the autopilot. This should match the commands sent in SET_POSITION_TARGET_LOCAL_NED if the vehicle is being controlled this way."
  @type t :: %APM.Message.PositionTargetLocalNed{time_boot_ms: MAVLink.Types.uint32_t, coordinate_frame: APM.Types.mav_frame, type_mask: MapSet.t(APM.Types.position_target_typemask), x: Float32, y: Float32, z: Float32, vx: Float32, vy: Float32, vz: Float32, afx: Float32, afy: Float32, afz: Float32, yaw: Float32, yaw_rate: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 85, APM.msg_attributes(85), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_float(msg.vx)::binary-size(4),MAVLink.Utils.pack_float(msg.vy)::binary-size(4),MAVLink.Utils.pack_float(msg.vz)::binary-size(4),MAVLink.Utils.pack_float(msg.afx)::binary-size(4),MAVLink.Utils.pack_float(msg.afy)::binary-size(4),MAVLink.Utils.pack_float(msg.afz)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw_rate)::binary-size(4),APM.pack_bitmask(msg.type_mask, :position_target_typemask, &APM.encode/2)::little-integer-size(16),APM.encode(msg.coordinate_frame, :mav_frame)::integer-size(8)>>}
  end
end


defmodule APM.Message.SetPositionTargetGlobalInt do
  @enforce_keys [:time_boot_ms, :target_system, :target_component, :coordinate_frame, :type_mask, :lat_int, :lon_int, :alt, :vx, :vy, :vz, :afx, :afy, :afz, :yaw, :yaw_rate]
  defstruct [:time_boot_ms, :target_system, :target_component, :coordinate_frame, :type_mask, :lat_int, :lon_int, :alt, :vx, :vy, :vz, :afx, :afy, :afz, :yaw, :yaw_rate]
  @typedoc "Sets a desired vehicle position, velocity, and/or acceleration in a global coordinate system (WGS84). Used by an external controller to command the vehicle (manual controller or other system)."
  @type t :: %APM.Message.SetPositionTargetGlobalInt{time_boot_ms: MAVLink.Types.uint32_t, target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, coordinate_frame: APM.Types.mav_frame, type_mask: MapSet.t(APM.Types.position_target_typemask), lat_int: MAVLink.Types.int32_t, lon_int: MAVLink.Types.int32_t, alt: Float32, vx: Float32, vy: Float32, vz: Float32, afx: Float32, afy: Float32, afz: Float32, yaw: Float32, yaw_rate: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 86, APM.msg_attributes(86), <<msg.time_boot_ms::little-integer-size(32),msg.lat_int::little-signed-integer-size(32),msg.lon_int::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.alt)::binary-size(4),MAVLink.Utils.pack_float(msg.vx)::binary-size(4),MAVLink.Utils.pack_float(msg.vy)::binary-size(4),MAVLink.Utils.pack_float(msg.vz)::binary-size(4),MAVLink.Utils.pack_float(msg.afx)::binary-size(4),MAVLink.Utils.pack_float(msg.afy)::binary-size(4),MAVLink.Utils.pack_float(msg.afz)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw_rate)::binary-size(4),APM.pack_bitmask(msg.type_mask, :position_target_typemask, &APM.encode/2)::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.coordinate_frame, :mav_frame)::integer-size(8)>>}
  end
end


defmodule APM.Message.PositionTargetGlobalInt do
  @enforce_keys [:time_boot_ms, :coordinate_frame, :type_mask, :lat_int, :lon_int, :alt, :vx, :vy, :vz, :afx, :afy, :afz, :yaw, :yaw_rate]
  defstruct [:time_boot_ms, :coordinate_frame, :type_mask, :lat_int, :lon_int, :alt, :vx, :vy, :vz, :afx, :afy, :afz, :yaw, :yaw_rate]
  @typedoc "Reports the current commanded vehicle position, velocity, and acceleration as specified by the autopilot. This should match the commands sent in SET_POSITION_TARGET_GLOBAL_INT if the vehicle is being controlled this way."
  @type t :: %APM.Message.PositionTargetGlobalInt{time_boot_ms: MAVLink.Types.uint32_t, coordinate_frame: APM.Types.mav_frame, type_mask: MapSet.t(APM.Types.position_target_typemask), lat_int: MAVLink.Types.int32_t, lon_int: MAVLink.Types.int32_t, alt: Float32, vx: Float32, vy: Float32, vz: Float32, afx: Float32, afy: Float32, afz: Float32, yaw: Float32, yaw_rate: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 87, APM.msg_attributes(87), <<msg.time_boot_ms::little-integer-size(32),msg.lat_int::little-signed-integer-size(32),msg.lon_int::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.alt)::binary-size(4),MAVLink.Utils.pack_float(msg.vx)::binary-size(4),MAVLink.Utils.pack_float(msg.vy)::binary-size(4),MAVLink.Utils.pack_float(msg.vz)::binary-size(4),MAVLink.Utils.pack_float(msg.afx)::binary-size(4),MAVLink.Utils.pack_float(msg.afy)::binary-size(4),MAVLink.Utils.pack_float(msg.afz)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw_rate)::binary-size(4),APM.pack_bitmask(msg.type_mask, :position_target_typemask, &APM.encode/2)::little-integer-size(16),APM.encode(msg.coordinate_frame, :mav_frame)::integer-size(8)>>}
  end
end


defmodule APM.Message.LocalPositionNedSystemGlobalOffset do
  @enforce_keys [:time_boot_ms, :x, :y, :z, :roll, :pitch, :yaw]
  defstruct [:time_boot_ms, :x, :y, :z, :roll, :pitch, :yaw]
  @typedoc "The offset in X, Y, Z and yaw between the LOCAL_POSITION_NED messages of MAV X and the global coordinate frame in NED coordinates. Coordinate frame is right-handed, Z-axis down (aeronautical frame, NED / north-east-down convention)"
  @type t :: %APM.Message.LocalPositionNedSystemGlobalOffset{time_boot_ms: MAVLink.Types.uint32_t, x: Float32, y: Float32, z: Float32, roll: Float32, pitch: Float32, yaw: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 89, APM.msg_attributes(89), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4)>>}
  end
end


defmodule APM.Message.HilState do
  @enforce_keys [:time_usec, :roll, :pitch, :yaw, :rollspeed, :pitchspeed, :yawspeed, :lat, :lon, :alt, :vx, :vy, :vz, :xacc, :yacc, :zacc]
  defstruct [:time_usec, :roll, :pitch, :yaw, :rollspeed, :pitchspeed, :yawspeed, :lat, :lon, :alt, :vx, :vy, :vz, :xacc, :yacc, :zacc]
  @typedoc "Sent from simulation to autopilot. This packet is useful for high throughput applications such as hardware in the loop simulations."
  @type t :: %APM.Message.HilState{time_usec: MAVLink.Types.uint64_t, roll: Float32, pitch: Float32, yaw: Float32, rollspeed: Float32, pitchspeed: Float32, yawspeed: Float32, lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, alt: MAVLink.Types.int32_t, vx: MAVLink.Types.int16_t, vy: MAVLink.Types.int16_t, vz: MAVLink.Types.int16_t, xacc: MAVLink.Types.int16_t, yacc: MAVLink.Types.int16_t, zacc: MAVLink.Types.int16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 90, APM.msg_attributes(90), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_float(msg.rollspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.pitchspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.yawspeed)::binary-size(4),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.alt::little-signed-integer-size(32),msg.vx::little-signed-integer-size(16),msg.vy::little-signed-integer-size(16),msg.vz::little-signed-integer-size(16),msg.xacc::little-signed-integer-size(16),msg.yacc::little-signed-integer-size(16),msg.zacc::little-signed-integer-size(16)>>}
  end
end


defmodule APM.Message.HilControls do
  @enforce_keys [:time_usec, :roll_ailerons, :pitch_elevator, :yaw_rudder, :throttle, :aux1, :aux2, :aux3, :aux4, :mode, :nav_mode]
  defstruct [:time_usec, :roll_ailerons, :pitch_elevator, :yaw_rudder, :throttle, :aux1, :aux2, :aux3, :aux4, :mode, :nav_mode]
  @typedoc "Sent from autopilot to simulation. Hardware in the loop control outputs"
  @type t :: %APM.Message.HilControls{time_usec: MAVLink.Types.uint64_t, roll_ailerons: Float32, pitch_elevator: Float32, yaw_rudder: Float32, throttle: Float32, aux1: Float32, aux2: Float32, aux3: Float32, aux4: Float32, mode: APM.Types.mav_mode, nav_mode: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 91, APM.msg_attributes(91), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.roll_ailerons)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch_elevator)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw_rudder)::binary-size(4),MAVLink.Utils.pack_float(msg.throttle)::binary-size(4),MAVLink.Utils.pack_float(msg.aux1)::binary-size(4),MAVLink.Utils.pack_float(msg.aux2)::binary-size(4),MAVLink.Utils.pack_float(msg.aux3)::binary-size(4),MAVLink.Utils.pack_float(msg.aux4)::binary-size(4),APM.encode(msg.mode, :mav_mode)::integer-size(8),msg.nav_mode::integer-size(8)>>}
  end
end


defmodule APM.Message.HilRcInputsRaw do
  @enforce_keys [:time_usec, :chan1_raw, :chan2_raw, :chan3_raw, :chan4_raw, :chan5_raw, :chan6_raw, :chan7_raw, :chan8_raw, :chan9_raw, :chan10_raw, :chan11_raw, :chan12_raw, :rssi]
  defstruct [:time_usec, :chan1_raw, :chan2_raw, :chan3_raw, :chan4_raw, :chan5_raw, :chan6_raw, :chan7_raw, :chan8_raw, :chan9_raw, :chan10_raw, :chan11_raw, :chan12_raw, :rssi]
  @typedoc "Sent from simulation to autopilot. The RAW values of the RC channels received. The standard PPM modulation is as follows: 1000 microseconds: 0%, 2000 microseconds: 100%. Individual receivers/transmitters might violate this specification."
  @type t :: %APM.Message.HilRcInputsRaw{time_usec: MAVLink.Types.uint64_t, chan1_raw: MAVLink.Types.uint16_t, chan2_raw: MAVLink.Types.uint16_t, chan3_raw: MAVLink.Types.uint16_t, chan4_raw: MAVLink.Types.uint16_t, chan5_raw: MAVLink.Types.uint16_t, chan6_raw: MAVLink.Types.uint16_t, chan7_raw: MAVLink.Types.uint16_t, chan8_raw: MAVLink.Types.uint16_t, chan9_raw: MAVLink.Types.uint16_t, chan10_raw: MAVLink.Types.uint16_t, chan11_raw: MAVLink.Types.uint16_t, chan12_raw: MAVLink.Types.uint16_t, rssi: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 92, APM.msg_attributes(92), <<msg.time_usec::little-integer-size(64),msg.chan1_raw::little-integer-size(16),msg.chan2_raw::little-integer-size(16),msg.chan3_raw::little-integer-size(16),msg.chan4_raw::little-integer-size(16),msg.chan5_raw::little-integer-size(16),msg.chan6_raw::little-integer-size(16),msg.chan7_raw::little-integer-size(16),msg.chan8_raw::little-integer-size(16),msg.chan9_raw::little-integer-size(16),msg.chan10_raw::little-integer-size(16),msg.chan11_raw::little-integer-size(16),msg.chan12_raw::little-integer-size(16),msg.rssi::integer-size(8)>>}
  end
end


defmodule APM.Message.HilActuatorControls do
  @enforce_keys [:time_usec, :controls, :mode, :flags]
  defstruct [:time_usec, :controls, :mode, :flags]
  @typedoc "Sent from autopilot to simulation. Hardware in the loop control outputs (replacement for HIL_CONTROLS)"
  @type t :: %APM.Message.HilActuatorControls{time_usec: MAVLink.Types.uint64_t, controls: [ Float32 ], mode: MapSet.t(APM.Types.mav_mode_flag), flags: MAVLink.Types.uint64_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 93, APM.msg_attributes(93), <<msg.time_usec::little-integer-size(64),msg.flags::little-integer-size(64),MAVLink.Utils.pack_array(msg.controls, 16, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(64),APM.pack_bitmask(msg.mode, :mav_mode_flag, &APM.encode/2)::integer-size(8)>>}
  end
end


defmodule APM.Message.OpticalFlow do
  @enforce_keys [:time_usec, :sensor_id, :flow_x, :flow_y, :flow_comp_m_x, :flow_comp_m_y, :quality, :ground_distance]
  defstruct [:time_usec, :sensor_id, :flow_x, :flow_y, :flow_comp_m_x, :flow_comp_m_y, :quality, :ground_distance, :flow_rate_x, :flow_rate_y]
  @typedoc "Optical flow from a flow sensor (e.g. optical mouse sensor)"
  @type t :: %APM.Message.OpticalFlow{time_usec: MAVLink.Types.uint64_t, sensor_id: MAVLink.Types.uint8_t, flow_x: MAVLink.Types.int16_t, flow_y: MAVLink.Types.int16_t, flow_comp_m_x: Float32, flow_comp_m_y: Float32, quality: MAVLink.Types.uint8_t, ground_distance: Float32, flow_rate_x: Float32, flow_rate_y: Float32}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 100, APM.msg_attributes(100), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.flow_comp_m_x)::binary-size(4),MAVLink.Utils.pack_float(msg.flow_comp_m_y)::binary-size(4),MAVLink.Utils.pack_float(msg.ground_distance)::binary-size(4),msg.flow_x::little-signed-integer-size(16),msg.flow_y::little-signed-integer-size(16),msg.sensor_id::integer-size(8),msg.quality::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 100, APM.msg_attributes(100), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.flow_comp_m_x)::binary-size(4),MAVLink.Utils.pack_float(msg.flow_comp_m_y)::binary-size(4),MAVLink.Utils.pack_float(msg.ground_distance)::binary-size(4),msg.flow_x::little-signed-integer-size(16),msg.flow_y::little-signed-integer-size(16),msg.sensor_id::integer-size(8),msg.quality::integer-size(8),MAVLink.Utils.pack_float(msg.flow_rate_x)::binary-size(4),MAVLink.Utils.pack_float(msg.flow_rate_y)::binary-size(4)>>}
  end
end


defmodule APM.Message.GlobalVisionPositionEstimate do
  @enforce_keys [:usec, :x, :y, :z, :roll, :pitch, :yaw]
  defstruct [:usec, :x, :y, :z, :roll, :pitch, :yaw, :covariance, :reset_counter]
  @typedoc "Global position/attitude estimate from a vision source."
  @type t :: %APM.Message.GlobalVisionPositionEstimate{usec: MAVLink.Types.uint64_t, x: Float32, y: Float32, z: Float32, roll: Float32, pitch: Float32, yaw: Float32, covariance: [ Float32 ], reset_counter: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 101, APM.msg_attributes(101), <<msg.usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4)>>}
    def pack(msg, 2), do: {:ok, 101, APM.msg_attributes(101), <<msg.usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_array(msg.covariance, 21, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(84),msg.reset_counter::integer-size(8)>>}
  end
end


defmodule APM.Message.VisionPositionEstimate do
  @enforce_keys [:usec, :x, :y, :z, :roll, :pitch, :yaw]
  defstruct [:usec, :x, :y, :z, :roll, :pitch, :yaw, :covariance, :reset_counter]
  @typedoc "Local position/attitude estimate from a vision source."
  @type t :: %APM.Message.VisionPositionEstimate{usec: MAVLink.Types.uint64_t, x: Float32, y: Float32, z: Float32, roll: Float32, pitch: Float32, yaw: Float32, covariance: [ Float32 ], reset_counter: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 102, APM.msg_attributes(102), <<msg.usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4)>>}
    def pack(msg, 2), do: {:ok, 102, APM.msg_attributes(102), <<msg.usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_array(msg.covariance, 21, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(84),msg.reset_counter::integer-size(8)>>}
  end
end


defmodule APM.Message.VisionSpeedEstimate do
  @enforce_keys [:usec, :x, :y, :z]
  defstruct [:usec, :x, :y, :z, :covariance, :reset_counter]
  @typedoc "Speed estimate from a vision source."
  @type t :: %APM.Message.VisionSpeedEstimate{usec: MAVLink.Types.uint64_t, x: Float32, y: Float32, z: Float32, covariance: [ Float32 ], reset_counter: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 103, APM.msg_attributes(103), <<msg.usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4)>>}
    def pack(msg, 2), do: {:ok, 103, APM.msg_attributes(103), <<msg.usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_array(msg.covariance, 9, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(36),msg.reset_counter::integer-size(8)>>}
  end
end


defmodule APM.Message.ViconPositionEstimate do
  @enforce_keys [:usec, :x, :y, :z, :roll, :pitch, :yaw]
  defstruct [:usec, :x, :y, :z, :roll, :pitch, :yaw, :covariance]
  @typedoc "Global position estimate from a Vicon motion system source."
  @type t :: %APM.Message.ViconPositionEstimate{usec: MAVLink.Types.uint64_t, x: Float32, y: Float32, z: Float32, roll: Float32, pitch: Float32, yaw: Float32, covariance: [ Float32 ]}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 104, APM.msg_attributes(104), <<msg.usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4)>>}
    def pack(msg, 2), do: {:ok, 104, APM.msg_attributes(104), <<msg.usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_array(msg.covariance, 21, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(84)>>}
  end
end


defmodule APM.Message.HighresImu do
  @enforce_keys [:time_usec, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :xmag, :ymag, :zmag, :abs_pressure, :diff_pressure, :pressure_alt, :temperature, :fields_updated]
  defstruct [:time_usec, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :xmag, :ymag, :zmag, :abs_pressure, :diff_pressure, :pressure_alt, :temperature, :fields_updated, :id]
  @typedoc "The IMU readings in SI units in NED body frame"
  @type t :: %APM.Message.HighresImu{time_usec: MAVLink.Types.uint64_t, xacc: Float32, yacc: Float32, zacc: Float32, xgyro: Float32, ygyro: Float32, zgyro: Float32, xmag: Float32, ymag: Float32, zmag: Float32, abs_pressure: Float32, diff_pressure: Float32, pressure_alt: Float32, temperature: Float32, fields_updated: MAVLink.Types.uint16_t, id: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 105, APM.msg_attributes(105), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.xacc)::binary-size(4),MAVLink.Utils.pack_float(msg.yacc)::binary-size(4),MAVLink.Utils.pack_float(msg.zacc)::binary-size(4),MAVLink.Utils.pack_float(msg.xgyro)::binary-size(4),MAVLink.Utils.pack_float(msg.ygyro)::binary-size(4),MAVLink.Utils.pack_float(msg.zgyro)::binary-size(4),MAVLink.Utils.pack_float(msg.xmag)::binary-size(4),MAVLink.Utils.pack_float(msg.ymag)::binary-size(4),MAVLink.Utils.pack_float(msg.zmag)::binary-size(4),MAVLink.Utils.pack_float(msg.abs_pressure)::binary-size(4),MAVLink.Utils.pack_float(msg.diff_pressure)::binary-size(4),MAVLink.Utils.pack_float(msg.pressure_alt)::binary-size(4),MAVLink.Utils.pack_float(msg.temperature)::binary-size(4),msg.fields_updated::little-integer-size(16)>>}
    def pack(msg, 2), do: {:ok, 105, APM.msg_attributes(105), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.xacc)::binary-size(4),MAVLink.Utils.pack_float(msg.yacc)::binary-size(4),MAVLink.Utils.pack_float(msg.zacc)::binary-size(4),MAVLink.Utils.pack_float(msg.xgyro)::binary-size(4),MAVLink.Utils.pack_float(msg.ygyro)::binary-size(4),MAVLink.Utils.pack_float(msg.zgyro)::binary-size(4),MAVLink.Utils.pack_float(msg.xmag)::binary-size(4),MAVLink.Utils.pack_float(msg.ymag)::binary-size(4),MAVLink.Utils.pack_float(msg.zmag)::binary-size(4),MAVLink.Utils.pack_float(msg.abs_pressure)::binary-size(4),MAVLink.Utils.pack_float(msg.diff_pressure)::binary-size(4),MAVLink.Utils.pack_float(msg.pressure_alt)::binary-size(4),MAVLink.Utils.pack_float(msg.temperature)::binary-size(4),msg.fields_updated::little-integer-size(16),msg.id::integer-size(8)>>}
  end
end


defmodule APM.Message.OpticalFlowRad do
  @enforce_keys [:time_usec, :sensor_id, :integration_time_us, :integrated_x, :integrated_y, :integrated_xgyro, :integrated_ygyro, :integrated_zgyro, :temperature, :quality, :time_delta_distance_us, :distance]
  defstruct [:time_usec, :sensor_id, :integration_time_us, :integrated_x, :integrated_y, :integrated_xgyro, :integrated_ygyro, :integrated_zgyro, :temperature, :quality, :time_delta_distance_us, :distance]
  @typedoc "Optical flow from an angular rate flow sensor (e.g. PX4FLOW or mouse sensor)"
  @type t :: %APM.Message.OpticalFlowRad{time_usec: MAVLink.Types.uint64_t, sensor_id: MAVLink.Types.uint8_t, integration_time_us: MAVLink.Types.uint32_t, integrated_x: Float32, integrated_y: Float32, integrated_xgyro: Float32, integrated_ygyro: Float32, integrated_zgyro: Float32, temperature: MAVLink.Types.int16_t, quality: MAVLink.Types.uint8_t, time_delta_distance_us: MAVLink.Types.uint32_t, distance: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 106, APM.msg_attributes(106), <<msg.time_usec::little-integer-size(64),msg.integration_time_us::little-integer-size(32),MAVLink.Utils.pack_float(msg.integrated_x)::binary-size(4),MAVLink.Utils.pack_float(msg.integrated_y)::binary-size(4),MAVLink.Utils.pack_float(msg.integrated_xgyro)::binary-size(4),MAVLink.Utils.pack_float(msg.integrated_ygyro)::binary-size(4),MAVLink.Utils.pack_float(msg.integrated_zgyro)::binary-size(4),msg.time_delta_distance_us::little-integer-size(32),MAVLink.Utils.pack_float(msg.distance)::binary-size(4),msg.temperature::little-signed-integer-size(16),msg.sensor_id::integer-size(8),msg.quality::integer-size(8)>>}
  end
end


defmodule APM.Message.HilSensor do
  @enforce_keys [:time_usec, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :xmag, :ymag, :zmag, :abs_pressure, :diff_pressure, :pressure_alt, :temperature, :fields_updated]
  defstruct [:time_usec, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :xmag, :ymag, :zmag, :abs_pressure, :diff_pressure, :pressure_alt, :temperature, :fields_updated, :id]
  @typedoc "The IMU readings in SI units in NED body frame"
  @type t :: %APM.Message.HilSensor{time_usec: MAVLink.Types.uint64_t, xacc: Float32, yacc: Float32, zacc: Float32, xgyro: Float32, ygyro: Float32, zgyro: Float32, xmag: Float32, ymag: Float32, zmag: Float32, abs_pressure: Float32, diff_pressure: Float32, pressure_alt: Float32, temperature: Float32, fields_updated: MAVLink.Types.uint32_t, id: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 107, APM.msg_attributes(107), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.xacc)::binary-size(4),MAVLink.Utils.pack_float(msg.yacc)::binary-size(4),MAVLink.Utils.pack_float(msg.zacc)::binary-size(4),MAVLink.Utils.pack_float(msg.xgyro)::binary-size(4),MAVLink.Utils.pack_float(msg.ygyro)::binary-size(4),MAVLink.Utils.pack_float(msg.zgyro)::binary-size(4),MAVLink.Utils.pack_float(msg.xmag)::binary-size(4),MAVLink.Utils.pack_float(msg.ymag)::binary-size(4),MAVLink.Utils.pack_float(msg.zmag)::binary-size(4),MAVLink.Utils.pack_float(msg.abs_pressure)::binary-size(4),MAVLink.Utils.pack_float(msg.diff_pressure)::binary-size(4),MAVLink.Utils.pack_float(msg.pressure_alt)::binary-size(4),MAVLink.Utils.pack_float(msg.temperature)::binary-size(4),msg.fields_updated::little-integer-size(32)>>}
    def pack(msg, 2), do: {:ok, 107, APM.msg_attributes(107), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.xacc)::binary-size(4),MAVLink.Utils.pack_float(msg.yacc)::binary-size(4),MAVLink.Utils.pack_float(msg.zacc)::binary-size(4),MAVLink.Utils.pack_float(msg.xgyro)::binary-size(4),MAVLink.Utils.pack_float(msg.ygyro)::binary-size(4),MAVLink.Utils.pack_float(msg.zgyro)::binary-size(4),MAVLink.Utils.pack_float(msg.xmag)::binary-size(4),MAVLink.Utils.pack_float(msg.ymag)::binary-size(4),MAVLink.Utils.pack_float(msg.zmag)::binary-size(4),MAVLink.Utils.pack_float(msg.abs_pressure)::binary-size(4),MAVLink.Utils.pack_float(msg.diff_pressure)::binary-size(4),MAVLink.Utils.pack_float(msg.pressure_alt)::binary-size(4),MAVLink.Utils.pack_float(msg.temperature)::binary-size(4),msg.fields_updated::little-integer-size(32),msg.id::integer-size(8)>>}
  end
end


defmodule APM.Message.SimState do
  @enforce_keys [:q1, :q2, :q3, :q4, :roll, :pitch, :yaw, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :lat, :lon, :alt, :std_dev_horz, :std_dev_vert, :vn, :ve, :vd]
  defstruct [:q1, :q2, :q3, :q4, :roll, :pitch, :yaw, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :lat, :lon, :alt, :std_dev_horz, :std_dev_vert, :vn, :ve, :vd]
  @typedoc "Status of simulation environment, if used"
  @type t :: %APM.Message.SimState{q1: Float32, q2: Float32, q3: Float32, q4: Float32, roll: Float32, pitch: Float32, yaw: Float32, xacc: Float32, yacc: Float32, zacc: Float32, xgyro: Float32, ygyro: Float32, zgyro: Float32, lat: Float32, lon: Float32, alt: Float32, std_dev_horz: Float32, std_dev_vert: Float32, vn: Float32, ve: Float32, vd: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 108, APM.msg_attributes(108), <<MAVLink.Utils.pack_float(msg.q1)::binary-size(4),MAVLink.Utils.pack_float(msg.q2)::binary-size(4),MAVLink.Utils.pack_float(msg.q3)::binary-size(4),MAVLink.Utils.pack_float(msg.q4)::binary-size(4),MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_float(msg.xacc)::binary-size(4),MAVLink.Utils.pack_float(msg.yacc)::binary-size(4),MAVLink.Utils.pack_float(msg.zacc)::binary-size(4),MAVLink.Utils.pack_float(msg.xgyro)::binary-size(4),MAVLink.Utils.pack_float(msg.ygyro)::binary-size(4),MAVLink.Utils.pack_float(msg.zgyro)::binary-size(4),MAVLink.Utils.pack_float(msg.lat)::binary-size(4),MAVLink.Utils.pack_float(msg.lon)::binary-size(4),MAVLink.Utils.pack_float(msg.alt)::binary-size(4),MAVLink.Utils.pack_float(msg.std_dev_horz)::binary-size(4),MAVLink.Utils.pack_float(msg.std_dev_vert)::binary-size(4),MAVLink.Utils.pack_float(msg.vn)::binary-size(4),MAVLink.Utils.pack_float(msg.ve)::binary-size(4),MAVLink.Utils.pack_float(msg.vd)::binary-size(4)>>}
  end
end


defmodule APM.Message.RadioStatus do
  @enforce_keys [:rssi, :remrssi, :txbuf, :noise, :remnoise, :rxerrors, :fixed]
  defstruct [:rssi, :remrssi, :txbuf, :noise, :remnoise, :rxerrors, :fixed]
  @typedoc "Status generated by radio and injected into MAVLink stream."
  @type t :: %APM.Message.RadioStatus{rssi: MAVLink.Types.uint8_t, remrssi: MAVLink.Types.uint8_t, txbuf: MAVLink.Types.uint8_t, noise: MAVLink.Types.uint8_t, remnoise: MAVLink.Types.uint8_t, rxerrors: MAVLink.Types.uint16_t, fixed: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 109, APM.msg_attributes(109), <<msg.rxerrors::little-integer-size(16),msg.fixed::little-integer-size(16),msg.rssi::integer-size(8),msg.remrssi::integer-size(8),msg.txbuf::integer-size(8),msg.noise::integer-size(8),msg.remnoise::integer-size(8)>>}
  end
end


defmodule APM.Message.FileTransferProtocol do
  @enforce_keys [:target_network, :target_system, :target_component, :payload]
  defstruct [:target_network, :target_system, :target_component, :payload]
  @typedoc "File transfer message"
  @type t :: %APM.Message.FileTransferProtocol{target_network: MAVLink.Types.uint8_t, target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, payload: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 110, APM.msg_attributes(110), <<msg.target_network::integer-size(8),msg.target_system::integer-size(8),msg.target_component::integer-size(8),MAVLink.Utils.pack_array(msg.payload, 251, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(251)>>}
  end
end


defmodule APM.Message.Timesync do
  @enforce_keys [:tc1, :ts1]
  defstruct [:tc1, :ts1]
  @typedoc "Time synchronization message."
  @type t :: %APM.Message.Timesync{tc1: MAVLink.Types.int64_t, ts1: MAVLink.Types.int64_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 111, APM.msg_attributes(111), <<msg.tc1::little-signed-integer-size(64),msg.ts1::little-signed-integer-size(64)>>}
  end
end


defmodule APM.Message.CameraTrigger do
  @enforce_keys [:time_usec, :seq]
  defstruct [:time_usec, :seq]
  @typedoc "Camera-IMU triggering and synchronisation message."
  @type t :: %APM.Message.CameraTrigger{time_usec: MAVLink.Types.uint64_t, seq: MAVLink.Types.uint32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 112, APM.msg_attributes(112), <<msg.time_usec::little-integer-size(64),msg.seq::little-integer-size(32)>>}
  end
end


defmodule APM.Message.HilGps do
  @enforce_keys [:time_usec, :fix_type, :lat, :lon, :alt, :eph, :epv, :vel, :vn, :ve, :vd, :cog, :satellites_visible]
  defstruct [:time_usec, :fix_type, :lat, :lon, :alt, :eph, :epv, :vel, :vn, :ve, :vd, :cog, :satellites_visible, :id, :yaw]
  @typedoc "The global position, as returned by the Global Positioning System (GPS). This is NOT the global position estimate of the sytem, but rather a RAW sensor value. See message GLOBAL_POSITION for the global position estimate."
  @type t :: %APM.Message.HilGps{time_usec: MAVLink.Types.uint64_t, fix_type: MAVLink.Types.uint8_t, lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, alt: MAVLink.Types.int32_t, eph: MAVLink.Types.uint16_t, epv: MAVLink.Types.uint16_t, vel: MAVLink.Types.uint16_t, vn: MAVLink.Types.int16_t, ve: MAVLink.Types.int16_t, vd: MAVLink.Types.int16_t, cog: MAVLink.Types.uint16_t, satellites_visible: MAVLink.Types.uint8_t, id: MAVLink.Types.uint8_t, yaw: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 113, APM.msg_attributes(113), <<msg.time_usec::little-integer-size(64),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.alt::little-signed-integer-size(32),msg.eph::little-integer-size(16),msg.epv::little-integer-size(16),msg.vel::little-integer-size(16),msg.vn::little-signed-integer-size(16),msg.ve::little-signed-integer-size(16),msg.vd::little-signed-integer-size(16),msg.cog::little-integer-size(16),msg.fix_type::integer-size(8),msg.satellites_visible::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 113, APM.msg_attributes(113), <<msg.time_usec::little-integer-size(64),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.alt::little-signed-integer-size(32),msg.eph::little-integer-size(16),msg.epv::little-integer-size(16),msg.vel::little-integer-size(16),msg.vn::little-signed-integer-size(16),msg.ve::little-signed-integer-size(16),msg.vd::little-signed-integer-size(16),msg.cog::little-integer-size(16),msg.fix_type::integer-size(8),msg.satellites_visible::integer-size(8),msg.id::integer-size(8),msg.yaw::little-integer-size(16)>>}
  end
end


defmodule APM.Message.HilOpticalFlow do
  @enforce_keys [:time_usec, :sensor_id, :integration_time_us, :integrated_x, :integrated_y, :integrated_xgyro, :integrated_ygyro, :integrated_zgyro, :temperature, :quality, :time_delta_distance_us, :distance]
  defstruct [:time_usec, :sensor_id, :integration_time_us, :integrated_x, :integrated_y, :integrated_xgyro, :integrated_ygyro, :integrated_zgyro, :temperature, :quality, :time_delta_distance_us, :distance]
  @typedoc "Simulated optical flow from a flow sensor (e.g. PX4FLOW or optical mouse sensor)"
  @type t :: %APM.Message.HilOpticalFlow{time_usec: MAVLink.Types.uint64_t, sensor_id: MAVLink.Types.uint8_t, integration_time_us: MAVLink.Types.uint32_t, integrated_x: Float32, integrated_y: Float32, integrated_xgyro: Float32, integrated_ygyro: Float32, integrated_zgyro: Float32, temperature: MAVLink.Types.int16_t, quality: MAVLink.Types.uint8_t, time_delta_distance_us: MAVLink.Types.uint32_t, distance: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 114, APM.msg_attributes(114), <<msg.time_usec::little-integer-size(64),msg.integration_time_us::little-integer-size(32),MAVLink.Utils.pack_float(msg.integrated_x)::binary-size(4),MAVLink.Utils.pack_float(msg.integrated_y)::binary-size(4),MAVLink.Utils.pack_float(msg.integrated_xgyro)::binary-size(4),MAVLink.Utils.pack_float(msg.integrated_ygyro)::binary-size(4),MAVLink.Utils.pack_float(msg.integrated_zgyro)::binary-size(4),msg.time_delta_distance_us::little-integer-size(32),MAVLink.Utils.pack_float(msg.distance)::binary-size(4),msg.temperature::little-signed-integer-size(16),msg.sensor_id::integer-size(8),msg.quality::integer-size(8)>>}
  end
end


defmodule APM.Message.HilStateQuaternion do
  @enforce_keys [:time_usec, :attitude_quaternion, :rollspeed, :pitchspeed, :yawspeed, :lat, :lon, :alt, :vx, :vy, :vz, :ind_airspeed, :true_airspeed, :xacc, :yacc, :zacc]
  defstruct [:time_usec, :attitude_quaternion, :rollspeed, :pitchspeed, :yawspeed, :lat, :lon, :alt, :vx, :vy, :vz, :ind_airspeed, :true_airspeed, :xacc, :yacc, :zacc]
  @typedoc "Sent from simulation to autopilot, avoids in contrast to HIL_STATE singularities. This packet is useful for high throughput applications such as hardware in the loop simulations."
  @type t :: %APM.Message.HilStateQuaternion{time_usec: MAVLink.Types.uint64_t, attitude_quaternion: [ Float32 ], rollspeed: Float32, pitchspeed: Float32, yawspeed: Float32, lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, alt: MAVLink.Types.int32_t, vx: MAVLink.Types.int16_t, vy: MAVLink.Types.int16_t, vz: MAVLink.Types.int16_t, ind_airspeed: MAVLink.Types.uint16_t, true_airspeed: MAVLink.Types.uint16_t, xacc: MAVLink.Types.int16_t, yacc: MAVLink.Types.int16_t, zacc: MAVLink.Types.int16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 115, APM.msg_attributes(115), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_array(msg.attitude_quaternion, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),MAVLink.Utils.pack_float(msg.rollspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.pitchspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.yawspeed)::binary-size(4),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.alt::little-signed-integer-size(32),msg.vx::little-signed-integer-size(16),msg.vy::little-signed-integer-size(16),msg.vz::little-signed-integer-size(16),msg.ind_airspeed::little-integer-size(16),msg.true_airspeed::little-integer-size(16),msg.xacc::little-signed-integer-size(16),msg.yacc::little-signed-integer-size(16),msg.zacc::little-signed-integer-size(16)>>}
  end
end


defmodule APM.Message.ScaledImu2 do
  @enforce_keys [:time_boot_ms, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :xmag, :ymag, :zmag]
  defstruct [:time_boot_ms, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :xmag, :ymag, :zmag, :temperature]
  @typedoc "The RAW IMU readings for secondary 9DOF sensor setup. This message should contain the scaled values to the described units"
  @type t :: %APM.Message.ScaledImu2{time_boot_ms: MAVLink.Types.uint32_t, xacc: MAVLink.Types.int16_t, yacc: MAVLink.Types.int16_t, zacc: MAVLink.Types.int16_t, xgyro: MAVLink.Types.int16_t, ygyro: MAVLink.Types.int16_t, zgyro: MAVLink.Types.int16_t, xmag: MAVLink.Types.int16_t, ymag: MAVLink.Types.int16_t, zmag: MAVLink.Types.int16_t, temperature: MAVLink.Types.int16_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 116, APM.msg_attributes(116), <<msg.time_boot_ms::little-integer-size(32),msg.xacc::little-signed-integer-size(16),msg.yacc::little-signed-integer-size(16),msg.zacc::little-signed-integer-size(16),msg.xgyro::little-signed-integer-size(16),msg.ygyro::little-signed-integer-size(16),msg.zgyro::little-signed-integer-size(16),msg.xmag::little-signed-integer-size(16),msg.ymag::little-signed-integer-size(16),msg.zmag::little-signed-integer-size(16)>>}
    def pack(msg, 2), do: {:ok, 116, APM.msg_attributes(116), <<msg.time_boot_ms::little-integer-size(32),msg.xacc::little-signed-integer-size(16),msg.yacc::little-signed-integer-size(16),msg.zacc::little-signed-integer-size(16),msg.xgyro::little-signed-integer-size(16),msg.ygyro::little-signed-integer-size(16),msg.zgyro::little-signed-integer-size(16),msg.xmag::little-signed-integer-size(16),msg.ymag::little-signed-integer-size(16),msg.zmag::little-signed-integer-size(16),msg.temperature::little-signed-integer-size(16)>>}
  end
end


defmodule APM.Message.LogRequestList do
  @enforce_keys [:target_system, :target_component, :start, :end]
  defstruct [:target_system, :target_component, :start, :end]
  @typedoc "Request a list of available logs. On some systems calling this may stop on-board logging until LOG_REQUEST_END is called. If there are no log files available this request shall be answered with one LOG_ENTRY message with id = 0 and num_logs = 0."
  @type t :: %APM.Message.LogRequestList{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, start: MAVLink.Types.uint16_t, end: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 117, APM.msg_attributes(117), <<msg.start::little-integer-size(16),msg.end::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
  end
end


defmodule APM.Message.LogEntry do
  @enforce_keys [:id, :num_logs, :last_log_num, :time_utc, :size]
  defstruct [:id, :num_logs, :last_log_num, :time_utc, :size]
  @typedoc "Reply to LOG_REQUEST_LIST"
  @type t :: %APM.Message.LogEntry{id: MAVLink.Types.uint16_t, num_logs: MAVLink.Types.uint16_t, last_log_num: MAVLink.Types.uint16_t, time_utc: MAVLink.Types.uint32_t, size: MAVLink.Types.uint32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 118, APM.msg_attributes(118), <<msg.time_utc::little-integer-size(32),msg.size::little-integer-size(32),msg.id::little-integer-size(16),msg.num_logs::little-integer-size(16),msg.last_log_num::little-integer-size(16)>>}
  end
end


defmodule APM.Message.LogRequestData do
  @enforce_keys [:target_system, :target_component, :id, :ofs, :count]
  defstruct [:target_system, :target_component, :id, :ofs, :count]
  @typedoc "Request a chunk of a log"
  @type t :: %APM.Message.LogRequestData{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, id: MAVLink.Types.uint16_t, ofs: MAVLink.Types.uint32_t, count: MAVLink.Types.uint32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 119, APM.msg_attributes(119), <<msg.ofs::little-integer-size(32),msg.count::little-integer-size(32),msg.id::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
  end
end


defmodule APM.Message.LogData do
  @enforce_keys [:id, :ofs, :count, :data]
  defstruct [:id, :ofs, :count, :data]
  @typedoc "Reply to LOG_REQUEST_DATA"
  @type t :: %APM.Message.LogData{id: MAVLink.Types.uint16_t, ofs: MAVLink.Types.uint32_t, count: MAVLink.Types.uint8_t, data: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 120, APM.msg_attributes(120), <<msg.ofs::little-integer-size(32),msg.id::little-integer-size(16),msg.count::integer-size(8),MAVLink.Utils.pack_array(msg.data, 90, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(90)>>}
  end
end


defmodule APM.Message.LogErase do
  @enforce_keys [:target_system, :target_component]
  defstruct [:target_system, :target_component]
  @typedoc "Erase all logs"
  @type t :: %APM.Message.LogErase{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 121, APM.msg_attributes(121), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
  end
end


defmodule APM.Message.LogRequestEnd do
  @enforce_keys [:target_system, :target_component]
  defstruct [:target_system, :target_component]
  @typedoc "Stop log transfer and resume normal logging"
  @type t :: %APM.Message.LogRequestEnd{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 122, APM.msg_attributes(122), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
  end
end


defmodule APM.Message.GpsInjectData do
  @enforce_keys [:target_system, :target_component, :len, :data]
  defstruct [:target_system, :target_component, :len, :data]
  @typedoc "Data for injecting into the onboard GPS (used for DGPS)"
  @type t :: %APM.Message.GpsInjectData{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, len: MAVLink.Types.uint8_t, data: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 123, APM.msg_attributes(123), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.len::integer-size(8),MAVLink.Utils.pack_array(msg.data, 110, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(110)>>}
  end
end


defmodule APM.Message.Gps2Raw do
  @enforce_keys [:time_usec, :fix_type, :lat, :lon, :alt, :eph, :epv, :vel, :cog, :satellites_visible, :dgps_numch, :dgps_age]
  defstruct [:time_usec, :fix_type, :lat, :lon, :alt, :eph, :epv, :vel, :cog, :satellites_visible, :dgps_numch, :dgps_age, :yaw, :alt_ellipsoid, :h_acc, :v_acc, :vel_acc, :hdg_acc]
  @typedoc "Second GPS data."
  @type t :: %APM.Message.Gps2Raw{time_usec: MAVLink.Types.uint64_t, fix_type: APM.Types.gps_fix_type, lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, alt: MAVLink.Types.int32_t, eph: MAVLink.Types.uint16_t, epv: MAVLink.Types.uint16_t, vel: MAVLink.Types.uint16_t, cog: MAVLink.Types.uint16_t, satellites_visible: MAVLink.Types.uint8_t, dgps_numch: MAVLink.Types.uint8_t, dgps_age: MAVLink.Types.uint32_t, yaw: MAVLink.Types.uint16_t, alt_ellipsoid: MAVLink.Types.int32_t, h_acc: MAVLink.Types.uint32_t, v_acc: MAVLink.Types.uint32_t, vel_acc: MAVLink.Types.uint32_t, hdg_acc: MAVLink.Types.uint32_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 124, APM.msg_attributes(124), <<msg.time_usec::little-integer-size(64),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.alt::little-signed-integer-size(32),msg.dgps_age::little-integer-size(32),msg.eph::little-integer-size(16),msg.epv::little-integer-size(16),msg.vel::little-integer-size(16),msg.cog::little-integer-size(16),APM.encode(msg.fix_type, :gps_fix_type)::integer-size(8),msg.satellites_visible::integer-size(8),msg.dgps_numch::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 124, APM.msg_attributes(124), <<msg.time_usec::little-integer-size(64),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.alt::little-signed-integer-size(32),msg.dgps_age::little-integer-size(32),msg.eph::little-integer-size(16),msg.epv::little-integer-size(16),msg.vel::little-integer-size(16),msg.cog::little-integer-size(16),APM.encode(msg.fix_type, :gps_fix_type)::integer-size(8),msg.satellites_visible::integer-size(8),msg.dgps_numch::integer-size(8),msg.yaw::little-integer-size(16),msg.alt_ellipsoid::little-signed-integer-size(32),msg.h_acc::little-integer-size(32),msg.v_acc::little-integer-size(32),msg.vel_acc::little-integer-size(32),msg.hdg_acc::little-integer-size(32)>>}
  end
end


defmodule APM.Message.PowerStatus do
  @enforce_keys [:vcc, :vservo, :flags]
  defstruct [:vcc, :vservo, :flags]
  @typedoc "Power supply status"
  @type t :: %APM.Message.PowerStatus{vcc: MAVLink.Types.uint16_t, vservo: MAVLink.Types.uint16_t, flags: MapSet.t(APM.Types.mav_power_status)}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 125, APM.msg_attributes(125), <<msg.vcc::little-integer-size(16),msg.vservo::little-integer-size(16),APM.pack_bitmask(msg.flags, :mav_power_status, &APM.encode/2)::little-integer-size(16)>>}
  end
end


defmodule APM.Message.SerialControl do
  @enforce_keys [:device, :flags, :timeout, :baudrate, :count, :data]
  defstruct [:device, :flags, :timeout, :baudrate, :count, :data]
  @typedoc "Control a serial port. This can be used for raw access to an onboard serial peripheral such as a GPS or telemetry radio. It is designed to make it possible to update the devices firmware via MAVLink messages or change the devices settings. A message with zero bytes can be used to change just the baudrate."
  @type t :: %APM.Message.SerialControl{device: APM.Types.serial_control_dev, flags: MapSet.t(APM.Types.serial_control_flag), timeout: MAVLink.Types.uint16_t, baudrate: MAVLink.Types.uint32_t, count: MAVLink.Types.uint8_t, data: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 126, APM.msg_attributes(126), <<msg.baudrate::little-integer-size(32),msg.timeout::little-integer-size(16),APM.encode(msg.device, :serial_control_dev)::integer-size(8),APM.pack_bitmask(msg.flags, :serial_control_flag, &APM.encode/2)::integer-size(8),msg.count::integer-size(8),MAVLink.Utils.pack_array(msg.data, 70, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(70)>>}
  end
end


defmodule APM.Message.GpsRtk do
  @enforce_keys [:time_last_baseline_ms, :rtk_receiver_id, :wn, :tow, :rtk_health, :rtk_rate, :nsats, :baseline_coords_type, :baseline_a_mm, :baseline_b_mm, :baseline_c_mm, :accuracy, :iar_num_hypotheses]
  defstruct [:time_last_baseline_ms, :rtk_receiver_id, :wn, :tow, :rtk_health, :rtk_rate, :nsats, :baseline_coords_type, :baseline_a_mm, :baseline_b_mm, :baseline_c_mm, :accuracy, :iar_num_hypotheses]
  @typedoc "RTK GPS data. Gives information on the relative baseline calculation the GPS is reporting"
  @type t :: %APM.Message.GpsRtk{time_last_baseline_ms: MAVLink.Types.uint32_t, rtk_receiver_id: MAVLink.Types.uint8_t, wn: MAVLink.Types.uint16_t, tow: MAVLink.Types.uint32_t, rtk_health: MAVLink.Types.uint8_t, rtk_rate: MAVLink.Types.uint8_t, nsats: MAVLink.Types.uint8_t, baseline_coords_type: APM.Types.rtk_baseline_coordinate_system, baseline_a_mm: MAVLink.Types.int32_t, baseline_b_mm: MAVLink.Types.int32_t, baseline_c_mm: MAVLink.Types.int32_t, accuracy: MAVLink.Types.uint32_t, iar_num_hypotheses: MAVLink.Types.int32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 127, APM.msg_attributes(127), <<msg.time_last_baseline_ms::little-integer-size(32),msg.tow::little-integer-size(32),msg.baseline_a_mm::little-signed-integer-size(32),msg.baseline_b_mm::little-signed-integer-size(32),msg.baseline_c_mm::little-signed-integer-size(32),msg.accuracy::little-integer-size(32),msg.iar_num_hypotheses::little-signed-integer-size(32),msg.wn::little-integer-size(16),msg.rtk_receiver_id::integer-size(8),msg.rtk_health::integer-size(8),msg.rtk_rate::integer-size(8),msg.nsats::integer-size(8),APM.encode(msg.baseline_coords_type, :rtk_baseline_coordinate_system)::integer-size(8)>>}
  end
end


defmodule APM.Message.Gps2Rtk do
  @enforce_keys [:time_last_baseline_ms, :rtk_receiver_id, :wn, :tow, :rtk_health, :rtk_rate, :nsats, :baseline_coords_type, :baseline_a_mm, :baseline_b_mm, :baseline_c_mm, :accuracy, :iar_num_hypotheses]
  defstruct [:time_last_baseline_ms, :rtk_receiver_id, :wn, :tow, :rtk_health, :rtk_rate, :nsats, :baseline_coords_type, :baseline_a_mm, :baseline_b_mm, :baseline_c_mm, :accuracy, :iar_num_hypotheses]
  @typedoc "RTK GPS data. Gives information on the relative baseline calculation the GPS is reporting"
  @type t :: %APM.Message.Gps2Rtk{time_last_baseline_ms: MAVLink.Types.uint32_t, rtk_receiver_id: MAVLink.Types.uint8_t, wn: MAVLink.Types.uint16_t, tow: MAVLink.Types.uint32_t, rtk_health: MAVLink.Types.uint8_t, rtk_rate: MAVLink.Types.uint8_t, nsats: MAVLink.Types.uint8_t, baseline_coords_type: APM.Types.rtk_baseline_coordinate_system, baseline_a_mm: MAVLink.Types.int32_t, baseline_b_mm: MAVLink.Types.int32_t, baseline_c_mm: MAVLink.Types.int32_t, accuracy: MAVLink.Types.uint32_t, iar_num_hypotheses: MAVLink.Types.int32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 128, APM.msg_attributes(128), <<msg.time_last_baseline_ms::little-integer-size(32),msg.tow::little-integer-size(32),msg.baseline_a_mm::little-signed-integer-size(32),msg.baseline_b_mm::little-signed-integer-size(32),msg.baseline_c_mm::little-signed-integer-size(32),msg.accuracy::little-integer-size(32),msg.iar_num_hypotheses::little-signed-integer-size(32),msg.wn::little-integer-size(16),msg.rtk_receiver_id::integer-size(8),msg.rtk_health::integer-size(8),msg.rtk_rate::integer-size(8),msg.nsats::integer-size(8),APM.encode(msg.baseline_coords_type, :rtk_baseline_coordinate_system)::integer-size(8)>>}
  end
end


defmodule APM.Message.ScaledImu3 do
  @enforce_keys [:time_boot_ms, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :xmag, :ymag, :zmag]
  defstruct [:time_boot_ms, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :xmag, :ymag, :zmag, :temperature]
  @typedoc "The RAW IMU readings for 3rd 9DOF sensor setup. This message should contain the scaled values to the described units"
  @type t :: %APM.Message.ScaledImu3{time_boot_ms: MAVLink.Types.uint32_t, xacc: MAVLink.Types.int16_t, yacc: MAVLink.Types.int16_t, zacc: MAVLink.Types.int16_t, xgyro: MAVLink.Types.int16_t, ygyro: MAVLink.Types.int16_t, zgyro: MAVLink.Types.int16_t, xmag: MAVLink.Types.int16_t, ymag: MAVLink.Types.int16_t, zmag: MAVLink.Types.int16_t, temperature: MAVLink.Types.int16_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 129, APM.msg_attributes(129), <<msg.time_boot_ms::little-integer-size(32),msg.xacc::little-signed-integer-size(16),msg.yacc::little-signed-integer-size(16),msg.zacc::little-signed-integer-size(16),msg.xgyro::little-signed-integer-size(16),msg.ygyro::little-signed-integer-size(16),msg.zgyro::little-signed-integer-size(16),msg.xmag::little-signed-integer-size(16),msg.ymag::little-signed-integer-size(16),msg.zmag::little-signed-integer-size(16)>>}
    def pack(msg, 2), do: {:ok, 129, APM.msg_attributes(129), <<msg.time_boot_ms::little-integer-size(32),msg.xacc::little-signed-integer-size(16),msg.yacc::little-signed-integer-size(16),msg.zacc::little-signed-integer-size(16),msg.xgyro::little-signed-integer-size(16),msg.ygyro::little-signed-integer-size(16),msg.zgyro::little-signed-integer-size(16),msg.xmag::little-signed-integer-size(16),msg.ymag::little-signed-integer-size(16),msg.zmag::little-signed-integer-size(16),msg.temperature::little-signed-integer-size(16)>>}
  end
end


defmodule APM.Message.DataTransmissionHandshake do
  @enforce_keys [:type, :size, :width, :height, :packets, :payload, :jpg_quality]
  defstruct [:type, :size, :width, :height, :packets, :payload, :jpg_quality]
  @typedoc "Handshake message to initiate, control and stop image streaming when using the Image Transmission Protocol: https://mavlink.io/en/services/image_transmission.html."
  @type t :: %APM.Message.DataTransmissionHandshake{type: APM.Types.mavlink_data_stream_type, size: MAVLink.Types.uint32_t, width: MAVLink.Types.uint16_t, height: MAVLink.Types.uint16_t, packets: MAVLink.Types.uint16_t, payload: MAVLink.Types.uint8_t, jpg_quality: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 130, APM.msg_attributes(130), <<msg.size::little-integer-size(32),msg.width::little-integer-size(16),msg.height::little-integer-size(16),msg.packets::little-integer-size(16),APM.encode(msg.type, :mavlink_data_stream_type)::integer-size(8),msg.payload::integer-size(8),msg.jpg_quality::integer-size(8)>>}
  end
end


defmodule APM.Message.EncapsulatedData do
  @enforce_keys [:seqnr, :data]
  defstruct [:seqnr, :data]
  @typedoc "Data packet for images sent using the Image Transmission Protocol: https://mavlink.io/en/services/image_transmission.html."
  @type t :: %APM.Message.EncapsulatedData{seqnr: MAVLink.Types.uint16_t, data: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 131, APM.msg_attributes(131), <<msg.seqnr::little-integer-size(16),MAVLink.Utils.pack_array(msg.data, 253, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(253)>>}
  end
end


defmodule APM.Message.DistanceSensor do
  @enforce_keys [:time_boot_ms, :min_distance, :max_distance, :current_distance, :type, :id, :orientation, :covariance]
  defstruct [:time_boot_ms, :min_distance, :max_distance, :current_distance, :type, :id, :orientation, :covariance, :horizontal_fov, :vertical_fov, :quaternion, :signal_quality]
  @typedoc "Distance sensor information for an onboard rangefinder."
  @type t :: %APM.Message.DistanceSensor{time_boot_ms: MAVLink.Types.uint32_t, min_distance: MAVLink.Types.uint16_t, max_distance: MAVLink.Types.uint16_t, current_distance: MAVLink.Types.uint16_t, type: APM.Types.mav_distance_sensor, id: MAVLink.Types.uint8_t, orientation: APM.Types.mav_sensor_orientation, covariance: MAVLink.Types.uint8_t, horizontal_fov: Float32, vertical_fov: Float32, quaternion: [ Float32 ], signal_quality: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 132, APM.msg_attributes(132), <<msg.time_boot_ms::little-integer-size(32),msg.min_distance::little-integer-size(16),msg.max_distance::little-integer-size(16),msg.current_distance::little-integer-size(16),APM.encode(msg.type, :mav_distance_sensor)::integer-size(8),msg.id::integer-size(8),APM.encode(msg.orientation, :mav_sensor_orientation)::integer-size(8),msg.covariance::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 132, APM.msg_attributes(132), <<msg.time_boot_ms::little-integer-size(32),msg.min_distance::little-integer-size(16),msg.max_distance::little-integer-size(16),msg.current_distance::little-integer-size(16),APM.encode(msg.type, :mav_distance_sensor)::integer-size(8),msg.id::integer-size(8),APM.encode(msg.orientation, :mav_sensor_orientation)::integer-size(8),msg.covariance::integer-size(8),MAVLink.Utils.pack_float(msg.horizontal_fov)::binary-size(4),MAVLink.Utils.pack_float(msg.vertical_fov)::binary-size(4),MAVLink.Utils.pack_array(msg.quaternion, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),msg.signal_quality::integer-size(8)>>}
  end
end


defmodule APM.Message.TerrainRequest do
  @enforce_keys [:lat, :lon, :grid_spacing, :mask]
  defstruct [:lat, :lon, :grid_spacing, :mask]
  @typedoc "Request for terrain data and terrain status. See terrain protocol docs: https://mavlink.io/en/services/terrain.html"
  @type t :: %APM.Message.TerrainRequest{lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, grid_spacing: MAVLink.Types.uint16_t, mask: MAVLink.Types.uint64_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 133, APM.msg_attributes(133), <<msg.mask::little-integer-size(64),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.grid_spacing::little-integer-size(16)>>}
  end
end


defmodule APM.Message.TerrainData do
  @enforce_keys [:lat, :lon, :grid_spacing, :gridbit, :data]
  defstruct [:lat, :lon, :grid_spacing, :gridbit, :data]
  @typedoc "Terrain data sent from GCS. The lat/lon and grid_spacing must be the same as a lat/lon from a TERRAIN_REQUEST. See terrain protocol docs: https://mavlink.io/en/services/terrain.html"
  @type t :: %APM.Message.TerrainData{lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, grid_spacing: MAVLink.Types.uint16_t, gridbit: MAVLink.Types.uint8_t, data: [ MAVLink.Types.int16_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 134, APM.msg_attributes(134), <<msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.grid_spacing::little-integer-size(16),MAVLink.Utils.pack_array(msg.data, 16, fn(elem) -> <<elem::little-signed-integer-size(16)>> end)::binary-size(32),msg.gridbit::integer-size(8)>>}
  end
end


defmodule APM.Message.TerrainCheck do
  @enforce_keys [:lat, :lon]
  defstruct [:lat, :lon]
  @typedoc "Request that the vehicle report terrain height at the given location (expected response is a TERRAIN_REPORT). Used by GCS to check if vehicle has all terrain data needed for a mission."
  @type t :: %APM.Message.TerrainCheck{lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 135, APM.msg_attributes(135), <<msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32)>>}
  end
end


defmodule APM.Message.TerrainReport do
  @enforce_keys [:lat, :lon, :spacing, :terrain_height, :current_height, :pending, :loaded]
  defstruct [:lat, :lon, :spacing, :terrain_height, :current_height, :pending, :loaded]
  @typedoc "Streamed from drone to report progress of terrain map download (initiated by TERRAIN_REQUEST), or sent as a response to a TERRAIN_CHECK request. See terrain protocol docs: https://mavlink.io/en/services/terrain.html"
  @type t :: %APM.Message.TerrainReport{lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, spacing: MAVLink.Types.uint16_t, terrain_height: Float32, current_height: Float32, pending: MAVLink.Types.uint16_t, loaded: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 136, APM.msg_attributes(136), <<msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.terrain_height)::binary-size(4),MAVLink.Utils.pack_float(msg.current_height)::binary-size(4),msg.spacing::little-integer-size(16),msg.pending::little-integer-size(16),msg.loaded::little-integer-size(16)>>}
  end
end


defmodule APM.Message.ScaledPressure2 do
  @enforce_keys [:time_boot_ms, :press_abs, :press_diff, :temperature]
  defstruct [:time_boot_ms, :press_abs, :press_diff, :temperature, :temperature_press_diff]
  @typedoc "Barometer readings for 2nd barometer"
  @type t :: %APM.Message.ScaledPressure2{time_boot_ms: MAVLink.Types.uint32_t, press_abs: Float32, press_diff: Float32, temperature: MAVLink.Types.int16_t, temperature_press_diff: MAVLink.Types.int16_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 137, APM.msg_attributes(137), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.press_abs)::binary-size(4),MAVLink.Utils.pack_float(msg.press_diff)::binary-size(4),msg.temperature::little-signed-integer-size(16)>>}
    def pack(msg, 2), do: {:ok, 137, APM.msg_attributes(137), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.press_abs)::binary-size(4),MAVLink.Utils.pack_float(msg.press_diff)::binary-size(4),msg.temperature::little-signed-integer-size(16),msg.temperature_press_diff::little-signed-integer-size(16)>>}
  end
end


defmodule APM.Message.AttPosMocap do
  @enforce_keys [:time_usec, :q, :x, :y, :z]
  defstruct [:time_usec, :q, :x, :y, :z, :covariance]
  @typedoc "Motion capture attitude and position"
  @type t :: %APM.Message.AttPosMocap{time_usec: MAVLink.Types.uint64_t, q: [ Float32 ], x: Float32, y: Float32, z: Float32, covariance: [ Float32 ]}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 138, APM.msg_attributes(138), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_array(msg.q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4)>>}
    def pack(msg, 2), do: {:ok, 138, APM.msg_attributes(138), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_array(msg.q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_array(msg.covariance, 21, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(84)>>}
  end
end


defmodule APM.Message.SetActuatorControlTarget do
  @enforce_keys [:time_usec, :group_mlx, :target_system, :target_component, :controls]
  defstruct [:time_usec, :group_mlx, :target_system, :target_component, :controls]
  @typedoc "Set the vehicle attitude and body angular rates."
  @type t :: %APM.Message.SetActuatorControlTarget{time_usec: MAVLink.Types.uint64_t, group_mlx: MAVLink.Types.uint8_t, target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, controls: [ Float32 ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 139, APM.msg_attributes(139), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_array(msg.controls, 8, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(32),msg.group_mlx::integer-size(8),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
  end
end


defmodule APM.Message.ActuatorControlTarget do
  @enforce_keys [:time_usec, :group_mlx, :controls]
  defstruct [:time_usec, :group_mlx, :controls]
  @typedoc "Set the vehicle attitude and body angular rates."
  @type t :: %APM.Message.ActuatorControlTarget{time_usec: MAVLink.Types.uint64_t, group_mlx: MAVLink.Types.uint8_t, controls: [ Float32 ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 140, APM.msg_attributes(140), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_array(msg.controls, 8, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(32),msg.group_mlx::integer-size(8)>>}
  end
end


defmodule APM.Message.Altitude do
  @enforce_keys [:time_usec, :altitude_monotonic, :altitude_amsl, :altitude_local, :altitude_relative, :altitude_terrain, :bottom_clearance]
  defstruct [:time_usec, :altitude_monotonic, :altitude_amsl, :altitude_local, :altitude_relative, :altitude_terrain, :bottom_clearance]
  @typedoc "The current system altitude."
  @type t :: %APM.Message.Altitude{time_usec: MAVLink.Types.uint64_t, altitude_monotonic: Float32, altitude_amsl: Float32, altitude_local: Float32, altitude_relative: Float32, altitude_terrain: Float32, bottom_clearance: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 141, APM.msg_attributes(141), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.altitude_monotonic)::binary-size(4),MAVLink.Utils.pack_float(msg.altitude_amsl)::binary-size(4),MAVLink.Utils.pack_float(msg.altitude_local)::binary-size(4),MAVLink.Utils.pack_float(msg.altitude_relative)::binary-size(4),MAVLink.Utils.pack_float(msg.altitude_terrain)::binary-size(4),MAVLink.Utils.pack_float(msg.bottom_clearance)::binary-size(4)>>}
  end
end


defmodule APM.Message.ResourceRequest do
  @enforce_keys [:request_id, :uri_type, :uri, :transfer_type, :storage]
  defstruct [:request_id, :uri_type, :uri, :transfer_type, :storage]
  @typedoc "The autopilot is requesting a resource (file, binary, other type of data)"
  @type t :: %APM.Message.ResourceRequest{request_id: MAVLink.Types.uint8_t, uri_type: MAVLink.Types.uint8_t, uri: [ MAVLink.Types.uint8_t ], transfer_type: MAVLink.Types.uint8_t, storage: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 142, APM.msg_attributes(142), <<msg.request_id::integer-size(8),msg.uri_type::integer-size(8),MAVLink.Utils.pack_array(msg.uri, 120, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(120),msg.transfer_type::integer-size(8),MAVLink.Utils.pack_array(msg.storage, 120, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(120)>>}
  end
end


defmodule APM.Message.ScaledPressure3 do
  @enforce_keys [:time_boot_ms, :press_abs, :press_diff, :temperature]
  defstruct [:time_boot_ms, :press_abs, :press_diff, :temperature, :temperature_press_diff]
  @typedoc "Barometer readings for 3rd barometer"
  @type t :: %APM.Message.ScaledPressure3{time_boot_ms: MAVLink.Types.uint32_t, press_abs: Float32, press_diff: Float32, temperature: MAVLink.Types.int16_t, temperature_press_diff: MAVLink.Types.int16_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 143, APM.msg_attributes(143), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.press_abs)::binary-size(4),MAVLink.Utils.pack_float(msg.press_diff)::binary-size(4),msg.temperature::little-signed-integer-size(16)>>}
    def pack(msg, 2), do: {:ok, 143, APM.msg_attributes(143), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.press_abs)::binary-size(4),MAVLink.Utils.pack_float(msg.press_diff)::binary-size(4),msg.temperature::little-signed-integer-size(16),msg.temperature_press_diff::little-signed-integer-size(16)>>}
  end
end


defmodule APM.Message.FollowTarget do
  @enforce_keys [:timestamp, :est_capabilities, :lat, :lon, :alt, :vel, :acc, :attitude_q, :rates, :position_cov, :custom_state]
  defstruct [:timestamp, :est_capabilities, :lat, :lon, :alt, :vel, :acc, :attitude_q, :rates, :position_cov, :custom_state]
  @typedoc "Current motion information from a designated system"
  @type t :: %APM.Message.FollowTarget{timestamp: MAVLink.Types.uint64_t, est_capabilities: MAVLink.Types.uint8_t, lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, alt: Float32, vel: [ Float32 ], acc: [ Float32 ], attitude_q: [ Float32 ], rates: [ Float32 ], position_cov: [ Float32 ], custom_state: MAVLink.Types.uint64_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 144, APM.msg_attributes(144), <<msg.timestamp::little-integer-size(64),msg.custom_state::little-integer-size(64),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.alt)::binary-size(4),MAVLink.Utils.pack_array(msg.vel, 3, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(12),MAVLink.Utils.pack_array(msg.acc, 3, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(12),MAVLink.Utils.pack_array(msg.attitude_q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),MAVLink.Utils.pack_array(msg.rates, 3, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(12),MAVLink.Utils.pack_array(msg.position_cov, 3, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(12),msg.est_capabilities::integer-size(8)>>}
  end
end


defmodule APM.Message.ControlSystemState do
  @enforce_keys [:time_usec, :x_acc, :y_acc, :z_acc, :x_vel, :y_vel, :z_vel, :x_pos, :y_pos, :z_pos, :airspeed, :vel_variance, :pos_variance, :q, :roll_rate, :pitch_rate, :yaw_rate]
  defstruct [:time_usec, :x_acc, :y_acc, :z_acc, :x_vel, :y_vel, :z_vel, :x_pos, :y_pos, :z_pos, :airspeed, :vel_variance, :pos_variance, :q, :roll_rate, :pitch_rate, :yaw_rate]
  @typedoc "The smoothed, monotonic system state used to feed the control loops of the system."
  @type t :: %APM.Message.ControlSystemState{time_usec: MAVLink.Types.uint64_t, x_acc: Float32, y_acc: Float32, z_acc: Float32, x_vel: Float32, y_vel: Float32, z_vel: Float32, x_pos: Float32, y_pos: Float32, z_pos: Float32, airspeed: Float32, vel_variance: [ Float32 ], pos_variance: [ Float32 ], q: [ Float32 ], roll_rate: Float32, pitch_rate: Float32, yaw_rate: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 146, APM.msg_attributes(146), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.x_acc)::binary-size(4),MAVLink.Utils.pack_float(msg.y_acc)::binary-size(4),MAVLink.Utils.pack_float(msg.z_acc)::binary-size(4),MAVLink.Utils.pack_float(msg.x_vel)::binary-size(4),MAVLink.Utils.pack_float(msg.y_vel)::binary-size(4),MAVLink.Utils.pack_float(msg.z_vel)::binary-size(4),MAVLink.Utils.pack_float(msg.x_pos)::binary-size(4),MAVLink.Utils.pack_float(msg.y_pos)::binary-size(4),MAVLink.Utils.pack_float(msg.z_pos)::binary-size(4),MAVLink.Utils.pack_float(msg.airspeed)::binary-size(4),MAVLink.Utils.pack_array(msg.vel_variance, 3, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(12),MAVLink.Utils.pack_array(msg.pos_variance, 3, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(12),MAVLink.Utils.pack_array(msg.q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),MAVLink.Utils.pack_float(msg.roll_rate)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch_rate)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw_rate)::binary-size(4)>>}
  end
end


defmodule APM.Message.BatteryStatus do
  @enforce_keys [:id, :battery_function, :type, :temperature, :voltages, :current_battery, :current_consumed, :energy_consumed, :battery_remaining]
  defstruct [:id, :battery_function, :type, :temperature, :voltages, :current_battery, :current_consumed, :energy_consumed, :battery_remaining, :time_remaining, :charge_state, :voltages_ext]
  @typedoc "Battery information"
  @type t :: %APM.Message.BatteryStatus{id: MAVLink.Types.uint8_t, battery_function: APM.Types.mav_battery_function, type: APM.Types.mav_battery_type, temperature: MAVLink.Types.int16_t, voltages: [ MAVLink.Types.uint16_t ], current_battery: MAVLink.Types.int16_t, current_consumed: MAVLink.Types.int32_t, energy_consumed: MAVLink.Types.int32_t, battery_remaining: MAVLink.Types.int8_t, time_remaining: MAVLink.Types.int32_t, charge_state: APM.Types.mav_battery_charge_state, voltages_ext: [ MAVLink.Types.uint16_t ]}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 147, APM.msg_attributes(147), <<msg.current_consumed::little-signed-integer-size(32),msg.energy_consumed::little-signed-integer-size(32),msg.temperature::little-signed-integer-size(16),MAVLink.Utils.pack_array(msg.voltages, 10, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(20),msg.current_battery::little-signed-integer-size(16),msg.id::integer-size(8),APM.encode(msg.battery_function, :mav_battery_function)::integer-size(8),APM.encode(msg.type, :mav_battery_type)::integer-size(8),msg.battery_remaining::signed-integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 147, APM.msg_attributes(147), <<msg.current_consumed::little-signed-integer-size(32),msg.energy_consumed::little-signed-integer-size(32),msg.temperature::little-signed-integer-size(16),MAVLink.Utils.pack_array(msg.voltages, 10, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(20),msg.current_battery::little-signed-integer-size(16),msg.id::integer-size(8),APM.encode(msg.battery_function, :mav_battery_function)::integer-size(8),APM.encode(msg.type, :mav_battery_type)::integer-size(8),msg.battery_remaining::signed-integer-size(8),msg.time_remaining::little-signed-integer-size(32),APM.encode(msg.charge_state, :mav_battery_charge_state)::integer-size(8),MAVLink.Utils.pack_array(msg.voltages_ext, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8)>>}
  end
end


defmodule APM.Message.AutopilotVersion do
  @enforce_keys [:capabilities, :flight_sw_version, :middleware_sw_version, :os_sw_version, :board_version, :flight_custom_version, :middleware_custom_version, :os_custom_version, :vendor_id, :product_id, :uid]
  defstruct [:capabilities, :flight_sw_version, :middleware_sw_version, :os_sw_version, :board_version, :flight_custom_version, :middleware_custom_version, :os_custom_version, :vendor_id, :product_id, :uid, :uid2]
  @typedoc "Version and capability of autopilot software. This should be emitted in response to a request with MAV_CMD_REQUEST_MESSAGE."
  @type t :: %APM.Message.AutopilotVersion{capabilities: MapSet.t(APM.Types.mav_protocol_capability), flight_sw_version: MAVLink.Types.uint32_t, middleware_sw_version: MAVLink.Types.uint32_t, os_sw_version: MAVLink.Types.uint32_t, board_version: MAVLink.Types.uint32_t, flight_custom_version: [ MAVLink.Types.uint8_t ], middleware_custom_version: [ MAVLink.Types.uint8_t ], os_custom_version: [ MAVLink.Types.uint8_t ], vendor_id: MAVLink.Types.uint16_t, product_id: MAVLink.Types.uint16_t, uid: MAVLink.Types.uint64_t, uid2: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 148, APM.msg_attributes(148), <<APM.pack_bitmask(msg.capabilities, :mav_protocol_capability, &APM.encode/2)::little-integer-size(64),msg.uid::little-integer-size(64),msg.flight_sw_version::little-integer-size(32),msg.middleware_sw_version::little-integer-size(32),msg.os_sw_version::little-integer-size(32),msg.board_version::little-integer-size(32),msg.vendor_id::little-integer-size(16),msg.product_id::little-integer-size(16),MAVLink.Utils.pack_array(msg.flight_custom_version, 8, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.middleware_custom_version, 8, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.os_custom_version, 8, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(8)>>}
    def pack(msg, 2), do: {:ok, 148, APM.msg_attributes(148), <<APM.pack_bitmask(msg.capabilities, :mav_protocol_capability, &APM.encode/2)::little-integer-size(64),msg.uid::little-integer-size(64),msg.flight_sw_version::little-integer-size(32),msg.middleware_sw_version::little-integer-size(32),msg.os_sw_version::little-integer-size(32),msg.board_version::little-integer-size(32),msg.vendor_id::little-integer-size(16),msg.product_id::little-integer-size(16),MAVLink.Utils.pack_array(msg.flight_custom_version, 8, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.middleware_custom_version, 8, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.os_custom_version, 8, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.uid2, 18, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(18)>>}
  end
end


defmodule APM.Message.LandingTarget do
  @enforce_keys [:time_usec, :target_num, :frame, :angle_x, :angle_y, :distance, :size_x, :size_y]
  defstruct [:time_usec, :target_num, :frame, :angle_x, :angle_y, :distance, :size_x, :size_y, :x, :y, :z, :q, :type, :position_valid]
  @typedoc "The location of a landing target. See: https://mavlink.io/en/services/landing_target.html"
  @type t :: %APM.Message.LandingTarget{time_usec: MAVLink.Types.uint64_t, target_num: MAVLink.Types.uint8_t, frame: APM.Types.mav_frame, angle_x: Float32, angle_y: Float32, distance: Float32, size_x: Float32, size_y: Float32, x: Float32, y: Float32, z: Float32, q: [ Float32 ], type: APM.Types.landing_target_type, position_valid: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 149, APM.msg_attributes(149), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.angle_x)::binary-size(4),MAVLink.Utils.pack_float(msg.angle_y)::binary-size(4),MAVLink.Utils.pack_float(msg.distance)::binary-size(4),MAVLink.Utils.pack_float(msg.size_x)::binary-size(4),MAVLink.Utils.pack_float(msg.size_y)::binary-size(4),msg.target_num::integer-size(8),APM.encode(msg.frame, :mav_frame)::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 149, APM.msg_attributes(149), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.angle_x)::binary-size(4),MAVLink.Utils.pack_float(msg.angle_y)::binary-size(4),MAVLink.Utils.pack_float(msg.distance)::binary-size(4),MAVLink.Utils.pack_float(msg.size_x)::binary-size(4),MAVLink.Utils.pack_float(msg.size_y)::binary-size(4),msg.target_num::integer-size(8),APM.encode(msg.frame, :mav_frame)::integer-size(8),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_array(msg.q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),APM.encode(msg.type, :landing_target_type)::integer-size(8),msg.position_valid::integer-size(8)>>}
  end
end


defmodule APM.Message.SensorOffsets do
  @enforce_keys [:mag_ofs_x, :mag_ofs_y, :mag_ofs_z, :mag_declination, :raw_press, :raw_temp, :gyro_cal_x, :gyro_cal_y, :gyro_cal_z, :accel_cal_x, :accel_cal_y, :accel_cal_z]
  defstruct [:mag_ofs_x, :mag_ofs_y, :mag_ofs_z, :mag_declination, :raw_press, :raw_temp, :gyro_cal_x, :gyro_cal_y, :gyro_cal_z, :accel_cal_x, :accel_cal_y, :accel_cal_z]
  @typedoc "Offsets and calibrations values for hardware sensors. This makes it easier to debug the calibration process."
  @type t :: %APM.Message.SensorOffsets{mag_ofs_x: MAVLink.Types.int16_t, mag_ofs_y: MAVLink.Types.int16_t, mag_ofs_z: MAVLink.Types.int16_t, mag_declination: Float32, raw_press: MAVLink.Types.int32_t, raw_temp: MAVLink.Types.int32_t, gyro_cal_x: Float32, gyro_cal_y: Float32, gyro_cal_z: Float32, accel_cal_x: Float32, accel_cal_y: Float32, accel_cal_z: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 150, APM.msg_attributes(150), <<MAVLink.Utils.pack_float(msg.mag_declination)::binary-size(4),msg.raw_press::little-signed-integer-size(32),msg.raw_temp::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.gyro_cal_x)::binary-size(4),MAVLink.Utils.pack_float(msg.gyro_cal_y)::binary-size(4),MAVLink.Utils.pack_float(msg.gyro_cal_z)::binary-size(4),MAVLink.Utils.pack_float(msg.accel_cal_x)::binary-size(4),MAVLink.Utils.pack_float(msg.accel_cal_y)::binary-size(4),MAVLink.Utils.pack_float(msg.accel_cal_z)::binary-size(4),msg.mag_ofs_x::little-signed-integer-size(16),msg.mag_ofs_y::little-signed-integer-size(16),msg.mag_ofs_z::little-signed-integer-size(16)>>}
  end
end


defmodule APM.Message.SetMagOffsets do
  @enforce_keys [:target_system, :target_component, :mag_ofs_x, :mag_ofs_y, :mag_ofs_z]
  defstruct [:target_system, :target_component, :mag_ofs_x, :mag_ofs_y, :mag_ofs_z]
  @typedoc "Set the magnetometer offsets"
  @type t :: %APM.Message.SetMagOffsets{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, mag_ofs_x: MAVLink.Types.int16_t, mag_ofs_y: MAVLink.Types.int16_t, mag_ofs_z: MAVLink.Types.int16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 151, APM.msg_attributes(151), <<msg.mag_ofs_x::little-signed-integer-size(16),msg.mag_ofs_y::little-signed-integer-size(16),msg.mag_ofs_z::little-signed-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
  end
end


defmodule APM.Message.Meminfo do
  @enforce_keys [:brkval, :freemem]
  defstruct [:brkval, :freemem, :freemem32]
  @typedoc "State of APM memory."
  @type t :: %APM.Message.Meminfo{brkval: MAVLink.Types.uint16_t, freemem: MAVLink.Types.uint16_t, freemem32: MAVLink.Types.uint32_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 152, APM.msg_attributes(152), <<msg.brkval::little-integer-size(16),msg.freemem::little-integer-size(16)>>}
    def pack(msg, 2), do: {:ok, 152, APM.msg_attributes(152), <<msg.brkval::little-integer-size(16),msg.freemem::little-integer-size(16),msg.freemem32::little-integer-size(32)>>}
  end
end


defmodule APM.Message.ApAdc do
  @enforce_keys [:adc1, :adc2, :adc3, :adc4, :adc5, :adc6]
  defstruct [:adc1, :adc2, :adc3, :adc4, :adc5, :adc6]
  @typedoc "Raw ADC output."
  @type t :: %APM.Message.ApAdc{adc1: MAVLink.Types.uint16_t, adc2: MAVLink.Types.uint16_t, adc3: MAVLink.Types.uint16_t, adc4: MAVLink.Types.uint16_t, adc5: MAVLink.Types.uint16_t, adc6: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 153, APM.msg_attributes(153), <<msg.adc1::little-integer-size(16),msg.adc2::little-integer-size(16),msg.adc3::little-integer-size(16),msg.adc4::little-integer-size(16),msg.adc5::little-integer-size(16),msg.adc6::little-integer-size(16)>>}
  end
end


defmodule APM.Message.DigicamConfigure do
  @enforce_keys [:target_system, :target_component, :mode, :shutter_speed, :aperture, :iso, :exposure_type, :command_id, :engine_cut_off, :extra_param, :extra_value]
  defstruct [:target_system, :target_component, :mode, :shutter_speed, :aperture, :iso, :exposure_type, :command_id, :engine_cut_off, :extra_param, :extra_value]
  @typedoc "Configure on-board Camera Control System."
  @type t :: %APM.Message.DigicamConfigure{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, mode: MAVLink.Types.uint8_t, shutter_speed: MAVLink.Types.uint16_t, aperture: MAVLink.Types.uint8_t, iso: MAVLink.Types.uint8_t, exposure_type: MAVLink.Types.uint8_t, command_id: MAVLink.Types.uint8_t, engine_cut_off: MAVLink.Types.uint8_t, extra_param: MAVLink.Types.uint8_t, extra_value: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 154, APM.msg_attributes(154), <<MAVLink.Utils.pack_float(msg.extra_value)::binary-size(4),msg.shutter_speed::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.mode::integer-size(8),msg.aperture::integer-size(8),msg.iso::integer-size(8),msg.exposure_type::integer-size(8),msg.command_id::integer-size(8),msg.engine_cut_off::integer-size(8),msg.extra_param::integer-size(8)>>}
  end
end


defmodule APM.Message.DigicamControl do
  @enforce_keys [:target_system, :target_component, :session, :zoom_pos, :zoom_step, :focus_lock, :shot, :command_id, :extra_param, :extra_value]
  defstruct [:target_system, :target_component, :session, :zoom_pos, :zoom_step, :focus_lock, :shot, :command_id, :extra_param, :extra_value]
  @typedoc "Control on-board Camera Control System to take shots."
  @type t :: %APM.Message.DigicamControl{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, session: MAVLink.Types.uint8_t, zoom_pos: MAVLink.Types.uint8_t, zoom_step: MAVLink.Types.int8_t, focus_lock: MAVLink.Types.uint8_t, shot: MAVLink.Types.uint8_t, command_id: MAVLink.Types.uint8_t, extra_param: MAVLink.Types.uint8_t, extra_value: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 155, APM.msg_attributes(155), <<MAVLink.Utils.pack_float(msg.extra_value)::binary-size(4),msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.session::integer-size(8),msg.zoom_pos::integer-size(8),msg.zoom_step::signed-integer-size(8),msg.focus_lock::integer-size(8),msg.shot::integer-size(8),msg.command_id::integer-size(8),msg.extra_param::integer-size(8)>>}
  end
end


defmodule APM.Message.MountConfigure do
  @enforce_keys [:target_system, :target_component, :mount_mode, :stab_roll, :stab_pitch, :stab_yaw]
  defstruct [:target_system, :target_component, :mount_mode, :stab_roll, :stab_pitch, :stab_yaw]
  @typedoc "Message to configure a camera mount, directional antenna, etc."
  @type t :: %APM.Message.MountConfigure{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, mount_mode: APM.Types.mav_mount_mode, stab_roll: MAVLink.Types.uint8_t, stab_pitch: MAVLink.Types.uint8_t, stab_yaw: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 156, APM.msg_attributes(156), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.mount_mode, :mav_mount_mode)::integer-size(8),msg.stab_roll::integer-size(8),msg.stab_pitch::integer-size(8),msg.stab_yaw::integer-size(8)>>}
  end
end


defmodule APM.Message.MountControl do
  @enforce_keys [:target_system, :target_component, :input_a, :input_b, :input_c, :save_position]
  defstruct [:target_system, :target_component, :input_a, :input_b, :input_c, :save_position]
  @typedoc "Message to control a camera mount, directional antenna, etc."
  @type t :: %APM.Message.MountControl{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, input_a: MAVLink.Types.int32_t, input_b: MAVLink.Types.int32_t, input_c: MAVLink.Types.int32_t, save_position: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 157, APM.msg_attributes(157), <<msg.input_a::little-signed-integer-size(32),msg.input_b::little-signed-integer-size(32),msg.input_c::little-signed-integer-size(32),msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.save_position::integer-size(8)>>}
  end
end


defmodule APM.Message.MountStatus do
  @enforce_keys [:target_system, :target_component, :pointing_a, :pointing_b, :pointing_c]
  defstruct [:target_system, :target_component, :pointing_a, :pointing_b, :pointing_c]
  @typedoc "Message with some status from APM to GCS about camera or antenna mount."
  @type t :: %APM.Message.MountStatus{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, pointing_a: MAVLink.Types.int32_t, pointing_b: MAVLink.Types.int32_t, pointing_c: MAVLink.Types.int32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 158, APM.msg_attributes(158), <<msg.pointing_a::little-signed-integer-size(32),msg.pointing_b::little-signed-integer-size(32),msg.pointing_c::little-signed-integer-size(32),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
  end
end


defmodule APM.Message.FencePoint do
  @enforce_keys [:target_system, :target_component, :idx, :count, :lat, :lng]
  defstruct [:target_system, :target_component, :idx, :count, :lat, :lng]
  @typedoc "A fence point. Used to set a point when from GCS -> MAV. Also used to return a point from MAV -> GCS."
  @type t :: %APM.Message.FencePoint{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, idx: MAVLink.Types.uint8_t, count: MAVLink.Types.uint8_t, lat: Float32, lng: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 160, APM.msg_attributes(160), <<MAVLink.Utils.pack_float(msg.lat)::binary-size(4),MAVLink.Utils.pack_float(msg.lng)::binary-size(4),msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.idx::integer-size(8),msg.count::integer-size(8)>>}
  end
end


defmodule APM.Message.FenceFetchPoint do
  @enforce_keys [:target_system, :target_component, :idx]
  defstruct [:target_system, :target_component, :idx]
  @typedoc "Request a current fence point from MAV."
  @type t :: %APM.Message.FenceFetchPoint{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, idx: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 161, APM.msg_attributes(161), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.idx::integer-size(8)>>}
  end
end


defmodule APM.Message.FenceStatus do
  @enforce_keys [:breach_status, :breach_count, :breach_type, :breach_time]
  defstruct [:breach_status, :breach_count, :breach_type, :breach_time, :breach_mitigation]
  @typedoc "Status of geo-fencing. Sent in extended status stream when fencing enabled."
  @type t :: %APM.Message.FenceStatus{breach_status: MAVLink.Types.uint8_t, breach_count: MAVLink.Types.uint16_t, breach_type: APM.Types.fence_breach, breach_time: MAVLink.Types.uint32_t, breach_mitigation: APM.Types.fence_mitigate}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 162, APM.msg_attributes(162), <<msg.breach_time::little-integer-size(32),msg.breach_count::little-integer-size(16),msg.breach_status::integer-size(8),APM.encode(msg.breach_type, :fence_breach)::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 162, APM.msg_attributes(162), <<msg.breach_time::little-integer-size(32),msg.breach_count::little-integer-size(16),msg.breach_status::integer-size(8),APM.encode(msg.breach_type, :fence_breach)::integer-size(8),APM.encode(msg.breach_mitigation, :fence_mitigate)::integer-size(8)>>}
  end
end


defmodule APM.Message.Ahrs do
  @enforce_keys [:omegaix, :omegaiy, :omegaiz, :accel_weight, :renorm_val, :error_rp, :error_yaw]
  defstruct [:omegaix, :omegaiy, :omegaiz, :accel_weight, :renorm_val, :error_rp, :error_yaw]
  @typedoc "Status of DCM attitude estimator."
  @type t :: %APM.Message.Ahrs{omegaix: Float32, omegaiy: Float32, omegaiz: Float32, accel_weight: Float32, renorm_val: Float32, error_rp: Float32, error_yaw: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 163, APM.msg_attributes(163), <<MAVLink.Utils.pack_float(msg.omegaix)::binary-size(4),MAVLink.Utils.pack_float(msg.omegaiy)::binary-size(4),MAVLink.Utils.pack_float(msg.omegaiz)::binary-size(4),MAVLink.Utils.pack_float(msg.accel_weight)::binary-size(4),MAVLink.Utils.pack_float(msg.renorm_val)::binary-size(4),MAVLink.Utils.pack_float(msg.error_rp)::binary-size(4),MAVLink.Utils.pack_float(msg.error_yaw)::binary-size(4)>>}
  end
end


defmodule APM.Message.Simstate do
  @enforce_keys [:roll, :pitch, :yaw, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :lat, :lng]
  defstruct [:roll, :pitch, :yaw, :xacc, :yacc, :zacc, :xgyro, :ygyro, :zgyro, :lat, :lng]
  @typedoc "Status of simulation environment, if used."
  @type t :: %APM.Message.Simstate{roll: Float32, pitch: Float32, yaw: Float32, xacc: Float32, yacc: Float32, zacc: Float32, xgyro: Float32, ygyro: Float32, zgyro: Float32, lat: MAVLink.Types.int32_t, lng: MAVLink.Types.int32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 164, APM.msg_attributes(164), <<MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_float(msg.xacc)::binary-size(4),MAVLink.Utils.pack_float(msg.yacc)::binary-size(4),MAVLink.Utils.pack_float(msg.zacc)::binary-size(4),MAVLink.Utils.pack_float(msg.xgyro)::binary-size(4),MAVLink.Utils.pack_float(msg.ygyro)::binary-size(4),MAVLink.Utils.pack_float(msg.zgyro)::binary-size(4),msg.lat::little-signed-integer-size(32),msg.lng::little-signed-integer-size(32)>>}
  end
end


defmodule APM.Message.Hwstatus do
  @enforce_keys [:vcc, :i2cerr]
  defstruct [:vcc, :i2cerr]
  @typedoc "Status of key hardware."
  @type t :: %APM.Message.Hwstatus{vcc: MAVLink.Types.uint16_t, i2cerr: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 165, APM.msg_attributes(165), <<msg.vcc::little-integer-size(16),msg.i2cerr::integer-size(8)>>}
  end
end


defmodule APM.Message.Radio do
  @enforce_keys [:rssi, :remrssi, :txbuf, :noise, :remnoise, :rxerrors, :fixed]
  defstruct [:rssi, :remrssi, :txbuf, :noise, :remnoise, :rxerrors, :fixed]
  @typedoc "Status generated by radio."
  @type t :: %APM.Message.Radio{rssi: MAVLink.Types.uint8_t, remrssi: MAVLink.Types.uint8_t, txbuf: MAVLink.Types.uint8_t, noise: MAVLink.Types.uint8_t, remnoise: MAVLink.Types.uint8_t, rxerrors: MAVLink.Types.uint16_t, fixed: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 166, APM.msg_attributes(166), <<msg.rxerrors::little-integer-size(16),msg.fixed::little-integer-size(16),msg.rssi::integer-size(8),msg.remrssi::integer-size(8),msg.txbuf::integer-size(8),msg.noise::integer-size(8),msg.remnoise::integer-size(8)>>}
  end
end


defmodule APM.Message.LimitsStatus do
  @enforce_keys [:limits_state, :last_trigger, :last_action, :last_recovery, :last_clear, :breach_count, :mods_enabled, :mods_required, :mods_triggered]
  defstruct [:limits_state, :last_trigger, :last_action, :last_recovery, :last_clear, :breach_count, :mods_enabled, :mods_required, :mods_triggered]
  @typedoc "Status of AP_Limits. Sent in extended status stream when AP_Limits is enabled."
  @type t :: %APM.Message.LimitsStatus{limits_state: APM.Types.limits_state, last_trigger: MAVLink.Types.uint32_t, last_action: MAVLink.Types.uint32_t, last_recovery: MAVLink.Types.uint32_t, last_clear: MAVLink.Types.uint32_t, breach_count: MAVLink.Types.uint16_t, mods_enabled: MapSet.t(APM.Types.limit_module), mods_required: MapSet.t(APM.Types.limit_module), mods_triggered: MapSet.t(APM.Types.limit_module)}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 167, APM.msg_attributes(167), <<msg.last_trigger::little-integer-size(32),msg.last_action::little-integer-size(32),msg.last_recovery::little-integer-size(32),msg.last_clear::little-integer-size(32),msg.breach_count::little-integer-size(16),APM.encode(msg.limits_state, :limits_state)::integer-size(8),APM.pack_bitmask(msg.mods_enabled, :limit_module, &APM.encode/2)::integer-size(8),APM.pack_bitmask(msg.mods_required, :limit_module, &APM.encode/2)::integer-size(8),APM.pack_bitmask(msg.mods_triggered, :limit_module, &APM.encode/2)::integer-size(8)>>}
  end
end


defmodule APM.Message.Wind do
  @enforce_keys [:direction, :speed, :speed_z]
  defstruct [:direction, :speed, :speed_z]
  @typedoc "Wind estimation."
  @type t :: %APM.Message.Wind{direction: Float32, speed: Float32, speed_z: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 168, APM.msg_attributes(168), <<MAVLink.Utils.pack_float(msg.direction)::binary-size(4),MAVLink.Utils.pack_float(msg.speed)::binary-size(4),MAVLink.Utils.pack_float(msg.speed_z)::binary-size(4)>>}
  end
end


defmodule APM.Message.Data16 do
  @enforce_keys [:type, :len, :data]
  defstruct [:type, :len, :data]
  @typedoc "Data packet, size 16."
  @type t :: %APM.Message.Data16{type: MAVLink.Types.uint8_t, len: MAVLink.Types.uint8_t, data: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 169, APM.msg_attributes(169), <<msg.type::integer-size(8),msg.len::integer-size(8),MAVLink.Utils.pack_array(msg.data, 16, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(16)>>}
  end
end


defmodule APM.Message.Data32 do
  @enforce_keys [:type, :len, :data]
  defstruct [:type, :len, :data]
  @typedoc "Data packet, size 32."
  @type t :: %APM.Message.Data32{type: MAVLink.Types.uint8_t, len: MAVLink.Types.uint8_t, data: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 170, APM.msg_attributes(170), <<msg.type::integer-size(8),msg.len::integer-size(8),MAVLink.Utils.pack_array(msg.data, 32, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(32)>>}
  end
end


defmodule APM.Message.Data64 do
  @enforce_keys [:type, :len, :data]
  defstruct [:type, :len, :data]
  @typedoc "Data packet, size 64."
  @type t :: %APM.Message.Data64{type: MAVLink.Types.uint8_t, len: MAVLink.Types.uint8_t, data: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 171, APM.msg_attributes(171), <<msg.type::integer-size(8),msg.len::integer-size(8),MAVLink.Utils.pack_array(msg.data, 64, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(64)>>}
  end
end


defmodule APM.Message.Data96 do
  @enforce_keys [:type, :len, :data]
  defstruct [:type, :len, :data]
  @typedoc "Data packet, size 96."
  @type t :: %APM.Message.Data96{type: MAVLink.Types.uint8_t, len: MAVLink.Types.uint8_t, data: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 172, APM.msg_attributes(172), <<msg.type::integer-size(8),msg.len::integer-size(8),MAVLink.Utils.pack_array(msg.data, 96, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(96)>>}
  end
end


defmodule APM.Message.Rangefinder do
  @enforce_keys [:distance, :voltage]
  defstruct [:distance, :voltage]
  @typedoc "Rangefinder reporting."
  @type t :: %APM.Message.Rangefinder{distance: Float32, voltage: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 173, APM.msg_attributes(173), <<MAVLink.Utils.pack_float(msg.distance)::binary-size(4),MAVLink.Utils.pack_float(msg.voltage)::binary-size(4)>>}
  end
end


defmodule APM.Message.AirspeedAutocal do
  @enforce_keys [:vx, :vy, :vz, :diff_pressure, :eas2tas, :ratio, :state_x, :state_y, :state_z, :pax, :pby, :pcz]
  defstruct [:vx, :vy, :vz, :diff_pressure, :eas2tas, :ratio, :state_x, :state_y, :state_z, :pax, :pby, :pcz]
  @typedoc "Airspeed auto-calibration."
  @type t :: %APM.Message.AirspeedAutocal{vx: Float32, vy: Float32, vz: Float32, diff_pressure: Float32, eas2tas: Float32, ratio: Float32, state_x: Float32, state_y: Float32, state_z: Float32, pax: Float32, pby: Float32, pcz: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 174, APM.msg_attributes(174), <<MAVLink.Utils.pack_float(msg.vx)::binary-size(4),MAVLink.Utils.pack_float(msg.vy)::binary-size(4),MAVLink.Utils.pack_float(msg.vz)::binary-size(4),MAVLink.Utils.pack_float(msg.diff_pressure)::binary-size(4),MAVLink.Utils.pack_float(msg.eas2tas)::binary-size(4),MAVLink.Utils.pack_float(msg.ratio)::binary-size(4),MAVLink.Utils.pack_float(msg.state_x)::binary-size(4),MAVLink.Utils.pack_float(msg.state_y)::binary-size(4),MAVLink.Utils.pack_float(msg.state_z)::binary-size(4),MAVLink.Utils.pack_float(msg.pax)::binary-size(4),MAVLink.Utils.pack_float(msg.pby)::binary-size(4),MAVLink.Utils.pack_float(msg.pcz)::binary-size(4)>>}
  end
end


defmodule APM.Message.RallyPoint do
  @enforce_keys [:target_system, :target_component, :idx, :count, :lat, :lng, :alt, :break_alt, :land_dir, :flags]
  defstruct [:target_system, :target_component, :idx, :count, :lat, :lng, :alt, :break_alt, :land_dir, :flags]
  @typedoc "A rally point. Used to set a point when from GCS -> MAV. Also used to return a point from MAV -> GCS."
  @type t :: %APM.Message.RallyPoint{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, idx: MAVLink.Types.uint8_t, count: MAVLink.Types.uint8_t, lat: MAVLink.Types.int32_t, lng: MAVLink.Types.int32_t, alt: MAVLink.Types.int16_t, break_alt: MAVLink.Types.int16_t, land_dir: MAVLink.Types.uint16_t, flags: MapSet.t(APM.Types.rally_flags)}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 175, APM.msg_attributes(175), <<msg.lat::little-signed-integer-size(32),msg.lng::little-signed-integer-size(32),msg.alt::little-signed-integer-size(16),msg.break_alt::little-signed-integer-size(16),msg.land_dir::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.idx::integer-size(8),msg.count::integer-size(8),APM.pack_bitmask(msg.flags, :rally_flags, &APM.encode/2)::integer-size(8)>>}
  end
end


defmodule APM.Message.RallyFetchPoint do
  @enforce_keys [:target_system, :target_component, :idx]
  defstruct [:target_system, :target_component, :idx]
  @typedoc "Request a current rally point from MAV. MAV should respond with a RALLY_POINT message. MAV should not respond if the request is invalid."
  @type t :: %APM.Message.RallyFetchPoint{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, idx: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 176, APM.msg_attributes(176), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.idx::integer-size(8)>>}
  end
end


defmodule APM.Message.CompassmotStatus do
  @enforce_keys [:throttle, :current, :interference, :compensationx, :compensationy, :compensationz]
  defstruct [:throttle, :current, :interference, :compensationx, :compensationy, :compensationz]
  @typedoc "Status of compassmot calibration."
  @type t :: %APM.Message.CompassmotStatus{throttle: MAVLink.Types.uint16_t, current: Float32, interference: MAVLink.Types.uint16_t, compensationx: Float32, compensationy: Float32, compensationz: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 177, APM.msg_attributes(177), <<MAVLink.Utils.pack_float(msg.current)::binary-size(4),MAVLink.Utils.pack_float(msg.compensationx)::binary-size(4),MAVLink.Utils.pack_float(msg.compensationy)::binary-size(4),MAVLink.Utils.pack_float(msg.compensationz)::binary-size(4),msg.throttle::little-integer-size(16),msg.interference::little-integer-size(16)>>}
  end
end


defmodule APM.Message.Ahrs2 do
  @enforce_keys [:roll, :pitch, :yaw, :altitude, :lat, :lng]
  defstruct [:roll, :pitch, :yaw, :altitude, :lat, :lng]
  @typedoc "Status of secondary AHRS filter if available."
  @type t :: %APM.Message.Ahrs2{roll: Float32, pitch: Float32, yaw: Float32, altitude: Float32, lat: MAVLink.Types.int32_t, lng: MAVLink.Types.int32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 178, APM.msg_attributes(178), <<MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_float(msg.altitude)::binary-size(4),msg.lat::little-signed-integer-size(32),msg.lng::little-signed-integer-size(32)>>}
  end
end


defmodule APM.Message.CameraStatus do
  @enforce_keys [:time_usec, :target_system, :cam_idx, :img_idx, :event_id, :p1, :p2, :p3, :p4]
  defstruct [:time_usec, :target_system, :cam_idx, :img_idx, :event_id, :p1, :p2, :p3, :p4]
  @typedoc "Camera Event."
  @type t :: %APM.Message.CameraStatus{time_usec: MAVLink.Types.uint64_t, target_system: MAVLink.Types.uint8_t, cam_idx: MAVLink.Types.uint8_t, img_idx: MAVLink.Types.uint16_t, event_id: APM.Types.camera_status_types, p1: Float32, p2: Float32, p3: Float32, p4: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 179, APM.msg_attributes(179), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.p1)::binary-size(4),MAVLink.Utils.pack_float(msg.p2)::binary-size(4),MAVLink.Utils.pack_float(msg.p3)::binary-size(4),MAVLink.Utils.pack_float(msg.p4)::binary-size(4),msg.img_idx::little-integer-size(16),msg.target_system::integer-size(8),msg.cam_idx::integer-size(8),APM.encode(msg.event_id, :camera_status_types)::integer-size(8)>>}
  end
end


defmodule APM.Message.CameraFeedback do
  @enforce_keys [:time_usec, :target_system, :cam_idx, :img_idx, :lat, :lng, :alt_msl, :alt_rel, :roll, :pitch, :yaw, :foc_len, :flags]
  defstruct [:time_usec, :target_system, :cam_idx, :img_idx, :lat, :lng, :alt_msl, :alt_rel, :roll, :pitch, :yaw, :foc_len, :flags, :completed_captures]
  @typedoc "Camera Capture Feedback."
  @type t :: %APM.Message.CameraFeedback{time_usec: MAVLink.Types.uint64_t, target_system: MAVLink.Types.uint8_t, cam_idx: MAVLink.Types.uint8_t, img_idx: MAVLink.Types.uint16_t, lat: MAVLink.Types.int32_t, lng: MAVLink.Types.int32_t, alt_msl: Float32, alt_rel: Float32, roll: Float32, pitch: Float32, yaw: Float32, foc_len: Float32, flags: APM.Types.camera_feedback_flags, completed_captures: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 180, APM.msg_attributes(180), <<msg.time_usec::little-integer-size(64),msg.lat::little-signed-integer-size(32),msg.lng::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.alt_msl)::binary-size(4),MAVLink.Utils.pack_float(msg.alt_rel)::binary-size(4),MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_float(msg.foc_len)::binary-size(4),msg.img_idx::little-integer-size(16),msg.target_system::integer-size(8),msg.cam_idx::integer-size(8),APM.encode(msg.flags, :camera_feedback_flags)::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 180, APM.msg_attributes(180), <<msg.time_usec::little-integer-size(64),msg.lat::little-signed-integer-size(32),msg.lng::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.alt_msl)::binary-size(4),MAVLink.Utils.pack_float(msg.alt_rel)::binary-size(4),MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_float(msg.foc_len)::binary-size(4),msg.img_idx::little-integer-size(16),msg.target_system::integer-size(8),msg.cam_idx::integer-size(8),APM.encode(msg.flags, :camera_feedback_flags)::integer-size(8),msg.completed_captures::little-integer-size(16)>>}
  end
end


defmodule APM.Message.Battery2 do
  @enforce_keys [:voltage, :current_battery]
  defstruct [:voltage, :current_battery]
  @typedoc "2nd Battery status"
  @type t :: %APM.Message.Battery2{voltage: MAVLink.Types.uint16_t, current_battery: MAVLink.Types.int16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 181, APM.msg_attributes(181), <<msg.voltage::little-integer-size(16),msg.current_battery::little-signed-integer-size(16)>>}
  end
end


defmodule APM.Message.Ahrs3 do
  @enforce_keys [:roll, :pitch, :yaw, :altitude, :lat, :lng, :v1, :v2, :v3, :v4]
  defstruct [:roll, :pitch, :yaw, :altitude, :lat, :lng, :v1, :v2, :v3, :v4]
  @typedoc "Status of third AHRS filter if available. This is for ANU research group (Ali and Sean)."
  @type t :: %APM.Message.Ahrs3{roll: Float32, pitch: Float32, yaw: Float32, altitude: Float32, lat: MAVLink.Types.int32_t, lng: MAVLink.Types.int32_t, v1: Float32, v2: Float32, v3: Float32, v4: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 182, APM.msg_attributes(182), <<MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_float(msg.altitude)::binary-size(4),msg.lat::little-signed-integer-size(32),msg.lng::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.v1)::binary-size(4),MAVLink.Utils.pack_float(msg.v2)::binary-size(4),MAVLink.Utils.pack_float(msg.v3)::binary-size(4),MAVLink.Utils.pack_float(msg.v4)::binary-size(4)>>}
  end
end


defmodule APM.Message.AutopilotVersionRequest do
  @enforce_keys [:target_system, :target_component]
  defstruct [:target_system, :target_component]
  @typedoc "Request the autopilot version from the system/component."
  @type t :: %APM.Message.AutopilotVersionRequest{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 183, APM.msg_attributes(183), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
  end
end


defmodule APM.Message.RemoteLogDataBlock do
  @enforce_keys [:target_system, :target_component, :seqno, :data]
  defstruct [:target_system, :target_component, :seqno, :data]
  @typedoc "Send a block of log data to remote location."
  @type t :: %APM.Message.RemoteLogDataBlock{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, seqno: APM.Types.mav_remote_log_data_block_commands, data: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 184, APM.msg_attributes(184), <<APM.encode(msg.seqno, :mav_remote_log_data_block_commands)::little-integer-size(32),msg.target_system::integer-size(8),msg.target_component::integer-size(8),MAVLink.Utils.pack_array(msg.data, 200, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(200)>>}
  end
end


defmodule APM.Message.RemoteLogBlockStatus do
  @enforce_keys [:target_system, :target_component, :seqno, :status]
  defstruct [:target_system, :target_component, :seqno, :status]
  @typedoc "Send Status of each log block that autopilot board might have sent."
  @type t :: %APM.Message.RemoteLogBlockStatus{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, seqno: MAVLink.Types.uint32_t, status: APM.Types.mav_remote_log_data_block_statuses}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 185, APM.msg_attributes(185), <<msg.seqno::little-integer-size(32),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.status, :mav_remote_log_data_block_statuses)::integer-size(8)>>}
  end
end


defmodule APM.Message.LedControl do
  @enforce_keys [:target_system, :target_component, :instance, :pattern, :custom_len, :custom_bytes]
  defstruct [:target_system, :target_component, :instance, :pattern, :custom_len, :custom_bytes]
  @typedoc "Control vehicle LEDs."
  @type t :: %APM.Message.LedControl{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, instance: MAVLink.Types.uint8_t, pattern: MAVLink.Types.uint8_t, custom_len: MAVLink.Types.uint8_t, custom_bytes: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 186, APM.msg_attributes(186), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.instance::integer-size(8),msg.pattern::integer-size(8),msg.custom_len::integer-size(8),MAVLink.Utils.pack_array(msg.custom_bytes, 24, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(24)>>}
  end
end


defmodule APM.Message.MagCalProgress do
  @enforce_keys [:compass_id, :cal_mask, :cal_status, :attempt, :completion_pct, :completion_mask, :direction_x, :direction_y, :direction_z]
  defstruct [:compass_id, :cal_mask, :cal_status, :attempt, :completion_pct, :completion_mask, :direction_x, :direction_y, :direction_z]
  @typedoc "Reports progress of compass calibration."
  @type t :: %APM.Message.MagCalProgress{compass_id: MAVLink.Types.uint8_t, cal_mask: MAVLink.Types.uint8_t, cal_status: APM.Types.mag_cal_status, attempt: MAVLink.Types.uint8_t, completion_pct: MAVLink.Types.uint8_t, completion_mask: [ MAVLink.Types.uint8_t ], direction_x: Float32, direction_y: Float32, direction_z: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 191, APM.msg_attributes(191), <<MAVLink.Utils.pack_float(msg.direction_x)::binary-size(4),MAVLink.Utils.pack_float(msg.direction_y)::binary-size(4),MAVLink.Utils.pack_float(msg.direction_z)::binary-size(4),msg.compass_id::integer-size(8),msg.cal_mask::integer-size(8),APM.encode(msg.cal_status, :mag_cal_status)::integer-size(8),msg.attempt::integer-size(8),msg.completion_pct::integer-size(8),MAVLink.Utils.pack_array(msg.completion_mask, 10, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(10)>>}
  end
end


defmodule APM.Message.MagCalReport do
  @enforce_keys [:compass_id, :cal_mask, :cal_status, :autosaved, :fitness, :ofs_x, :ofs_y, :ofs_z, :diag_x, :diag_y, :diag_z, :offdiag_x, :offdiag_y, :offdiag_z]
  defstruct [:compass_id, :cal_mask, :cal_status, :autosaved, :fitness, :ofs_x, :ofs_y, :ofs_z, :diag_x, :diag_y, :diag_z, :offdiag_x, :offdiag_y, :offdiag_z, :orientation_confidence, :old_orientation, :new_orientation, :scale_factor]
  @typedoc "Reports results of completed compass calibration. Sent until MAG_CAL_ACK received."
  @type t :: %APM.Message.MagCalReport{compass_id: MAVLink.Types.uint8_t, cal_mask: MAVLink.Types.uint8_t, cal_status: APM.Types.mag_cal_status, autosaved: MAVLink.Types.uint8_t, fitness: Float32, ofs_x: Float32, ofs_y: Float32, ofs_z: Float32, diag_x: Float32, diag_y: Float32, diag_z: Float32, offdiag_x: Float32, offdiag_y: Float32, offdiag_z: Float32, orientation_confidence: Float32, old_orientation: APM.Types.mav_sensor_orientation, new_orientation: APM.Types.mav_sensor_orientation, scale_factor: Float32}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 192, APM.msg_attributes(192), <<MAVLink.Utils.pack_float(msg.fitness)::binary-size(4),MAVLink.Utils.pack_float(msg.ofs_x)::binary-size(4),MAVLink.Utils.pack_float(msg.ofs_y)::binary-size(4),MAVLink.Utils.pack_float(msg.ofs_z)::binary-size(4),MAVLink.Utils.pack_float(msg.diag_x)::binary-size(4),MAVLink.Utils.pack_float(msg.diag_y)::binary-size(4),MAVLink.Utils.pack_float(msg.diag_z)::binary-size(4),MAVLink.Utils.pack_float(msg.offdiag_x)::binary-size(4),MAVLink.Utils.pack_float(msg.offdiag_y)::binary-size(4),MAVLink.Utils.pack_float(msg.offdiag_z)::binary-size(4),msg.compass_id::integer-size(8),msg.cal_mask::integer-size(8),APM.encode(msg.cal_status, :mag_cal_status)::integer-size(8),msg.autosaved::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 192, APM.msg_attributes(192), <<MAVLink.Utils.pack_float(msg.fitness)::binary-size(4),MAVLink.Utils.pack_float(msg.ofs_x)::binary-size(4),MAVLink.Utils.pack_float(msg.ofs_y)::binary-size(4),MAVLink.Utils.pack_float(msg.ofs_z)::binary-size(4),MAVLink.Utils.pack_float(msg.diag_x)::binary-size(4),MAVLink.Utils.pack_float(msg.diag_y)::binary-size(4),MAVLink.Utils.pack_float(msg.diag_z)::binary-size(4),MAVLink.Utils.pack_float(msg.offdiag_x)::binary-size(4),MAVLink.Utils.pack_float(msg.offdiag_y)::binary-size(4),MAVLink.Utils.pack_float(msg.offdiag_z)::binary-size(4),msg.compass_id::integer-size(8),msg.cal_mask::integer-size(8),APM.encode(msg.cal_status, :mag_cal_status)::integer-size(8),msg.autosaved::integer-size(8),MAVLink.Utils.pack_float(msg.orientation_confidence)::binary-size(4),APM.encode(msg.old_orientation, :mav_sensor_orientation)::integer-size(8),APM.encode(msg.new_orientation, :mav_sensor_orientation)::integer-size(8),MAVLink.Utils.pack_float(msg.scale_factor)::binary-size(4)>>}
  end
end


defmodule APM.Message.EkfStatusReport do
  @enforce_keys [:flags, :velocity_variance, :pos_horiz_variance, :pos_vert_variance, :compass_variance, :terrain_alt_variance]
  defstruct [:flags, :velocity_variance, :pos_horiz_variance, :pos_vert_variance, :compass_variance, :terrain_alt_variance, :airspeed_variance]
  @typedoc "EKF Status message including flags and variances."
  @type t :: %APM.Message.EkfStatusReport{flags: MapSet.t(APM.Types.ekf_status_flags), velocity_variance: Float32, pos_horiz_variance: Float32, pos_vert_variance: Float32, compass_variance: Float32, terrain_alt_variance: Float32, airspeed_variance: Float32}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 193, APM.msg_attributes(193), <<MAVLink.Utils.pack_float(msg.velocity_variance)::binary-size(4),MAVLink.Utils.pack_float(msg.pos_horiz_variance)::binary-size(4),MAVLink.Utils.pack_float(msg.pos_vert_variance)::binary-size(4),MAVLink.Utils.pack_float(msg.compass_variance)::binary-size(4),MAVLink.Utils.pack_float(msg.terrain_alt_variance)::binary-size(4),APM.pack_bitmask(msg.flags, :ekf_status_flags, &APM.encode/2)::little-integer-size(16)>>}
    def pack(msg, 2), do: {:ok, 193, APM.msg_attributes(193), <<MAVLink.Utils.pack_float(msg.velocity_variance)::binary-size(4),MAVLink.Utils.pack_float(msg.pos_horiz_variance)::binary-size(4),MAVLink.Utils.pack_float(msg.pos_vert_variance)::binary-size(4),MAVLink.Utils.pack_float(msg.compass_variance)::binary-size(4),MAVLink.Utils.pack_float(msg.terrain_alt_variance)::binary-size(4),APM.pack_bitmask(msg.flags, :ekf_status_flags, &APM.encode/2)::little-integer-size(16),MAVLink.Utils.pack_float(msg.airspeed_variance)::binary-size(4)>>}
  end
end


defmodule APM.Message.PidTuning do
  @enforce_keys [:axis, :desired, :achieved, :ff, :p, :i, :d]
  defstruct [:axis, :desired, :achieved, :ff, :p, :i, :d]
  @typedoc "PID tuning information."
  @type t :: %APM.Message.PidTuning{axis: APM.Types.pid_tuning_axis, desired: Float32, achieved: Float32, ff: Float32, p: Float32, i: Float32, d: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 194, APM.msg_attributes(194), <<MAVLink.Utils.pack_float(msg.desired)::binary-size(4),MAVLink.Utils.pack_float(msg.achieved)::binary-size(4),MAVLink.Utils.pack_float(msg.ff)::binary-size(4),MAVLink.Utils.pack_float(msg.p)::binary-size(4),MAVLink.Utils.pack_float(msg.i)::binary-size(4),MAVLink.Utils.pack_float(msg.d)::binary-size(4),APM.encode(msg.axis, :pid_tuning_axis)::integer-size(8)>>}
  end
end


defmodule APM.Message.Deepstall do
  @enforce_keys [:landing_lat, :landing_lon, :path_lat, :path_lon, :arc_entry_lat, :arc_entry_lon, :altitude, :expected_travel_distance, :cross_track_error, :stage]
  defstruct [:landing_lat, :landing_lon, :path_lat, :path_lon, :arc_entry_lat, :arc_entry_lon, :altitude, :expected_travel_distance, :cross_track_error, :stage]
  @typedoc "Deepstall path planning."
  @type t :: %APM.Message.Deepstall{landing_lat: MAVLink.Types.int32_t, landing_lon: MAVLink.Types.int32_t, path_lat: MAVLink.Types.int32_t, path_lon: MAVLink.Types.int32_t, arc_entry_lat: MAVLink.Types.int32_t, arc_entry_lon: MAVLink.Types.int32_t, altitude: Float32, expected_travel_distance: Float32, cross_track_error: Float32, stage: APM.Types.deepstall_stage}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 195, APM.msg_attributes(195), <<msg.landing_lat::little-signed-integer-size(32),msg.landing_lon::little-signed-integer-size(32),msg.path_lat::little-signed-integer-size(32),msg.path_lon::little-signed-integer-size(32),msg.arc_entry_lat::little-signed-integer-size(32),msg.arc_entry_lon::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.altitude)::binary-size(4),MAVLink.Utils.pack_float(msg.expected_travel_distance)::binary-size(4),MAVLink.Utils.pack_float(msg.cross_track_error)::binary-size(4),APM.encode(msg.stage, :deepstall_stage)::integer-size(8)>>}
  end
end


defmodule APM.Message.GimbalReport do
  @enforce_keys [:target_system, :target_component, :delta_time, :delta_angle_x, :delta_angle_y, :delta_angle_z, :delta_velocity_x, :delta_velocity_y, :delta_velocity_z, :joint_roll, :joint_el, :joint_az]
  defstruct [:target_system, :target_component, :delta_time, :delta_angle_x, :delta_angle_y, :delta_angle_z, :delta_velocity_x, :delta_velocity_y, :delta_velocity_z, :joint_roll, :joint_el, :joint_az]
  @typedoc "3 axis gimbal measurements."
  @type t :: %APM.Message.GimbalReport{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, delta_time: Float32, delta_angle_x: Float32, delta_angle_y: Float32, delta_angle_z: Float32, delta_velocity_x: Float32, delta_velocity_y: Float32, delta_velocity_z: Float32, joint_roll: Float32, joint_el: Float32, joint_az: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 200, APM.msg_attributes(200), <<MAVLink.Utils.pack_float(msg.delta_time)::binary-size(4),MAVLink.Utils.pack_float(msg.delta_angle_x)::binary-size(4),MAVLink.Utils.pack_float(msg.delta_angle_y)::binary-size(4),MAVLink.Utils.pack_float(msg.delta_angle_z)::binary-size(4),MAVLink.Utils.pack_float(msg.delta_velocity_x)::binary-size(4),MAVLink.Utils.pack_float(msg.delta_velocity_y)::binary-size(4),MAVLink.Utils.pack_float(msg.delta_velocity_z)::binary-size(4),MAVLink.Utils.pack_float(msg.joint_roll)::binary-size(4),MAVLink.Utils.pack_float(msg.joint_el)::binary-size(4),MAVLink.Utils.pack_float(msg.joint_az)::binary-size(4),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
  end
end


defmodule APM.Message.GimbalControl do
  @enforce_keys [:target_system, :target_component, :demanded_rate_x, :demanded_rate_y, :demanded_rate_z]
  defstruct [:target_system, :target_component, :demanded_rate_x, :demanded_rate_y, :demanded_rate_z]
  @typedoc "Control message for rate gimbal."
  @type t :: %APM.Message.GimbalControl{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, demanded_rate_x: Float32, demanded_rate_y: Float32, demanded_rate_z: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 201, APM.msg_attributes(201), <<MAVLink.Utils.pack_float(msg.demanded_rate_x)::binary-size(4),MAVLink.Utils.pack_float(msg.demanded_rate_y)::binary-size(4),MAVLink.Utils.pack_float(msg.demanded_rate_z)::binary-size(4),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
  end
end


defmodule APM.Message.GimbalTorqueCmdReport do
  @enforce_keys [:target_system, :target_component, :rl_torque_cmd, :el_torque_cmd, :az_torque_cmd]
  defstruct [:target_system, :target_component, :rl_torque_cmd, :el_torque_cmd, :az_torque_cmd]
  @typedoc "100 Hz gimbal torque command telemetry."
  @type t :: %APM.Message.GimbalTorqueCmdReport{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, rl_torque_cmd: MAVLink.Types.int16_t, el_torque_cmd: MAVLink.Types.int16_t, az_torque_cmd: MAVLink.Types.int16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 214, APM.msg_attributes(214), <<msg.rl_torque_cmd::little-signed-integer-size(16),msg.el_torque_cmd::little-signed-integer-size(16),msg.az_torque_cmd::little-signed-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
  end
end


defmodule APM.Message.GoproHeartbeat do
  @enforce_keys [:status, :capture_mode, :flags]
  defstruct [:status, :capture_mode, :flags]
  @typedoc "Heartbeat from a HeroBus attached GoPro."
  @type t :: %APM.Message.GoproHeartbeat{status: APM.Types.gopro_heartbeat_status, capture_mode: APM.Types.gopro_capture_mode, flags: MapSet.t(APM.Types.gopro_heartbeat_flags)}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 215, APM.msg_attributes(215), <<APM.encode(msg.status, :gopro_heartbeat_status)::integer-size(8),APM.encode(msg.capture_mode, :gopro_capture_mode)::integer-size(8),APM.pack_bitmask(msg.flags, :gopro_heartbeat_flags, &APM.encode/2)::integer-size(8)>>}
  end
end


defmodule APM.Message.GoproGetRequest do
  @enforce_keys [:target_system, :target_component, :cmd_id]
  defstruct [:target_system, :target_component, :cmd_id]
  @typedoc "Request a GOPRO_COMMAND response from the GoPro."
  @type t :: %APM.Message.GoproGetRequest{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, cmd_id: APM.Types.gopro_command}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 216, APM.msg_attributes(216), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.cmd_id, :gopro_command)::integer-size(8)>>}
  end
end


defmodule APM.Message.GoproGetResponse do
  @enforce_keys [:cmd_id, :status, :value]
  defstruct [:cmd_id, :status, :value]
  @typedoc "Response from a GOPRO_COMMAND get request."
  @type t :: %APM.Message.GoproGetResponse{cmd_id: APM.Types.gopro_command, status: APM.Types.gopro_request_status, value: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 217, APM.msg_attributes(217), <<APM.encode(msg.cmd_id, :gopro_command)::integer-size(8),APM.encode(msg.status, :gopro_request_status)::integer-size(8),MAVLink.Utils.pack_array(msg.value, 4, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(4)>>}
  end
end


defmodule APM.Message.GoproSetRequest do
  @enforce_keys [:target_system, :target_component, :cmd_id, :value]
  defstruct [:target_system, :target_component, :cmd_id, :value]
  @typedoc "Request to set a GOPRO_COMMAND with a desired."
  @type t :: %APM.Message.GoproSetRequest{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, cmd_id: APM.Types.gopro_command, value: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 218, APM.msg_attributes(218), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.cmd_id, :gopro_command)::integer-size(8),MAVLink.Utils.pack_array(msg.value, 4, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(4)>>}
  end
end


defmodule APM.Message.GoproSetResponse do
  @enforce_keys [:cmd_id, :status]
  defstruct [:cmd_id, :status]
  @typedoc "Response from a GOPRO_COMMAND set request."
  @type t :: %APM.Message.GoproSetResponse{cmd_id: APM.Types.gopro_command, status: APM.Types.gopro_request_status}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 219, APM.msg_attributes(219), <<APM.encode(msg.cmd_id, :gopro_command)::integer-size(8),APM.encode(msg.status, :gopro_request_status)::integer-size(8)>>}
  end
end


defmodule APM.Message.EfiStatus do
  @enforce_keys [:health, :ecu_index, :rpm, :fuel_consumed, :fuel_flow, :engine_load, :throttle_position, :spark_dwell_time, :barometric_pressure, :intake_manifold_pressure, :intake_manifold_temperature, :cylinder_head_temperature, :ignition_timing, :injection_time, :exhaust_gas_temperature, :throttle_out, :pt_compensation]
  defstruct [:health, :ecu_index, :rpm, :fuel_consumed, :fuel_flow, :engine_load, :throttle_position, :spark_dwell_time, :barometric_pressure, :intake_manifold_pressure, :intake_manifold_temperature, :cylinder_head_temperature, :ignition_timing, :injection_time, :exhaust_gas_temperature, :throttle_out, :pt_compensation]
  @typedoc "EFI status output"
  @type t :: %APM.Message.EfiStatus{health: MAVLink.Types.uint8_t, ecu_index: Float32, rpm: Float32, fuel_consumed: Float32, fuel_flow: Float32, engine_load: Float32, throttle_position: Float32, spark_dwell_time: Float32, barometric_pressure: Float32, intake_manifold_pressure: Float32, intake_manifold_temperature: Float32, cylinder_head_temperature: Float32, ignition_timing: Float32, injection_time: Float32, exhaust_gas_temperature: Float32, throttle_out: Float32, pt_compensation: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 225, APM.msg_attributes(225), <<MAVLink.Utils.pack_float(msg.ecu_index)::binary-size(4),MAVLink.Utils.pack_float(msg.rpm)::binary-size(4),MAVLink.Utils.pack_float(msg.fuel_consumed)::binary-size(4),MAVLink.Utils.pack_float(msg.fuel_flow)::binary-size(4),MAVLink.Utils.pack_float(msg.engine_load)::binary-size(4),MAVLink.Utils.pack_float(msg.throttle_position)::binary-size(4),MAVLink.Utils.pack_float(msg.spark_dwell_time)::binary-size(4),MAVLink.Utils.pack_float(msg.barometric_pressure)::binary-size(4),MAVLink.Utils.pack_float(msg.intake_manifold_pressure)::binary-size(4),MAVLink.Utils.pack_float(msg.intake_manifold_temperature)::binary-size(4),MAVLink.Utils.pack_float(msg.cylinder_head_temperature)::binary-size(4),MAVLink.Utils.pack_float(msg.ignition_timing)::binary-size(4),MAVLink.Utils.pack_float(msg.injection_time)::binary-size(4),MAVLink.Utils.pack_float(msg.exhaust_gas_temperature)::binary-size(4),MAVLink.Utils.pack_float(msg.throttle_out)::binary-size(4),MAVLink.Utils.pack_float(msg.pt_compensation)::binary-size(4),msg.health::integer-size(8)>>}
  end
end


defmodule APM.Message.Rpm do
  @enforce_keys [:rpm1, :rpm2]
  defstruct [:rpm1, :rpm2]
  @typedoc "RPM sensor output."
  @type t :: %APM.Message.Rpm{rpm1: Float32, rpm2: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 226, APM.msg_attributes(226), <<MAVLink.Utils.pack_float(msg.rpm1)::binary-size(4),MAVLink.Utils.pack_float(msg.rpm2)::binary-size(4)>>}
  end
end


defmodule APM.Message.EstimatorStatus do
  @enforce_keys [:time_usec, :flags, :vel_ratio, :pos_horiz_ratio, :pos_vert_ratio, :mag_ratio, :hagl_ratio, :tas_ratio, :pos_horiz_accuracy, :pos_vert_accuracy]
  defstruct [:time_usec, :flags, :vel_ratio, :pos_horiz_ratio, :pos_vert_ratio, :mag_ratio, :hagl_ratio, :tas_ratio, :pos_horiz_accuracy, :pos_vert_accuracy]
  @typedoc "Estimator status message including flags, innovation test ratios and estimated accuracies. The flags message is an integer bitmask containing information on which EKF outputs are valid. See the ESTIMATOR_STATUS_FLAGS enum definition for further information. The innovation test ratios show the magnitude of the sensor innovation divided by the innovation check threshold. Under normal operation the innovation test ratios should be below 0.5 with occasional values up to 1.0. Values greater than 1.0 should be rare under normal operation and indicate that a measurement has been rejected by the filter. The user should be notified if an innovation test ratio greater than 1.0 is recorded. Notifications for values in the range between 0.5 and 1.0 should be optional and controllable by the user."
  @type t :: %APM.Message.EstimatorStatus{time_usec: MAVLink.Types.uint64_t, flags: MapSet.t(APM.Types.estimator_status_flags), vel_ratio: Float32, pos_horiz_ratio: Float32, pos_vert_ratio: Float32, mag_ratio: Float32, hagl_ratio: Float32, tas_ratio: Float32, pos_horiz_accuracy: Float32, pos_vert_accuracy: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 230, APM.msg_attributes(230), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.vel_ratio)::binary-size(4),MAVLink.Utils.pack_float(msg.pos_horiz_ratio)::binary-size(4),MAVLink.Utils.pack_float(msg.pos_vert_ratio)::binary-size(4),MAVLink.Utils.pack_float(msg.mag_ratio)::binary-size(4),MAVLink.Utils.pack_float(msg.hagl_ratio)::binary-size(4),MAVLink.Utils.pack_float(msg.tas_ratio)::binary-size(4),MAVLink.Utils.pack_float(msg.pos_horiz_accuracy)::binary-size(4),MAVLink.Utils.pack_float(msg.pos_vert_accuracy)::binary-size(4),APM.pack_bitmask(msg.flags, :estimator_status_flags, &APM.encode/2)::little-integer-size(16)>>}
  end
end


defmodule APM.Message.WindCov do
  @enforce_keys [:time_usec, :wind_x, :wind_y, :wind_z, :var_horiz, :var_vert, :wind_alt, :horiz_accuracy, :vert_accuracy]
  defstruct [:time_usec, :wind_x, :wind_y, :wind_z, :var_horiz, :var_vert, :wind_alt, :horiz_accuracy, :vert_accuracy]
  @typedoc "Wind covariance estimate from vehicle."
  @type t :: %APM.Message.WindCov{time_usec: MAVLink.Types.uint64_t, wind_x: Float32, wind_y: Float32, wind_z: Float32, var_horiz: Float32, var_vert: Float32, wind_alt: Float32, horiz_accuracy: Float32, vert_accuracy: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 231, APM.msg_attributes(231), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.wind_x)::binary-size(4),MAVLink.Utils.pack_float(msg.wind_y)::binary-size(4),MAVLink.Utils.pack_float(msg.wind_z)::binary-size(4),MAVLink.Utils.pack_float(msg.var_horiz)::binary-size(4),MAVLink.Utils.pack_float(msg.var_vert)::binary-size(4),MAVLink.Utils.pack_float(msg.wind_alt)::binary-size(4),MAVLink.Utils.pack_float(msg.horiz_accuracy)::binary-size(4),MAVLink.Utils.pack_float(msg.vert_accuracy)::binary-size(4)>>}
  end
end


defmodule APM.Message.GpsInput do
  @enforce_keys [:time_usec, :gps_id, :ignore_flags, :time_week_ms, :time_week, :fix_type, :lat, :lon, :alt, :hdop, :vdop, :vn, :ve, :vd, :speed_accuracy, :horiz_accuracy, :vert_accuracy, :satellites_visible]
  defstruct [:time_usec, :gps_id, :ignore_flags, :time_week_ms, :time_week, :fix_type, :lat, :lon, :alt, :hdop, :vdop, :vn, :ve, :vd, :speed_accuracy, :horiz_accuracy, :vert_accuracy, :satellites_visible, :yaw]
  @typedoc "GPS sensor input message. This is a raw sensor value sent by the GPS. This is NOT the global position estimate of the system."
  @type t :: %APM.Message.GpsInput{time_usec: MAVLink.Types.uint64_t, gps_id: MAVLink.Types.uint8_t, ignore_flags: MapSet.t(APM.Types.gps_input_ignore_flags), time_week_ms: MAVLink.Types.uint32_t, time_week: MAVLink.Types.uint16_t, fix_type: MAVLink.Types.uint8_t, lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, alt: Float32, hdop: Float32, vdop: Float32, vn: Float32, ve: Float32, vd: Float32, speed_accuracy: Float32, horiz_accuracy: Float32, vert_accuracy: Float32, satellites_visible: MAVLink.Types.uint8_t, yaw: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 232, APM.msg_attributes(232), <<msg.time_usec::little-integer-size(64),msg.time_week_ms::little-integer-size(32),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.alt)::binary-size(4),MAVLink.Utils.pack_float(msg.hdop)::binary-size(4),MAVLink.Utils.pack_float(msg.vdop)::binary-size(4),MAVLink.Utils.pack_float(msg.vn)::binary-size(4),MAVLink.Utils.pack_float(msg.ve)::binary-size(4),MAVLink.Utils.pack_float(msg.vd)::binary-size(4),MAVLink.Utils.pack_float(msg.speed_accuracy)::binary-size(4),MAVLink.Utils.pack_float(msg.horiz_accuracy)::binary-size(4),MAVLink.Utils.pack_float(msg.vert_accuracy)::binary-size(4),APM.pack_bitmask(msg.ignore_flags, :gps_input_ignore_flags, &APM.encode/2)::little-integer-size(16),msg.time_week::little-integer-size(16),msg.gps_id::integer-size(8),msg.fix_type::integer-size(8),msg.satellites_visible::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 232, APM.msg_attributes(232), <<msg.time_usec::little-integer-size(64),msg.time_week_ms::little-integer-size(32),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.alt)::binary-size(4),MAVLink.Utils.pack_float(msg.hdop)::binary-size(4),MAVLink.Utils.pack_float(msg.vdop)::binary-size(4),MAVLink.Utils.pack_float(msg.vn)::binary-size(4),MAVLink.Utils.pack_float(msg.ve)::binary-size(4),MAVLink.Utils.pack_float(msg.vd)::binary-size(4),MAVLink.Utils.pack_float(msg.speed_accuracy)::binary-size(4),MAVLink.Utils.pack_float(msg.horiz_accuracy)::binary-size(4),MAVLink.Utils.pack_float(msg.vert_accuracy)::binary-size(4),APM.pack_bitmask(msg.ignore_flags, :gps_input_ignore_flags, &APM.encode/2)::little-integer-size(16),msg.time_week::little-integer-size(16),msg.gps_id::integer-size(8),msg.fix_type::integer-size(8),msg.satellites_visible::integer-size(8),msg.yaw::little-integer-size(16)>>}
  end
end


defmodule APM.Message.GpsRtcmData do
  @enforce_keys [:flags, :len, :data]
  defstruct [:flags, :len, :data]
  @typedoc "RTCM message for injecting into the onboard GPS (used for DGPS)"
  @type t :: %APM.Message.GpsRtcmData{flags: MAVLink.Types.uint8_t, len: MAVLink.Types.uint8_t, data: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 233, APM.msg_attributes(233), <<msg.flags::integer-size(8),msg.len::integer-size(8),MAVLink.Utils.pack_array(msg.data, 180, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(180)>>}
  end
end


defmodule APM.Message.HighLatency do
  @enforce_keys [:base_mode, :custom_mode, :landed_state, :roll, :pitch, :heading, :throttle, :heading_sp, :latitude, :longitude, :altitude_amsl, :altitude_sp, :airspeed, :airspeed_sp, :groundspeed, :climb_rate, :gps_nsat, :gps_fix_type, :battery_remaining, :temperature, :temperature_air, :failsafe, :wp_num, :wp_distance]
  defstruct [:base_mode, :custom_mode, :landed_state, :roll, :pitch, :heading, :throttle, :heading_sp, :latitude, :longitude, :altitude_amsl, :altitude_sp, :airspeed, :airspeed_sp, :groundspeed, :climb_rate, :gps_nsat, :gps_fix_type, :battery_remaining, :temperature, :temperature_air, :failsafe, :wp_num, :wp_distance]
  @typedoc "Message appropriate for high latency connections like Iridium"
  @type t :: %APM.Message.HighLatency{base_mode: MapSet.t(APM.Types.mav_mode_flag), custom_mode: MAVLink.Types.uint32_t, landed_state: APM.Types.mav_landed_state, roll: MAVLink.Types.int16_t, pitch: MAVLink.Types.int16_t, heading: MAVLink.Types.uint16_t, throttle: MAVLink.Types.int8_t, heading_sp: MAVLink.Types.int16_t, latitude: MAVLink.Types.int32_t, longitude: MAVLink.Types.int32_t, altitude_amsl: MAVLink.Types.int16_t, altitude_sp: MAVLink.Types.int16_t, airspeed: MAVLink.Types.uint8_t, airspeed_sp: MAVLink.Types.uint8_t, groundspeed: MAVLink.Types.uint8_t, climb_rate: MAVLink.Types.int8_t, gps_nsat: MAVLink.Types.uint8_t, gps_fix_type: APM.Types.gps_fix_type, battery_remaining: MAVLink.Types.uint8_t, temperature: MAVLink.Types.int8_t, temperature_air: MAVLink.Types.int8_t, failsafe: MAVLink.Types.uint8_t, wp_num: MAVLink.Types.uint8_t, wp_distance: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 234, APM.msg_attributes(234), <<msg.custom_mode::little-integer-size(32),msg.latitude::little-signed-integer-size(32),msg.longitude::little-signed-integer-size(32),msg.roll::little-signed-integer-size(16),msg.pitch::little-signed-integer-size(16),msg.heading::little-integer-size(16),msg.heading_sp::little-signed-integer-size(16),msg.altitude_amsl::little-signed-integer-size(16),msg.altitude_sp::little-signed-integer-size(16),msg.wp_distance::little-integer-size(16),APM.pack_bitmask(msg.base_mode, :mav_mode_flag, &APM.encode/2)::integer-size(8),APM.encode(msg.landed_state, :mav_landed_state)::integer-size(8),msg.throttle::signed-integer-size(8),msg.airspeed::integer-size(8),msg.airspeed_sp::integer-size(8),msg.groundspeed::integer-size(8),msg.climb_rate::signed-integer-size(8),msg.gps_nsat::integer-size(8),APM.encode(msg.gps_fix_type, :gps_fix_type)::integer-size(8),msg.battery_remaining::integer-size(8),msg.temperature::signed-integer-size(8),msg.temperature_air::signed-integer-size(8),msg.failsafe::integer-size(8),msg.wp_num::integer-size(8)>>}
  end
end


defmodule APM.Message.HighLatency2 do
  @enforce_keys [:timestamp, :type, :autopilot, :custom_mode, :latitude, :longitude, :altitude, :target_altitude, :heading, :target_heading, :target_distance, :throttle, :airspeed, :airspeed_sp, :groundspeed, :windspeed, :wind_heading, :eph, :epv, :temperature_air, :climb_rate, :battery, :wp_num, :failure_flags, :custom0, :custom1, :custom2]
  defstruct [:timestamp, :type, :autopilot, :custom_mode, :latitude, :longitude, :altitude, :target_altitude, :heading, :target_heading, :target_distance, :throttle, :airspeed, :airspeed_sp, :groundspeed, :windspeed, :wind_heading, :eph, :epv, :temperature_air, :climb_rate, :battery, :wp_num, :failure_flags, :custom0, :custom1, :custom2]
  @typedoc "Message appropriate for high latency connections like Iridium (version 2)"
  @type t :: %APM.Message.HighLatency2{timestamp: MAVLink.Types.uint32_t, type: APM.Types.mav_type, autopilot: APM.Types.mav_autopilot, custom_mode: MAVLink.Types.uint16_t, latitude: MAVLink.Types.int32_t, longitude: MAVLink.Types.int32_t, altitude: MAVLink.Types.int16_t, target_altitude: MAVLink.Types.int16_t, heading: MAVLink.Types.uint8_t, target_heading: MAVLink.Types.uint8_t, target_distance: MAVLink.Types.uint16_t, throttle: MAVLink.Types.uint8_t, airspeed: MAVLink.Types.uint8_t, airspeed_sp: MAVLink.Types.uint8_t, groundspeed: MAVLink.Types.uint8_t, windspeed: MAVLink.Types.uint8_t, wind_heading: MAVLink.Types.uint8_t, eph: MAVLink.Types.uint8_t, epv: MAVLink.Types.uint8_t, temperature_air: MAVLink.Types.int8_t, climb_rate: MAVLink.Types.int8_t, battery: MAVLink.Types.int8_t, wp_num: MAVLink.Types.uint16_t, failure_flags: MapSet.t(APM.Types.hl_failure_flag), custom0: MAVLink.Types.int8_t, custom1: MAVLink.Types.int8_t, custom2: MAVLink.Types.int8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 235, APM.msg_attributes(235), <<msg.timestamp::little-integer-size(32),msg.latitude::little-signed-integer-size(32),msg.longitude::little-signed-integer-size(32),msg.custom_mode::little-integer-size(16),msg.altitude::little-signed-integer-size(16),msg.target_altitude::little-signed-integer-size(16),msg.target_distance::little-integer-size(16),msg.wp_num::little-integer-size(16),APM.pack_bitmask(msg.failure_flags, :hl_failure_flag, &APM.encode/2)::little-integer-size(16),APM.encode(msg.type, :mav_type)::integer-size(8),APM.encode(msg.autopilot, :mav_autopilot)::integer-size(8),msg.heading::integer-size(8),msg.target_heading::integer-size(8),msg.throttle::integer-size(8),msg.airspeed::integer-size(8),msg.airspeed_sp::integer-size(8),msg.groundspeed::integer-size(8),msg.windspeed::integer-size(8),msg.wind_heading::integer-size(8),msg.eph::integer-size(8),msg.epv::integer-size(8),msg.temperature_air::signed-integer-size(8),msg.climb_rate::signed-integer-size(8),msg.battery::signed-integer-size(8),msg.custom0::signed-integer-size(8),msg.custom1::signed-integer-size(8),msg.custom2::signed-integer-size(8)>>}
  end
end


defmodule APM.Message.Vibration do
  @enforce_keys [:time_usec, :vibration_x, :vibration_y, :vibration_z, :clipping_0, :clipping_1, :clipping_2]
  defstruct [:time_usec, :vibration_x, :vibration_y, :vibration_z, :clipping_0, :clipping_1, :clipping_2]
  @typedoc "Vibration levels and accelerometer clipping"
  @type t :: %APM.Message.Vibration{time_usec: MAVLink.Types.uint64_t, vibration_x: Float32, vibration_y: Float32, vibration_z: Float32, clipping_0: MAVLink.Types.uint32_t, clipping_1: MAVLink.Types.uint32_t, clipping_2: MAVLink.Types.uint32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 241, APM.msg_attributes(241), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.vibration_x)::binary-size(4),MAVLink.Utils.pack_float(msg.vibration_y)::binary-size(4),MAVLink.Utils.pack_float(msg.vibration_z)::binary-size(4),msg.clipping_0::little-integer-size(32),msg.clipping_1::little-integer-size(32),msg.clipping_2::little-integer-size(32)>>}
  end
end


defmodule APM.Message.HomePosition do
  @enforce_keys [:latitude, :longitude, :altitude, :x, :y, :z, :q, :approach_x, :approach_y, :approach_z]
  defstruct [:latitude, :longitude, :altitude, :x, :y, :z, :q, :approach_x, :approach_y, :approach_z, :time_usec]
  @typedoc "This message can be requested by sending the MAV_CMD_GET_HOME_POSITION command. The position the system will return to and land on. The position is set automatically by the system during the takeoff in case it was not explicitly set by the operator before or after. The global and local positions encode the position in the respective coordinate frames, while the q parameter encodes the orientation of the surface. Under normal conditions it describes the heading and terrain slope, which can be used by the aircraft to adjust the approach. The approach 3D vector describes the point to which the system should fly in normal flight mode and then perform a landing sequence along the vector."
  @type t :: %APM.Message.HomePosition{latitude: MAVLink.Types.int32_t, longitude: MAVLink.Types.int32_t, altitude: MAVLink.Types.int32_t, x: Float32, y: Float32, z: Float32, q: [ Float32 ], approach_x: Float32, approach_y: Float32, approach_z: Float32, time_usec: MAVLink.Types.uint64_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 242, APM.msg_attributes(242), <<msg.latitude::little-signed-integer-size(32),msg.longitude::little-signed-integer-size(32),msg.altitude::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_array(msg.q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),MAVLink.Utils.pack_float(msg.approach_x)::binary-size(4),MAVLink.Utils.pack_float(msg.approach_y)::binary-size(4),MAVLink.Utils.pack_float(msg.approach_z)::binary-size(4)>>}
    def pack(msg, 2), do: {:ok, 242, APM.msg_attributes(242), <<msg.latitude::little-signed-integer-size(32),msg.longitude::little-signed-integer-size(32),msg.altitude::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_array(msg.q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),MAVLink.Utils.pack_float(msg.approach_x)::binary-size(4),MAVLink.Utils.pack_float(msg.approach_y)::binary-size(4),MAVLink.Utils.pack_float(msg.approach_z)::binary-size(4),msg.time_usec::little-integer-size(64)>>}
  end
end


defmodule APM.Message.SetHomePosition do
  @enforce_keys [:target_system, :latitude, :longitude, :altitude, :x, :y, :z, :q, :approach_x, :approach_y, :approach_z]
  defstruct [:target_system, :latitude, :longitude, :altitude, :x, :y, :z, :q, :approach_x, :approach_y, :approach_z, :time_usec]
  @typedoc "The position the system will return to and land on. The position is set automatically by the system during the takeoff in case it was not explicitly set by the operator before or after. The global and local positions encode the position in the respective coordinate frames, while the q parameter encodes the orientation of the surface. Under normal conditions it describes the heading and terrain slope, which can be used by the aircraft to adjust the approach. The approach 3D vector describes the point to which the system should fly in normal flight mode and then perform a landing sequence along the vector."
  @type t :: %APM.Message.SetHomePosition{target_system: MAVLink.Types.uint8_t, latitude: MAVLink.Types.int32_t, longitude: MAVLink.Types.int32_t, altitude: MAVLink.Types.int32_t, x: Float32, y: Float32, z: Float32, q: [ Float32 ], approach_x: Float32, approach_y: Float32, approach_z: Float32, time_usec: MAVLink.Types.uint64_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 243, APM.msg_attributes(243), <<msg.latitude::little-signed-integer-size(32),msg.longitude::little-signed-integer-size(32),msg.altitude::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_array(msg.q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),MAVLink.Utils.pack_float(msg.approach_x)::binary-size(4),MAVLink.Utils.pack_float(msg.approach_y)::binary-size(4),MAVLink.Utils.pack_float(msg.approach_z)::binary-size(4),msg.target_system::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 243, APM.msg_attributes(243), <<msg.latitude::little-signed-integer-size(32),msg.longitude::little-signed-integer-size(32),msg.altitude::little-signed-integer-size(32),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_array(msg.q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),MAVLink.Utils.pack_float(msg.approach_x)::binary-size(4),MAVLink.Utils.pack_float(msg.approach_y)::binary-size(4),MAVLink.Utils.pack_float(msg.approach_z)::binary-size(4),msg.target_system::integer-size(8),msg.time_usec::little-integer-size(64)>>}
  end
end


defmodule APM.Message.MessageInterval do
  @enforce_keys [:message_id, :interval_us]
  defstruct [:message_id, :interval_us]
  @typedoc "The interval between messages for a particular MAVLink message ID. This message is the response to the MAV_CMD_GET_MESSAGE_INTERVAL command. This interface replaces DATA_STREAM."
  @type t :: %APM.Message.MessageInterval{message_id: MAVLink.Types.uint16_t, interval_us: MAVLink.Types.int32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 244, APM.msg_attributes(244), <<msg.interval_us::little-signed-integer-size(32),msg.message_id::little-integer-size(16)>>}
  end
end


defmodule APM.Message.ExtendedSysState do
  @enforce_keys [:vtol_state, :landed_state]
  defstruct [:vtol_state, :landed_state]
  @typedoc "Provides state for additional features"
  @type t :: %APM.Message.ExtendedSysState{vtol_state: APM.Types.mav_vtol_state, landed_state: APM.Types.mav_landed_state}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 245, APM.msg_attributes(245), <<APM.encode(msg.vtol_state, :mav_vtol_state)::integer-size(8),APM.encode(msg.landed_state, :mav_landed_state)::integer-size(8)>>}
  end
end


defmodule APM.Message.AdsbVehicle do
  @enforce_keys [:icao_address, :lat, :lon, :altitude_type, :altitude, :heading, :hor_velocity, :ver_velocity, :callsign, :emitter_type, :tslc, :flags, :squawk]
  defstruct [:icao_address, :lat, :lon, :altitude_type, :altitude, :heading, :hor_velocity, :ver_velocity, :callsign, :emitter_type, :tslc, :flags, :squawk]
  @typedoc "The location and information of an ADSB vehicle"
  @type t :: %APM.Message.AdsbVehicle{icao_address: MAVLink.Types.uint32_t, lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, altitude_type: APM.Types.adsb_altitude_type, altitude: MAVLink.Types.int32_t, heading: MAVLink.Types.uint16_t, hor_velocity: MAVLink.Types.uint16_t, ver_velocity: MAVLink.Types.int16_t, callsign: [ char ], emitter_type: APM.Types.adsb_emitter_type, tslc: MAVLink.Types.uint8_t, flags: MapSet.t(APM.Types.adsb_flags), squawk: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 246, APM.msg_attributes(246), <<msg.icao_address::little-integer-size(32),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.altitude::little-signed-integer-size(32),msg.heading::little-integer-size(16),msg.hor_velocity::little-integer-size(16),msg.ver_velocity::little-signed-integer-size(16),APM.pack_bitmask(msg.flags, :adsb_flags, &APM.encode/2)::little-integer-size(16),msg.squawk::little-integer-size(16),APM.encode(msg.altitude_type, :adsb_altitude_type)::integer-size(8),MAVLink.Utils.pack_string(msg.callsign, 9)::binary-size(9),APM.encode(msg.emitter_type, :adsb_emitter_type)::integer-size(8),msg.tslc::integer-size(8)>>}
  end
end


defmodule APM.Message.Collision do
  @enforce_keys [:src, :id, :action, :threat_level, :time_to_minimum_delta, :altitude_minimum_delta, :horizontal_minimum_delta]
  defstruct [:src, :id, :action, :threat_level, :time_to_minimum_delta, :altitude_minimum_delta, :horizontal_minimum_delta]
  @typedoc "Information about a potential collision"
  @type t :: %APM.Message.Collision{src: APM.Types.mav_collision_src, id: MAVLink.Types.uint32_t, action: APM.Types.mav_collision_action, threat_level: APM.Types.mav_collision_threat_level, time_to_minimum_delta: Float32, altitude_minimum_delta: Float32, horizontal_minimum_delta: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 247, APM.msg_attributes(247), <<msg.id::little-integer-size(32),MAVLink.Utils.pack_float(msg.time_to_minimum_delta)::binary-size(4),MAVLink.Utils.pack_float(msg.altitude_minimum_delta)::binary-size(4),MAVLink.Utils.pack_float(msg.horizontal_minimum_delta)::binary-size(4),APM.encode(msg.src, :mav_collision_src)::integer-size(8),APM.encode(msg.action, :mav_collision_action)::integer-size(8),APM.encode(msg.threat_level, :mav_collision_threat_level)::integer-size(8)>>}
  end
end


defmodule APM.Message.V2Extension do
  @enforce_keys [:target_network, :target_system, :target_component, :message_type, :payload]
  defstruct [:target_network, :target_system, :target_component, :message_type, :payload]
  @typedoc "Message implementing parts of the V2 payload specs in V1 frames for transitional support."
  @type t :: %APM.Message.V2Extension{target_network: MAVLink.Types.uint8_t, target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, message_type: MAVLink.Types.uint16_t, payload: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 248, APM.msg_attributes(248), <<msg.message_type::little-integer-size(16),msg.target_network::integer-size(8),msg.target_system::integer-size(8),msg.target_component::integer-size(8),MAVLink.Utils.pack_array(msg.payload, 249, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(249)>>}
  end
end


defmodule APM.Message.MemoryVect do
  @enforce_keys [:address, :ver, :type, :value]
  defstruct [:address, :ver, :type, :value]
  @typedoc "Send raw controller memory. The use of this message is discouraged for normal packets, but a quite efficient way for testing new messages and getting experimental debug output."
  @type t :: %APM.Message.MemoryVect{address: MAVLink.Types.uint16_t, ver: MAVLink.Types.uint8_t, type: MAVLink.Types.uint8_t, value: [ MAVLink.Types.int8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 249, APM.msg_attributes(249), <<msg.address::little-integer-size(16),msg.ver::integer-size(8),msg.type::integer-size(8),MAVLink.Utils.pack_array(msg.value, 32, fn(elem) -> <<elem::signed-integer-size(8)>> end)::binary-size(32)>>}
  end
end


defmodule APM.Message.DebugVect do
  @enforce_keys [:name, :time_usec, :x, :y, :z]
  defstruct [:name, :time_usec, :x, :y, :z]
  @typedoc "To debug something using a named 3D vector."
  @type t :: %APM.Message.DebugVect{name: [ char ], time_usec: MAVLink.Types.uint64_t, x: Float32, y: Float32, z: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 250, APM.msg_attributes(250), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_string(msg.name, 10)::binary-size(10)>>}
  end
end


defmodule APM.Message.NamedValueFloat do
  @enforce_keys [:time_boot_ms, :name, :value]
  defstruct [:time_boot_ms, :name, :value]
  @typedoc "Send a key-value pair as float. The use of this message is discouraged for normal packets, but a quite efficient way for testing new messages and getting experimental debug output."
  @type t :: %APM.Message.NamedValueFloat{time_boot_ms: MAVLink.Types.uint32_t, name: [ char ], value: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 251, APM.msg_attributes(251), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.value)::binary-size(4),MAVLink.Utils.pack_string(msg.name, 10)::binary-size(10)>>}
  end
end


defmodule APM.Message.NamedValueInt do
  @enforce_keys [:time_boot_ms, :name, :value]
  defstruct [:time_boot_ms, :name, :value]
  @typedoc "Send a key-value pair as integer. The use of this message is discouraged for normal packets, but a quite efficient way for testing new messages and getting experimental debug output."
  @type t :: %APM.Message.NamedValueInt{time_boot_ms: MAVLink.Types.uint32_t, name: [ char ], value: MAVLink.Types.int32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 252, APM.msg_attributes(252), <<msg.time_boot_ms::little-integer-size(32),msg.value::little-signed-integer-size(32),MAVLink.Utils.pack_string(msg.name, 10)::binary-size(10)>>}
  end
end


defmodule APM.Message.Statustext do
  @enforce_keys [:severity, :text]
  defstruct [:severity, :text, :id, :chunk_seq]
  @typedoc "Status text message. These messages are printed in yellow in the COMM console of QGroundControl. WARNING: They consume quite some bandwidth, so use only for important status and error messages. If implemented wisely, these messages are buffered on the MCU and sent only at a limited rate (e.g. 10 Hz)."
  @type t :: %APM.Message.Statustext{severity: APM.Types.mav_severity, text: [ char ], id: MAVLink.Types.uint16_t, chunk_seq: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 253, APM.msg_attributes(253), <<APM.encode(msg.severity, :mav_severity)::integer-size(8),MAVLink.Utils.pack_string(msg.text, 50)::binary-size(50)>>}
    def pack(msg, 2), do: {:ok, 253, APM.msg_attributes(253), <<APM.encode(msg.severity, :mav_severity)::integer-size(8),MAVLink.Utils.pack_string(msg.text, 50)::binary-size(50),msg.id::little-integer-size(16),msg.chunk_seq::integer-size(8)>>}
  end
end


defmodule APM.Message.Debug do
  @enforce_keys [:time_boot_ms, :ind, :value]
  defstruct [:time_boot_ms, :ind, :value]
  @typedoc "Send a debug value. The index is used to discriminate between values. These values show up in the plot of QGroundControl as DEBUG N."
  @type t :: %APM.Message.Debug{time_boot_ms: MAVLink.Types.uint32_t, ind: MAVLink.Types.uint8_t, value: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 254, APM.msg_attributes(254), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.value)::binary-size(4),msg.ind::integer-size(8)>>}
  end
end


defmodule APM.Message.SetupSigning do
  @enforce_keys [:target_system, :target_component, :secret_key, :initial_timestamp]
  defstruct [:target_system, :target_component, :secret_key, :initial_timestamp]
  @typedoc "Setup a MAVLink2 signing key. If called with secret_key of all zero and zero initial_timestamp will disable signing"
  @type t :: %APM.Message.SetupSigning{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, secret_key: [ MAVLink.Types.uint8_t ], initial_timestamp: MAVLink.Types.uint64_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 256, APM.msg_attributes(256), <<msg.initial_timestamp::little-integer-size(64),msg.target_system::integer-size(8),msg.target_component::integer-size(8),MAVLink.Utils.pack_array(msg.secret_key, 32, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(32)>>}
  end
end


defmodule APM.Message.ButtonChange do
  @enforce_keys [:time_boot_ms, :last_change_ms, :state]
  defstruct [:time_boot_ms, :last_change_ms, :state]
  @typedoc "Report button state change."
  @type t :: %APM.Message.ButtonChange{time_boot_ms: MAVLink.Types.uint32_t, last_change_ms: MAVLink.Types.uint32_t, state: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 257, APM.msg_attributes(257), <<msg.time_boot_ms::little-integer-size(32),msg.last_change_ms::little-integer-size(32),msg.state::integer-size(8)>>}
  end
end


defmodule APM.Message.PlayTune do
  @enforce_keys [:target_system, :target_component, :tune]
  defstruct [:target_system, :target_component, :tune, :tune2]
  @typedoc "Control vehicle tone generation (buzzer)."
  @type t :: %APM.Message.PlayTune{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, tune: [ char ], tune2: [ char ]}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 258, APM.msg_attributes(258), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8),MAVLink.Utils.pack_string(msg.tune, 30)::binary-size(30)>>}
    def pack(msg, 2), do: {:ok, 258, APM.msg_attributes(258), <<msg.target_system::integer-size(8),msg.target_component::integer-size(8),MAVLink.Utils.pack_string(msg.tune, 30)::binary-size(30),MAVLink.Utils.pack_string(msg.tune2, 200)::binary-size(200)>>}
  end
end


defmodule APM.Message.CameraInformation do
  @enforce_keys [:time_boot_ms, :vendor_name, :model_name, :firmware_version, :focal_length, :sensor_size_h, :sensor_size_v, :resolution_h, :resolution_v, :lens_id, :flags, :cam_definition_version, :cam_definition_uri]
  defstruct [:time_boot_ms, :vendor_name, :model_name, :firmware_version, :focal_length, :sensor_size_h, :sensor_size_v, :resolution_h, :resolution_v, :lens_id, :flags, :cam_definition_version, :cam_definition_uri]
  @typedoc "Information about a camera. Can be requested with a MAV_CMD_REQUEST_MESSAGE command."
  @type t :: %APM.Message.CameraInformation{time_boot_ms: MAVLink.Types.uint32_t, vendor_name: [ MAVLink.Types.uint8_t ], model_name: [ MAVLink.Types.uint8_t ], firmware_version: MAVLink.Types.uint32_t, focal_length: Float32, sensor_size_h: Float32, sensor_size_v: Float32, resolution_h: MAVLink.Types.uint16_t, resolution_v: MAVLink.Types.uint16_t, lens_id: MAVLink.Types.uint8_t, flags: MapSet.t(APM.Types.camera_cap_flags), cam_definition_version: MAVLink.Types.uint16_t, cam_definition_uri: [ char ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 259, APM.msg_attributes(259), <<msg.time_boot_ms::little-integer-size(32),msg.firmware_version::little-integer-size(32),MAVLink.Utils.pack_float(msg.focal_length)::binary-size(4),MAVLink.Utils.pack_float(msg.sensor_size_h)::binary-size(4),MAVLink.Utils.pack_float(msg.sensor_size_v)::binary-size(4),APM.pack_bitmask(msg.flags, :camera_cap_flags, &APM.encode/2)::little-integer-size(32),msg.resolution_h::little-integer-size(16),msg.resolution_v::little-integer-size(16),msg.cam_definition_version::little-integer-size(16),MAVLink.Utils.pack_array(msg.vendor_name, 32, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(32),MAVLink.Utils.pack_array(msg.model_name, 32, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(32),msg.lens_id::integer-size(8),MAVLink.Utils.pack_string(msg.cam_definition_uri, 140)::binary-size(140)>>}
  end
end


defmodule APM.Message.CameraSettings do
  @enforce_keys [:time_boot_ms, :mode_id]
  defstruct [:time_boot_ms, :mode_id, :zoomlevel, :focuslevel]
  @typedoc "Settings of a camera. Can be requested with a MAV_CMD_REQUEST_MESSAGE command."
  @type t :: %APM.Message.CameraSettings{time_boot_ms: MAVLink.Types.uint32_t, mode_id: APM.Types.camera_mode, zoomlevel: Float32, focuslevel: Float32}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 260, APM.msg_attributes(260), <<msg.time_boot_ms::little-integer-size(32),APM.encode(msg.mode_id, :camera_mode)::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 260, APM.msg_attributes(260), <<msg.time_boot_ms::little-integer-size(32),APM.encode(msg.mode_id, :camera_mode)::integer-size(8),MAVLink.Utils.pack_float(msg.zoomlevel)::binary-size(4),MAVLink.Utils.pack_float(msg.focuslevel)::binary-size(4)>>}
  end
end


defmodule APM.Message.StorageInformation do
  @enforce_keys [:time_boot_ms, :storage_id, :storage_count, :status, :total_capacity, :used_capacity, :available_capacity, :read_speed, :write_speed]
  defstruct [:time_boot_ms, :storage_id, :storage_count, :status, :total_capacity, :used_capacity, :available_capacity, :read_speed, :write_speed]
  @typedoc "Information about a storage medium. This message is sent in response to a request with MAV_CMD_REQUEST_MESSAGE and whenever the status of the storage changes (STORAGE_STATUS). Use MAV_CMD_REQUEST_MESSAGE.param2 to indicate the index/id of requested storage: 0 for all, 1 for first, 2 for second, etc."
  @type t :: %APM.Message.StorageInformation{time_boot_ms: MAVLink.Types.uint32_t, storage_id: MAVLink.Types.uint8_t, storage_count: MAVLink.Types.uint8_t, status: APM.Types.storage_status, total_capacity: Float32, used_capacity: Float32, available_capacity: Float32, read_speed: Float32, write_speed: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 261, APM.msg_attributes(261), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.total_capacity)::binary-size(4),MAVLink.Utils.pack_float(msg.used_capacity)::binary-size(4),MAVLink.Utils.pack_float(msg.available_capacity)::binary-size(4),MAVLink.Utils.pack_float(msg.read_speed)::binary-size(4),MAVLink.Utils.pack_float(msg.write_speed)::binary-size(4),msg.storage_id::integer-size(8),msg.storage_count::integer-size(8),APM.encode(msg.status, :storage_status)::integer-size(8)>>}
  end
end


defmodule APM.Message.CameraCaptureStatus do
  @enforce_keys [:time_boot_ms, :image_status, :video_status, :image_interval, :recording_time_ms, :available_capacity]
  defstruct [:time_boot_ms, :image_status, :video_status, :image_interval, :recording_time_ms, :available_capacity, :image_count]
  @typedoc "Information about the status of a capture. Can be requested with a MAV_CMD_REQUEST_MESSAGE command."
  @type t :: %APM.Message.CameraCaptureStatus{time_boot_ms: MAVLink.Types.uint32_t, image_status: MAVLink.Types.uint8_t, video_status: MAVLink.Types.uint8_t, image_interval: Float32, recording_time_ms: MAVLink.Types.uint32_t, available_capacity: Float32, image_count: MAVLink.Types.int32_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 262, APM.msg_attributes(262), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.image_interval)::binary-size(4),msg.recording_time_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.available_capacity)::binary-size(4),msg.image_status::integer-size(8),msg.video_status::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 262, APM.msg_attributes(262), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.image_interval)::binary-size(4),msg.recording_time_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.available_capacity)::binary-size(4),msg.image_status::integer-size(8),msg.video_status::integer-size(8),msg.image_count::little-signed-integer-size(32)>>}
  end
end


defmodule APM.Message.CameraImageCaptured do
  @enforce_keys [:time_boot_ms, :time_utc, :camera_id, :lat, :lon, :alt, :relative_alt, :q, :image_index, :capture_result, :file_url]
  defstruct [:time_boot_ms, :time_utc, :camera_id, :lat, :lon, :alt, :relative_alt, :q, :image_index, :capture_result, :file_url]
  @typedoc "Information about a captured image. This is emitted every time a message is captured. It may be re-requested using MAV_CMD_REQUEST_MESSAGE, using param2 to indicate the sequence number for the missing image."
  @type t :: %APM.Message.CameraImageCaptured{time_boot_ms: MAVLink.Types.uint32_t, time_utc: MAVLink.Types.uint64_t, camera_id: MAVLink.Types.uint8_t, lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, alt: MAVLink.Types.int32_t, relative_alt: MAVLink.Types.int32_t, q: [ Float32 ], image_index: MAVLink.Types.int32_t, capture_result: MAVLink.Types.int8_t, file_url: [ char ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 263, APM.msg_attributes(263), <<msg.time_utc::little-integer-size(64),msg.time_boot_ms::little-integer-size(32),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.alt::little-signed-integer-size(32),msg.relative_alt::little-signed-integer-size(32),MAVLink.Utils.pack_array(msg.q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),msg.image_index::little-signed-integer-size(32),msg.camera_id::integer-size(8),msg.capture_result::signed-integer-size(8),MAVLink.Utils.pack_string(msg.file_url, 205)::binary-size(205)>>}
  end
end


defmodule APM.Message.FlightInformation do
  @enforce_keys [:time_boot_ms, :arming_time_utc, :takeoff_time_utc, :flight_uuid]
  defstruct [:time_boot_ms, :arming_time_utc, :takeoff_time_utc, :flight_uuid]
  @typedoc "Information about flight since last arming."
  @type t :: %APM.Message.FlightInformation{time_boot_ms: MAVLink.Types.uint32_t, arming_time_utc: MAVLink.Types.uint64_t, takeoff_time_utc: MAVLink.Types.uint64_t, flight_uuid: MAVLink.Types.uint64_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 264, APM.msg_attributes(264), <<msg.arming_time_utc::little-integer-size(64),msg.takeoff_time_utc::little-integer-size(64),msg.flight_uuid::little-integer-size(64),msg.time_boot_ms::little-integer-size(32)>>}
  end
end


defmodule APM.Message.MountOrientation do
  @enforce_keys [:time_boot_ms, :roll, :pitch, :yaw]
  defstruct [:time_boot_ms, :roll, :pitch, :yaw, :yaw_absolute]
  @typedoc "Orientation of a mount"
  @type t :: %APM.Message.MountOrientation{time_boot_ms: MAVLink.Types.uint32_t, roll: Float32, pitch: Float32, yaw: Float32, yaw_absolute: Float32}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 265, APM.msg_attributes(265), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4)>>}
    def pack(msg, 2), do: {:ok, 265, APM.msg_attributes(265), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.roll)::binary-size(4),MAVLink.Utils.pack_float(msg.pitch)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw)::binary-size(4),MAVLink.Utils.pack_float(msg.yaw_absolute)::binary-size(4)>>}
  end
end


defmodule APM.Message.LoggingData do
  @enforce_keys [:target_system, :target_component, :sequence, :length, :first_message_offset, :data]
  defstruct [:target_system, :target_component, :sequence, :length, :first_message_offset, :data]
  @typedoc "A message containing logged data (see also MAV_CMD_LOGGING_START)"
  @type t :: %APM.Message.LoggingData{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, sequence: MAVLink.Types.uint16_t, length: MAVLink.Types.uint8_t, first_message_offset: MAVLink.Types.uint8_t, data: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 266, APM.msg_attributes(266), <<msg.sequence::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.length::integer-size(8),msg.first_message_offset::integer-size(8),MAVLink.Utils.pack_array(msg.data, 249, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(249)>>}
  end
end


defmodule APM.Message.LoggingDataAcked do
  @enforce_keys [:target_system, :target_component, :sequence, :length, :first_message_offset, :data]
  defstruct [:target_system, :target_component, :sequence, :length, :first_message_offset, :data]
  @typedoc "A message containing logged data which requires a LOGGING_ACK to be sent back"
  @type t :: %APM.Message.LoggingDataAcked{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, sequence: MAVLink.Types.uint16_t, length: MAVLink.Types.uint8_t, first_message_offset: MAVLink.Types.uint8_t, data: [ MAVLink.Types.uint8_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 267, APM.msg_attributes(267), <<msg.sequence::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.length::integer-size(8),msg.first_message_offset::integer-size(8),MAVLink.Utils.pack_array(msg.data, 249, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(249)>>}
  end
end


defmodule APM.Message.LoggingAck do
  @enforce_keys [:target_system, :target_component, :sequence]
  defstruct [:target_system, :target_component, :sequence]
  @typedoc "An ack for a LOGGING_DATA_ACKED message"
  @type t :: %APM.Message.LoggingAck{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, sequence: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 268, APM.msg_attributes(268), <<msg.sequence::little-integer-size(16),msg.target_system::integer-size(8),msg.target_component::integer-size(8)>>}
  end
end


defmodule APM.Message.VideoStreamInformation do
  @enforce_keys [:stream_id, :count, :type, :flags, :framerate, :resolution_h, :resolution_v, :bitrate, :rotation, :hfov, :name, :uri]
  defstruct [:stream_id, :count, :type, :flags, :framerate, :resolution_h, :resolution_v, :bitrate, :rotation, :hfov, :name, :uri]
  @typedoc "Information about video stream. It may be requested using MAV_CMD_REQUEST_MESSAGE, where param2 indicates the video stream id: 0 for all streams, 1 for first, 2 for second, etc."
  @type t :: %APM.Message.VideoStreamInformation{stream_id: MAVLink.Types.uint8_t, count: MAVLink.Types.uint8_t, type: APM.Types.video_stream_type, flags: APM.Types.video_stream_status_flags, framerate: Float32, resolution_h: MAVLink.Types.uint16_t, resolution_v: MAVLink.Types.uint16_t, bitrate: MAVLink.Types.uint32_t, rotation: MAVLink.Types.uint16_t, hfov: MAVLink.Types.uint16_t, name: [ char ], uri: [ char ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 269, APM.msg_attributes(269), <<MAVLink.Utils.pack_float(msg.framerate)::binary-size(4),msg.bitrate::little-integer-size(32),APM.encode(msg.flags, :video_stream_status_flags)::little-integer-size(16),msg.resolution_h::little-integer-size(16),msg.resolution_v::little-integer-size(16),msg.rotation::little-integer-size(16),msg.hfov::little-integer-size(16),msg.stream_id::integer-size(8),msg.count::integer-size(8),APM.encode(msg.type, :video_stream_type)::integer-size(8),MAVLink.Utils.pack_string(msg.name, 32)::binary-size(32),MAVLink.Utils.pack_string(msg.uri, 160)::binary-size(160)>>}
  end
end


defmodule APM.Message.VideoStreamStatus do
  @enforce_keys [:stream_id, :flags, :framerate, :resolution_h, :resolution_v, :bitrate, :rotation, :hfov]
  defstruct [:stream_id, :flags, :framerate, :resolution_h, :resolution_v, :bitrate, :rotation, :hfov]
  @typedoc "Information about the status of a video stream. It may be requested using MAV_CMD_REQUEST_MESSAGE."
  @type t :: %APM.Message.VideoStreamStatus{stream_id: MAVLink.Types.uint8_t, flags: APM.Types.video_stream_status_flags, framerate: Float32, resolution_h: MAVLink.Types.uint16_t, resolution_v: MAVLink.Types.uint16_t, bitrate: MAVLink.Types.uint32_t, rotation: MAVLink.Types.uint16_t, hfov: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 270, APM.msg_attributes(270), <<MAVLink.Utils.pack_float(msg.framerate)::binary-size(4),msg.bitrate::little-integer-size(32),APM.encode(msg.flags, :video_stream_status_flags)::little-integer-size(16),msg.resolution_h::little-integer-size(16),msg.resolution_v::little-integer-size(16),msg.rotation::little-integer-size(16),msg.hfov::little-integer-size(16),msg.stream_id::integer-size(8)>>}
  end
end


defmodule APM.Message.WifiConfigAp do
  @enforce_keys [:ssid, :password]
  defstruct [:ssid, :password]
  @typedoc "Configure WiFi AP SSID, password, and mode. This message is re-emitted as an acknowledgement by the AP. The message may also be explicitly requested using MAV_CMD_REQUEST_MESSAGE"
  @type t :: %APM.Message.WifiConfigAp{ssid: [ char ], password: [ char ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 299, APM.msg_attributes(299), <<MAVLink.Utils.pack_string(msg.ssid, 32)::binary-size(32),MAVLink.Utils.pack_string(msg.password, 64)::binary-size(64)>>}
  end
end


defmodule APM.Message.AisVessel do
  @enforce_keys [:mmsi, :lat, :lon, :cog, :heading, :velocity, :turn_rate, :navigational_status, :type, :dimension_bow, :dimension_stern, :dimension_port, :dimension_starboard, :callsign, :name, :tslc, :flags]
  defstruct [:mmsi, :lat, :lon, :cog, :heading, :velocity, :turn_rate, :navigational_status, :type, :dimension_bow, :dimension_stern, :dimension_port, :dimension_starboard, :callsign, :name, :tslc, :flags]
  @typedoc "The location and information of an AIS vessel"
  @type t :: %APM.Message.AisVessel{mmsi: MAVLink.Types.uint32_t, lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, cog: MAVLink.Types.uint16_t, heading: MAVLink.Types.uint16_t, velocity: MAVLink.Types.uint16_t, turn_rate: MAVLink.Types.int8_t, navigational_status: APM.Types.ais_nav_status, type: APM.Types.ais_type, dimension_bow: MAVLink.Types.uint16_t, dimension_stern: MAVLink.Types.uint16_t, dimension_port: MAVLink.Types.uint8_t, dimension_starboard: MAVLink.Types.uint8_t, callsign: [ char ], name: [ char ], tslc: MAVLink.Types.uint16_t, flags: MapSet.t(APM.Types.ais_flags)}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 301, APM.msg_attributes(301), <<msg.mmsi::little-integer-size(32),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.cog::little-integer-size(16),msg.heading::little-integer-size(16),msg.velocity::little-integer-size(16),msg.dimension_bow::little-integer-size(16),msg.dimension_stern::little-integer-size(16),msg.tslc::little-integer-size(16),APM.pack_bitmask(msg.flags, :ais_flags, &APM.encode/2)::little-integer-size(16),msg.turn_rate::signed-integer-size(8),APM.encode(msg.navigational_status, :ais_nav_status)::integer-size(8),APM.encode(msg.type, :ais_type)::integer-size(8),msg.dimension_port::integer-size(8),msg.dimension_starboard::integer-size(8),MAVLink.Utils.pack_string(msg.callsign, 7)::binary-size(7),MAVLink.Utils.pack_string(msg.name, 20)::binary-size(20)>>}
  end
end


defmodule APM.Message.UavcanNodeStatus do
  @enforce_keys [:time_usec, :uptime_sec, :health, :mode, :sub_mode, :vendor_specific_status_code]
  defstruct [:time_usec, :uptime_sec, :health, :mode, :sub_mode, :vendor_specific_status_code]
  @typedoc "General status information of an UAVCAN node. Please refer to the definition of the UAVCAN message \"uavcan.protocol.NodeStatus\" for the background information. The UAVCAN specification is available at http://uavcan.org."
  @type t :: %APM.Message.UavcanNodeStatus{time_usec: MAVLink.Types.uint64_t, uptime_sec: MAVLink.Types.uint32_t, health: APM.Types.uavcan_node_health, mode: APM.Types.uavcan_node_mode, sub_mode: MAVLink.Types.uint8_t, vendor_specific_status_code: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 310, APM.msg_attributes(310), <<msg.time_usec::little-integer-size(64),msg.uptime_sec::little-integer-size(32),msg.vendor_specific_status_code::little-integer-size(16),APM.encode(msg.health, :uavcan_node_health)::integer-size(8),APM.encode(msg.mode, :uavcan_node_mode)::integer-size(8),msg.sub_mode::integer-size(8)>>}
  end
end


defmodule APM.Message.UavcanNodeInfo do
  @enforce_keys [:time_usec, :uptime_sec, :name, :hw_version_major, :hw_version_minor, :hw_unique_id, :sw_version_major, :sw_version_minor, :sw_vcs_commit]
  defstruct [:time_usec, :uptime_sec, :name, :hw_version_major, :hw_version_minor, :hw_unique_id, :sw_version_major, :sw_version_minor, :sw_vcs_commit]
  @typedoc "General information describing a particular UAVCAN node. Please refer to the definition of the UAVCAN service \"uavcan.protocol.GetNodeInfo\" for the background information. This message should be emitted by the system whenever a new node appears online, or an existing node reboots. Additionally, it can be emitted upon request from the other end of the MAVLink channel (see MAV_CMD_UAVCAN_GET_NODE_INFO). It is also not prohibited to emit this message unconditionally at a low frequency. The UAVCAN specification is available at http://uavcan.org."
  @type t :: %APM.Message.UavcanNodeInfo{time_usec: MAVLink.Types.uint64_t, uptime_sec: MAVLink.Types.uint32_t, name: [ char ], hw_version_major: MAVLink.Types.uint8_t, hw_version_minor: MAVLink.Types.uint8_t, hw_unique_id: [ MAVLink.Types.uint8_t ], sw_version_major: MAVLink.Types.uint8_t, sw_version_minor: MAVLink.Types.uint8_t, sw_vcs_commit: MAVLink.Types.uint32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 311, APM.msg_attributes(311), <<msg.time_usec::little-integer-size(64),msg.uptime_sec::little-integer-size(32),msg.sw_vcs_commit::little-integer-size(32),MAVLink.Utils.pack_string(msg.name, 80)::binary-size(80),msg.hw_version_major::integer-size(8),msg.hw_version_minor::integer-size(8),MAVLink.Utils.pack_array(msg.hw_unique_id, 16, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(16),msg.sw_version_major::integer-size(8),msg.sw_version_minor::integer-size(8)>>}
  end
end


defmodule APM.Message.ObstacleDistance do
  @enforce_keys [:time_usec, :sensor_type, :distances, :increment, :min_distance, :max_distance]
  defstruct [:time_usec, :sensor_type, :distances, :increment, :min_distance, :max_distance, :increment_f, :angle_offset, :frame]
  @typedoc "Obstacle distances in front of the sensor, starting from the left in increment degrees to the right"
  @type t :: %APM.Message.ObstacleDistance{time_usec: MAVLink.Types.uint64_t, sensor_type: APM.Types.mav_distance_sensor, distances: [ MAVLink.Types.uint16_t ], increment: MAVLink.Types.uint8_t, min_distance: MAVLink.Types.uint16_t, max_distance: MAVLink.Types.uint16_t, increment_f: Float32, angle_offset: Float32, frame: APM.Types.mav_frame}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 330, APM.msg_attributes(330), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_array(msg.distances, 72, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(144),msg.min_distance::little-integer-size(16),msg.max_distance::little-integer-size(16),APM.encode(msg.sensor_type, :mav_distance_sensor)::integer-size(8),msg.increment::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 330, APM.msg_attributes(330), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_array(msg.distances, 72, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(144),msg.min_distance::little-integer-size(16),msg.max_distance::little-integer-size(16),APM.encode(msg.sensor_type, :mav_distance_sensor)::integer-size(8),msg.increment::integer-size(8),MAVLink.Utils.pack_float(msg.increment_f)::binary-size(4),MAVLink.Utils.pack_float(msg.angle_offset)::binary-size(4),APM.encode(msg.frame, :mav_frame)::integer-size(8)>>}
  end
end


defmodule APM.Message.Odometry do
  @enforce_keys [:time_usec, :frame_id, :child_frame_id, :x, :y, :z, :q, :vx, :vy, :vz, :rollspeed, :pitchspeed, :yawspeed, :pose_covariance, :velocity_covariance]
  defstruct [:time_usec, :frame_id, :child_frame_id, :x, :y, :z, :q, :vx, :vy, :vz, :rollspeed, :pitchspeed, :yawspeed, :pose_covariance, :velocity_covariance, :reset_counter, :estimator_type]
  @typedoc "Odometry message to communicate odometry information with an external interface. Fits ROS REP 147 standard for aerial vehicles (http://www.ros.org/reps/rep-0147.html)."
  @type t :: %APM.Message.Odometry{time_usec: MAVLink.Types.uint64_t, frame_id: APM.Types.mav_frame, child_frame_id: APM.Types.mav_frame, x: Float32, y: Float32, z: Float32, q: [ Float32 ], vx: Float32, vy: Float32, vz: Float32, rollspeed: Float32, pitchspeed: Float32, yawspeed: Float32, pose_covariance: [ Float32 ], velocity_covariance: [ Float32 ], reset_counter: MAVLink.Types.uint8_t, estimator_type: APM.Types.mav_estimator_type}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 331, APM.msg_attributes(331), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_array(msg.q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),MAVLink.Utils.pack_float(msg.vx)::binary-size(4),MAVLink.Utils.pack_float(msg.vy)::binary-size(4),MAVLink.Utils.pack_float(msg.vz)::binary-size(4),MAVLink.Utils.pack_float(msg.rollspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.pitchspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.yawspeed)::binary-size(4),MAVLink.Utils.pack_array(msg.pose_covariance, 21, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(84),MAVLink.Utils.pack_array(msg.velocity_covariance, 21, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(84),APM.encode(msg.frame_id, :mav_frame)::integer-size(8),APM.encode(msg.child_frame_id, :mav_frame)::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 331, APM.msg_attributes(331), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_array(msg.q, 4, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(16),MAVLink.Utils.pack_float(msg.vx)::binary-size(4),MAVLink.Utils.pack_float(msg.vy)::binary-size(4),MAVLink.Utils.pack_float(msg.vz)::binary-size(4),MAVLink.Utils.pack_float(msg.rollspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.pitchspeed)::binary-size(4),MAVLink.Utils.pack_float(msg.yawspeed)::binary-size(4),MAVLink.Utils.pack_array(msg.pose_covariance, 21, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(84),MAVLink.Utils.pack_array(msg.velocity_covariance, 21, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(84),APM.encode(msg.frame_id, :mav_frame)::integer-size(8),APM.encode(msg.child_frame_id, :mav_frame)::integer-size(8),msg.reset_counter::integer-size(8),APM.encode(msg.estimator_type, :mav_estimator_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.IsbdLinkStatus do
  @enforce_keys [:timestamp, :last_heartbeat, :failed_sessions, :successful_sessions, :signal_quality, :ring_pending, :tx_session_pending, :rx_session_pending]
  defstruct [:timestamp, :last_heartbeat, :failed_sessions, :successful_sessions, :signal_quality, :ring_pending, :tx_session_pending, :rx_session_pending]
  @typedoc "Status of the Iridium SBD link."
  @type t :: %APM.Message.IsbdLinkStatus{timestamp: MAVLink.Types.uint64_t, last_heartbeat: MAVLink.Types.uint64_t, failed_sessions: MAVLink.Types.uint16_t, successful_sessions: MAVLink.Types.uint16_t, signal_quality: MAVLink.Types.uint8_t, ring_pending: MAVLink.Types.uint8_t, tx_session_pending: MAVLink.Types.uint8_t, rx_session_pending: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 335, APM.msg_attributes(335), <<msg.timestamp::little-integer-size(64),msg.last_heartbeat::little-integer-size(64),msg.failed_sessions::little-integer-size(16),msg.successful_sessions::little-integer-size(16),msg.signal_quality::integer-size(8),msg.ring_pending::integer-size(8),msg.tx_session_pending::integer-size(8),msg.rx_session_pending::integer-size(8)>>}
  end
end


defmodule APM.Message.RawRpm do
  @enforce_keys [:index, :frequency]
  defstruct [:index, :frequency]
  @typedoc "RPM sensor data message."
  @type t :: %APM.Message.RawRpm{index: MAVLink.Types.uint8_t, frequency: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 339, APM.msg_attributes(339), <<MAVLink.Utils.pack_float(msg.frequency)::binary-size(4),msg.index::integer-size(8)>>}
  end
end


defmodule APM.Message.UtmGlobalPosition do
  @enforce_keys [:time, :uas_id, :lat, :lon, :alt, :relative_alt, :vx, :vy, :vz, :h_acc, :v_acc, :vel_acc, :next_lat, :next_lon, :next_alt, :update_rate, :flight_state, :flags]
  defstruct [:time, :uas_id, :lat, :lon, :alt, :relative_alt, :vx, :vy, :vz, :h_acc, :v_acc, :vel_acc, :next_lat, :next_lon, :next_alt, :update_rate, :flight_state, :flags]
  @typedoc "The global position resulting from GPS and sensor fusion."
  @type t :: %APM.Message.UtmGlobalPosition{time: MAVLink.Types.uint64_t, uas_id: [ MAVLink.Types.uint8_t ], lat: MAVLink.Types.int32_t, lon: MAVLink.Types.int32_t, alt: MAVLink.Types.int32_t, relative_alt: MAVLink.Types.int32_t, vx: MAVLink.Types.int16_t, vy: MAVLink.Types.int16_t, vz: MAVLink.Types.int16_t, h_acc: MAVLink.Types.uint16_t, v_acc: MAVLink.Types.uint16_t, vel_acc: MAVLink.Types.uint16_t, next_lat: MAVLink.Types.int32_t, next_lon: MAVLink.Types.int32_t, next_alt: MAVLink.Types.int32_t, update_rate: MAVLink.Types.uint16_t, flight_state: APM.Types.utm_flight_state, flags: MapSet.t(APM.Types.utm_data_avail_flags)}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 340, APM.msg_attributes(340), <<msg.time::little-integer-size(64),msg.lat::little-signed-integer-size(32),msg.lon::little-signed-integer-size(32),msg.alt::little-signed-integer-size(32),msg.relative_alt::little-signed-integer-size(32),msg.next_lat::little-signed-integer-size(32),msg.next_lon::little-signed-integer-size(32),msg.next_alt::little-signed-integer-size(32),msg.vx::little-signed-integer-size(16),msg.vy::little-signed-integer-size(16),msg.vz::little-signed-integer-size(16),msg.h_acc::little-integer-size(16),msg.v_acc::little-integer-size(16),msg.vel_acc::little-integer-size(16),msg.update_rate::little-integer-size(16),MAVLink.Utils.pack_array(msg.uas_id, 18, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(18),APM.encode(msg.flight_state, :utm_flight_state)::integer-size(8),APM.pack_bitmask(msg.flags, :utm_data_avail_flags, &APM.encode/2)::integer-size(8)>>}
  end
end


defmodule APM.Message.DebugFloatArray do
  @enforce_keys [:time_usec, :name, :array_id]
  defstruct [:time_usec, :name, :array_id, :data]
  @typedoc "Large debug/prototyping array. The message uses the maximum available payload for data. The array_id and name fields are used to discriminate between messages in code and in user interfaces (respectively). Do not use in production code."
  @type t :: %APM.Message.DebugFloatArray{time_usec: MAVLink.Types.uint64_t, name: [ char ], array_id: MAVLink.Types.uint16_t, data: [ Float32 ]}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 350, APM.msg_attributes(350), <<msg.time_usec::little-integer-size(64),msg.array_id::little-integer-size(16),MAVLink.Utils.pack_string(msg.name, 10)::binary-size(10)>>}
    def pack(msg, 2), do: {:ok, 350, APM.msg_attributes(350), <<msg.time_usec::little-integer-size(64),msg.array_id::little-integer-size(16),MAVLink.Utils.pack_string(msg.name, 10)::binary-size(10),MAVLink.Utils.pack_array(msg.data, 58, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(232)>>}
  end
end


defmodule APM.Message.GeneratorStatus do
  @enforce_keys [:status, :generator_speed, :battery_current, :load_current, :power_generated, :bus_voltage, :rectifier_temperature, :bat_current_setpoint, :generator_temperature, :runtime, :time_until_maintenance]
  defstruct [:status, :generator_speed, :battery_current, :load_current, :power_generated, :bus_voltage, :rectifier_temperature, :bat_current_setpoint, :generator_temperature, :runtime, :time_until_maintenance]
  @typedoc "Telemetry of power generation system. Alternator or mechanical generator."
  @type t :: %APM.Message.GeneratorStatus{status: MapSet.t(APM.Types.mav_generator_status_flag), generator_speed: MAVLink.Types.uint16_t, battery_current: Float32, load_current: Float32, power_generated: Float32, bus_voltage: Float32, rectifier_temperature: MAVLink.Types.int16_t, bat_current_setpoint: Float32, generator_temperature: MAVLink.Types.int16_t, runtime: MAVLink.Types.uint32_t, time_until_maintenance: MAVLink.Types.int32_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 373, APM.msg_attributes(373), <<APM.pack_bitmask(msg.status, :mav_generator_status_flag, &APM.encode/2)::little-integer-size(64),MAVLink.Utils.pack_float(msg.battery_current)::binary-size(4),MAVLink.Utils.pack_float(msg.load_current)::binary-size(4),MAVLink.Utils.pack_float(msg.power_generated)::binary-size(4),MAVLink.Utils.pack_float(msg.bus_voltage)::binary-size(4),MAVLink.Utils.pack_float(msg.bat_current_setpoint)::binary-size(4),msg.runtime::little-integer-size(32),msg.time_until_maintenance::little-signed-integer-size(32),msg.generator_speed::little-integer-size(16),msg.rectifier_temperature::little-signed-integer-size(16),msg.generator_temperature::little-signed-integer-size(16)>>}
  end
end


defmodule APM.Message.ActuatorOutputStatus do
  @enforce_keys [:time_usec, :active, :actuator]
  defstruct [:time_usec, :active, :actuator]
  @typedoc "The raw values of the actuator outputs (e.g. on Pixhawk, from MAIN, AUX ports). This message supersedes SERVO_OUTPUT_RAW."
  @type t :: %APM.Message.ActuatorOutputStatus{time_usec: MAVLink.Types.uint64_t, active: MAVLink.Types.uint32_t, actuator: [ Float32 ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 375, APM.msg_attributes(375), <<msg.time_usec::little-integer-size(64),msg.active::little-integer-size(32),MAVLink.Utils.pack_array(msg.actuator, 32, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(128)>>}
  end
end


defmodule APM.Message.WheelDistance do
  @enforce_keys [:time_usec, :count, :distance]
  defstruct [:time_usec, :count, :distance]
  @typedoc "Cumulative distance traveled for each reported wheel."
  @type t :: %APM.Message.WheelDistance{time_usec: MAVLink.Types.uint64_t, count: MAVLink.Types.uint8_t, distance: [ Float64 ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 9000, APM.msg_attributes(9000), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_array(msg.distance, 16, fn(elem) -> <<elem::binary-size(8)>> end)::binary-size(128),msg.count::integer-size(8)>>}
  end
end


defmodule APM.Message.WinchStatus do
  @enforce_keys [:time_usec, :line_length, :speed, :tension, :voltage, :current, :temperature, :status]
  defstruct [:time_usec, :line_length, :speed, :tension, :voltage, :current, :temperature, :status]
  @typedoc "Winch status."
  @type t :: %APM.Message.WinchStatus{time_usec: MAVLink.Types.uint64_t, line_length: Float32, speed: Float32, tension: Float32, voltage: Float32, current: Float32, temperature: MAVLink.Types.int16_t, status: MapSet.t(APM.Types.mav_winch_status_flag)}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 9005, APM.msg_attributes(9005), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.line_length)::binary-size(4),MAVLink.Utils.pack_float(msg.speed)::binary-size(4),MAVLink.Utils.pack_float(msg.tension)::binary-size(4),MAVLink.Utils.pack_float(msg.voltage)::binary-size(4),MAVLink.Utils.pack_float(msg.current)::binary-size(4),APM.pack_bitmask(msg.status, :mav_winch_status_flag, &APM.encode/2)::little-integer-size(32),msg.temperature::little-signed-integer-size(16)>>}
  end
end


defmodule APM.Message.UavionixAdsbOutCfg do
  @enforce_keys [:icao, :callsign, :emittertype, :aircraftsize, :gpsoffsetlat, :gpsoffsetlon, :stallspeed, :rfselect]
  defstruct [:icao, :callsign, :emittertype, :aircraftsize, :gpsoffsetlat, :gpsoffsetlon, :stallspeed, :rfselect]
  @typedoc "Static data to configure the ADS-B transponder (send within 10 sec of a POR and every 10 sec thereafter)"
  @type t :: %APM.Message.UavionixAdsbOutCfg{icao: MAVLink.Types.uint32_t, callsign: [ char ], emittertype: APM.Types.adsb_emitter_type, aircraftsize: APM.Types.uavionix_adsb_out_cfg_aircraft_size, gpsoffsetlat: APM.Types.uavionix_adsb_out_cfg_gps_offset_lat, gpsoffsetlon: APM.Types.uavionix_adsb_out_cfg_gps_offset_lon, stallspeed: MAVLink.Types.uint16_t, rfselect: MapSet.t(APM.Types.uavionix_adsb_out_rf_select)}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 10001, APM.msg_attributes(10001), <<msg.icao::little-integer-size(32),msg.stallspeed::little-integer-size(16),MAVLink.Utils.pack_string(msg.callsign, 9)::binary-size(9),APM.encode(msg.emittertype, :adsb_emitter_type)::integer-size(8),APM.encode(msg.aircraftsize, :uavionix_adsb_out_cfg_aircraft_size)::integer-size(8),APM.encode(msg.gpsoffsetlat, :uavionix_adsb_out_cfg_gps_offset_lat)::integer-size(8),APM.encode(msg.gpsoffsetlon, :uavionix_adsb_out_cfg_gps_offset_lon)::integer-size(8),APM.pack_bitmask(msg.rfselect, :uavionix_adsb_out_rf_select, &APM.encode/2)::integer-size(8)>>}
  end
end


defmodule APM.Message.UavionixAdsbOutDynamic do
  @enforce_keys [:utctime, :gpslat, :gpslon, :gpsalt, :gpsfix, :numsats, :baroaltmsl, :accuracyhor, :accuracyvert, :accuracyvel, :velvert, :velns, :velew, :emergencystatus, :state, :squawk]
  defstruct [:utctime, :gpslat, :gpslon, :gpsalt, :gpsfix, :numsats, :baroaltmsl, :accuracyhor, :accuracyvert, :accuracyvel, :velvert, :velns, :velew, :emergencystatus, :state, :squawk]
  @typedoc "Dynamic data used to generate ADS-B out transponder data (send at 5Hz)"
  @type t :: %APM.Message.UavionixAdsbOutDynamic{utctime: MAVLink.Types.uint32_t, gpslat: MAVLink.Types.int32_t, gpslon: MAVLink.Types.int32_t, gpsalt: MAVLink.Types.int32_t, gpsfix: APM.Types.uavionix_adsb_out_dynamic_gps_fix, numsats: MAVLink.Types.uint8_t, baroaltmsl: MAVLink.Types.int32_t, accuracyhor: MAVLink.Types.uint32_t, accuracyvert: MAVLink.Types.uint16_t, accuracyvel: MAVLink.Types.uint16_t, velvert: MAVLink.Types.int16_t, velns: MAVLink.Types.int16_t, velew: MAVLink.Types.int16_t, emergencystatus: APM.Types.uavionix_adsb_emergency_status, state: MapSet.t(APM.Types.uavionix_adsb_out_dynamic_state), squawk: MAVLink.Types.uint16_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 10002, APM.msg_attributes(10002), <<msg.utctime::little-integer-size(32),msg.gpslat::little-signed-integer-size(32),msg.gpslon::little-signed-integer-size(32),msg.gpsalt::little-signed-integer-size(32),msg.baroaltmsl::little-signed-integer-size(32),msg.accuracyhor::little-integer-size(32),msg.accuracyvert::little-integer-size(16),msg.accuracyvel::little-integer-size(16),msg.velvert::little-signed-integer-size(16),msg.velns::little-signed-integer-size(16),msg.velew::little-signed-integer-size(16),APM.pack_bitmask(msg.state, :uavionix_adsb_out_dynamic_state, &APM.encode/2)::little-integer-size(16),msg.squawk::little-integer-size(16),APM.encode(msg.gpsfix, :uavionix_adsb_out_dynamic_gps_fix)::integer-size(8),msg.numsats::integer-size(8),APM.encode(msg.emergencystatus, :uavionix_adsb_emergency_status)::integer-size(8)>>}
  end
end


defmodule APM.Message.UavionixAdsbTransceiverHealthReport do
  @enforce_keys [:rfhealth]
  defstruct [:rfhealth]
  @typedoc "Transceiver heartbeat with health report (updated every 10s)"
  @type t :: %APM.Message.UavionixAdsbTransceiverHealthReport{rfhealth: MapSet.t(APM.Types.uavionix_adsb_rf_health)}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 10003, APM.msg_attributes(10003), <<APM.pack_bitmask(msg.rfhealth, :uavionix_adsb_rf_health, &APM.encode/2)::integer-size(8)>>}
  end
end


defmodule APM.Message.DeviceOpRead do
  @enforce_keys [:target_system, :target_component, :request_id, :bustype, :bus, :address, :busname, :regstart, :count]
  defstruct [:target_system, :target_component, :request_id, :bustype, :bus, :address, :busname, :regstart, :count, :bank]
  @typedoc "Read registers for a device."
  @type t :: %APM.Message.DeviceOpRead{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, request_id: MAVLink.Types.uint32_t, bustype: APM.Types.device_op_bustype, bus: MAVLink.Types.uint8_t, address: MAVLink.Types.uint8_t, busname: [ char ], regstart: MAVLink.Types.uint8_t, count: MAVLink.Types.uint8_t, bank: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 11000, APM.msg_attributes(11000), <<msg.request_id::little-integer-size(32),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.bustype, :device_op_bustype)::integer-size(8),msg.bus::integer-size(8),msg.address::integer-size(8),MAVLink.Utils.pack_string(msg.busname, 40)::binary-size(40),msg.regstart::integer-size(8),msg.count::integer-size(8)>>}
    def pack(msg, 2), do: {:ok, 11000, APM.msg_attributes(11000), <<msg.request_id::little-integer-size(32),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.bustype, :device_op_bustype)::integer-size(8),msg.bus::integer-size(8),msg.address::integer-size(8),MAVLink.Utils.pack_string(msg.busname, 40)::binary-size(40),msg.regstart::integer-size(8),msg.count::integer-size(8),msg.bank::integer-size(8)>>}
  end
end


defmodule APM.Message.DeviceOpReadReply do
  @enforce_keys [:request_id, :result, :regstart, :count, :data]
  defstruct [:request_id, :result, :regstart, :count, :data, :bank]
  @typedoc "Read registers reply."
  @type t :: %APM.Message.DeviceOpReadReply{request_id: MAVLink.Types.uint32_t, result: MAVLink.Types.uint8_t, regstart: MAVLink.Types.uint8_t, count: MAVLink.Types.uint8_t, data: [ MAVLink.Types.uint8_t ], bank: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 11001, APM.msg_attributes(11001), <<msg.request_id::little-integer-size(32),msg.result::integer-size(8),msg.regstart::integer-size(8),msg.count::integer-size(8),MAVLink.Utils.pack_array(msg.data, 128, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(128)>>}
    def pack(msg, 2), do: {:ok, 11001, APM.msg_attributes(11001), <<msg.request_id::little-integer-size(32),msg.result::integer-size(8),msg.regstart::integer-size(8),msg.count::integer-size(8),MAVLink.Utils.pack_array(msg.data, 128, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(128),msg.bank::integer-size(8)>>}
  end
end


defmodule APM.Message.DeviceOpWrite do
  @enforce_keys [:target_system, :target_component, :request_id, :bustype, :bus, :address, :busname, :regstart, :count, :data]
  defstruct [:target_system, :target_component, :request_id, :bustype, :bus, :address, :busname, :regstart, :count, :data, :bank]
  @typedoc "Write registers for a device."
  @type t :: %APM.Message.DeviceOpWrite{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, request_id: MAVLink.Types.uint32_t, bustype: APM.Types.device_op_bustype, bus: MAVLink.Types.uint8_t, address: MAVLink.Types.uint8_t, busname: [ char ], regstart: MAVLink.Types.uint8_t, count: MAVLink.Types.uint8_t, data: [ MAVLink.Types.uint8_t ], bank: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, 1), do: {:ok, 11002, APM.msg_attributes(11002), <<msg.request_id::little-integer-size(32),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.bustype, :device_op_bustype)::integer-size(8),msg.bus::integer-size(8),msg.address::integer-size(8),MAVLink.Utils.pack_string(msg.busname, 40)::binary-size(40),msg.regstart::integer-size(8),msg.count::integer-size(8),MAVLink.Utils.pack_array(msg.data, 128, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(128)>>}
    def pack(msg, 2), do: {:ok, 11002, APM.msg_attributes(11002), <<msg.request_id::little-integer-size(32),msg.target_system::integer-size(8),msg.target_component::integer-size(8),APM.encode(msg.bustype, :device_op_bustype)::integer-size(8),msg.bus::integer-size(8),msg.address::integer-size(8),MAVLink.Utils.pack_string(msg.busname, 40)::binary-size(40),msg.regstart::integer-size(8),msg.count::integer-size(8),MAVLink.Utils.pack_array(msg.data, 128, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(128),msg.bank::integer-size(8)>>}
  end
end


defmodule APM.Message.DeviceOpWriteReply do
  @enforce_keys [:request_id, :result]
  defstruct [:request_id, :result]
  @typedoc "Write registers reply."
  @type t :: %APM.Message.DeviceOpWriteReply{request_id: MAVLink.Types.uint32_t, result: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 11003, APM.msg_attributes(11003), <<msg.request_id::little-integer-size(32),msg.result::integer-size(8)>>}
  end
end


defmodule APM.Message.AdapTuning do
  @enforce_keys [:axis, :desired, :achieved, :error, :theta, :omega, :sigma, :theta_dot, :omega_dot, :sigma_dot, :f, :f_dot, :u]
  defstruct [:axis, :desired, :achieved, :error, :theta, :omega, :sigma, :theta_dot, :omega_dot, :sigma_dot, :f, :f_dot, :u]
  @typedoc "Adaptive Controller tuning information."
  @type t :: %APM.Message.AdapTuning{axis: APM.Types.pid_tuning_axis, desired: Float32, achieved: Float32, error: Float32, theta: Float32, omega: Float32, sigma: Float32, theta_dot: Float32, omega_dot: Float32, sigma_dot: Float32, f: Float32, f_dot: Float32, u: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 11010, APM.msg_attributes(11010), <<MAVLink.Utils.pack_float(msg.desired)::binary-size(4),MAVLink.Utils.pack_float(msg.achieved)::binary-size(4),MAVLink.Utils.pack_float(msg.error)::binary-size(4),MAVLink.Utils.pack_float(msg.theta)::binary-size(4),MAVLink.Utils.pack_float(msg.omega)::binary-size(4),MAVLink.Utils.pack_float(msg.sigma)::binary-size(4),MAVLink.Utils.pack_float(msg.theta_dot)::binary-size(4),MAVLink.Utils.pack_float(msg.omega_dot)::binary-size(4),MAVLink.Utils.pack_float(msg.sigma_dot)::binary-size(4),MAVLink.Utils.pack_float(msg.f)::binary-size(4),MAVLink.Utils.pack_float(msg.f_dot)::binary-size(4),MAVLink.Utils.pack_float(msg.u)::binary-size(4),APM.encode(msg.axis, :pid_tuning_axis)::integer-size(8)>>}
  end
end


defmodule APM.Message.VisionPositionDelta do
  @enforce_keys [:time_usec, :time_delta_usec, :angle_delta, :position_delta, :confidence]
  defstruct [:time_usec, :time_delta_usec, :angle_delta, :position_delta, :confidence]
  @typedoc "Camera vision based attitude and position deltas."
  @type t :: %APM.Message.VisionPositionDelta{time_usec: MAVLink.Types.uint64_t, time_delta_usec: MAVLink.Types.uint64_t, angle_delta: [ Float32 ], position_delta: [ Float32 ], confidence: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 11011, APM.msg_attributes(11011), <<msg.time_usec::little-integer-size(64),msg.time_delta_usec::little-integer-size(64),MAVLink.Utils.pack_array(msg.angle_delta, 3, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(12),MAVLink.Utils.pack_array(msg.position_delta, 3, fn(elem) -> <<elem::binary-size(4)>> end)::binary-size(12),MAVLink.Utils.pack_float(msg.confidence)::binary-size(4)>>}
  end
end


defmodule APM.Message.AoaSsa do
  @enforce_keys [:time_usec, :aoa, :ssa]
  defstruct [:time_usec, :aoa, :ssa]
  @typedoc "Angle of Attack and Side Slip Angle."
  @type t :: %APM.Message.AoaSsa{time_usec: MAVLink.Types.uint64_t, aoa: Float32, ssa: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 11020, APM.msg_attributes(11020), <<msg.time_usec::little-integer-size(64),MAVLink.Utils.pack_float(msg.aoa)::binary-size(4),MAVLink.Utils.pack_float(msg.ssa)::binary-size(4)>>}
  end
end


defmodule APM.Message.EscTelemetry1To4 do
  @enforce_keys [:temperature, :voltage, :current, :totalcurrent, :rpm, :count]
  defstruct [:temperature, :voltage, :current, :totalcurrent, :rpm, :count]
  @typedoc "ESC Telemetry Data for ESCs 1 to 4, matching data sent by BLHeli ESCs."
  @type t :: %APM.Message.EscTelemetry1To4{temperature: [ MAVLink.Types.uint8_t ], voltage: [ MAVLink.Types.uint16_t ], current: [ MAVLink.Types.uint16_t ], totalcurrent: [ MAVLink.Types.uint16_t ], rpm: [ MAVLink.Types.uint16_t ], count: [ MAVLink.Types.uint16_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 11030, APM.msg_attributes(11030), <<MAVLink.Utils.pack_array(msg.voltage, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.current, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.totalcurrent, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.rpm, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.count, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.temperature, 4, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(4)>>}
  end
end


defmodule APM.Message.EscTelemetry5To8 do
  @enforce_keys [:temperature, :voltage, :current, :totalcurrent, :rpm, :count]
  defstruct [:temperature, :voltage, :current, :totalcurrent, :rpm, :count]
  @typedoc "ESC Telemetry Data for ESCs 5 to 8, matching data sent by BLHeli ESCs."
  @type t :: %APM.Message.EscTelemetry5To8{temperature: [ MAVLink.Types.uint8_t ], voltage: [ MAVLink.Types.uint16_t ], current: [ MAVLink.Types.uint16_t ], totalcurrent: [ MAVLink.Types.uint16_t ], rpm: [ MAVLink.Types.uint16_t ], count: [ MAVLink.Types.uint16_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 11031, APM.msg_attributes(11031), <<MAVLink.Utils.pack_array(msg.voltage, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.current, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.totalcurrent, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.rpm, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.count, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.temperature, 4, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(4)>>}
  end
end


defmodule APM.Message.EscTelemetry9To12 do
  @enforce_keys [:temperature, :voltage, :current, :totalcurrent, :rpm, :count]
  defstruct [:temperature, :voltage, :current, :totalcurrent, :rpm, :count]
  @typedoc "ESC Telemetry Data for ESCs 9 to 12, matching data sent by BLHeli ESCs."
  @type t :: %APM.Message.EscTelemetry9To12{temperature: [ MAVLink.Types.uint8_t ], voltage: [ MAVLink.Types.uint16_t ], current: [ MAVLink.Types.uint16_t ], totalcurrent: [ MAVLink.Types.uint16_t ], rpm: [ MAVLink.Types.uint16_t ], count: [ MAVLink.Types.uint16_t ]}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 11032, APM.msg_attributes(11032), <<MAVLink.Utils.pack_array(msg.voltage, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.current, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.totalcurrent, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.rpm, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.count, 4, fn(elem) -> <<elem::little-integer-size(16)>> end)::binary-size(8),MAVLink.Utils.pack_array(msg.temperature, 4, fn(elem) -> <<elem::integer-size(8)>> end)::binary-size(4)>>}
  end
end


defmodule APM.Message.OsdParamConfig do
  @enforce_keys [:target_system, :target_component, :request_id, :osd_screen, :osd_index, :param_id, :config_type, :min_value, :max_value, :increment]
  defstruct [:target_system, :target_component, :request_id, :osd_screen, :osd_index, :param_id, :config_type, :min_value, :max_value, :increment]
  @typedoc "Configure an OSD parameter slot."
  @type t :: %APM.Message.OsdParamConfig{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, request_id: MAVLink.Types.uint32_t, osd_screen: MAVLink.Types.uint8_t, osd_index: MAVLink.Types.uint8_t, param_id: [ char ], config_type: APM.Types.osd_param_config_type, min_value: Float32, max_value: Float32, increment: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 11033, APM.msg_attributes(11033), <<msg.request_id::little-integer-size(32),MAVLink.Utils.pack_float(msg.min_value)::binary-size(4),MAVLink.Utils.pack_float(msg.max_value)::binary-size(4),MAVLink.Utils.pack_float(msg.increment)::binary-size(4),msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.osd_screen::integer-size(8),msg.osd_index::integer-size(8),MAVLink.Utils.pack_string(msg.param_id, 16)::binary-size(16),APM.encode(msg.config_type, :osd_param_config_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.OsdParamConfigReply do
  @enforce_keys [:request_id, :result]
  defstruct [:request_id, :result]
  @typedoc "Configure OSD parameter reply."
  @type t :: %APM.Message.OsdParamConfigReply{request_id: MAVLink.Types.uint32_t, result: APM.Types.osd_param_config_error}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 11034, APM.msg_attributes(11034), <<msg.request_id::little-integer-size(32),APM.encode(msg.result, :osd_param_config_error)::integer-size(8)>>}
  end
end


defmodule APM.Message.OsdParamShowConfig do
  @enforce_keys [:target_system, :target_component, :request_id, :osd_screen, :osd_index]
  defstruct [:target_system, :target_component, :request_id, :osd_screen, :osd_index]
  @typedoc "Read a configured an OSD parameter slot."
  @type t :: %APM.Message.OsdParamShowConfig{target_system: MAVLink.Types.uint8_t, target_component: MAVLink.Types.uint8_t, request_id: MAVLink.Types.uint32_t, osd_screen: MAVLink.Types.uint8_t, osd_index: MAVLink.Types.uint8_t}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 11035, APM.msg_attributes(11035), <<msg.request_id::little-integer-size(32),msg.target_system::integer-size(8),msg.target_component::integer-size(8),msg.osd_screen::integer-size(8),msg.osd_index::integer-size(8)>>}
  end
end


defmodule APM.Message.OsdParamShowConfigReply do
  @enforce_keys [:request_id, :result, :param_id, :config_type, :min_value, :max_value, :increment]
  defstruct [:request_id, :result, :param_id, :config_type, :min_value, :max_value, :increment]
  @typedoc "Read configured OSD parameter reply."
  @type t :: %APM.Message.OsdParamShowConfigReply{request_id: MAVLink.Types.uint32_t, result: APM.Types.osd_param_config_error, param_id: [ char ], config_type: APM.Types.osd_param_config_type, min_value: Float32, max_value: Float32, increment: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 11036, APM.msg_attributes(11036), <<msg.request_id::little-integer-size(32),MAVLink.Utils.pack_float(msg.min_value)::binary-size(4),MAVLink.Utils.pack_float(msg.max_value)::binary-size(4),MAVLink.Utils.pack_float(msg.increment)::binary-size(4),APM.encode(msg.result, :osd_param_config_error)::integer-size(8),MAVLink.Utils.pack_string(msg.param_id, 16)::binary-size(16),APM.encode(msg.config_type, :osd_param_config_type)::integer-size(8)>>}
  end
end


defmodule APM.Message.ObstacleDistance3d do
  @enforce_keys [:time_boot_ms, :sensor_type, :frame, :obstacle_id, :x, :y, :z, :min_distance, :max_distance]
  defstruct [:time_boot_ms, :sensor_type, :frame, :obstacle_id, :x, :y, :z, :min_distance, :max_distance]
  @typedoc "Obstacle located as a 3D vector."
  @type t :: %APM.Message.ObstacleDistance3d{time_boot_ms: MAVLink.Types.uint32_t, sensor_type: APM.Types.mav_distance_sensor, frame: APM.Types.mav_frame, obstacle_id: MAVLink.Types.uint16_t, x: Float32, y: Float32, z: Float32, min_distance: Float32, max_distance: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 11037, APM.msg_attributes(11037), <<msg.time_boot_ms::little-integer-size(32),MAVLink.Utils.pack_float(msg.x)::binary-size(4),MAVLink.Utils.pack_float(msg.y)::binary-size(4),MAVLink.Utils.pack_float(msg.z)::binary-size(4),MAVLink.Utils.pack_float(msg.min_distance)::binary-size(4),MAVLink.Utils.pack_float(msg.max_distance)::binary-size(4),msg.obstacle_id::little-integer-size(16),APM.encode(msg.sensor_type, :mav_distance_sensor)::integer-size(8),APM.encode(msg.frame, :mav_frame)::integer-size(8)>>}
  end
end


defmodule APM.Message.IcarousHeartbeat do
  @enforce_keys [:status]
  defstruct [:status]
  @typedoc "ICAROUS heartbeat"
  @type t :: %APM.Message.IcarousHeartbeat{status: APM.Types.icarous_fms_state}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 42000, APM.msg_attributes(42000), <<APM.encode(msg.status, :icarous_fms_state)::integer-size(8)>>}
  end
end


defmodule APM.Message.IcarousKinematicBands do
  @enforce_keys [:numbands, :type1, :min1, :max1, :type2, :min2, :max2, :type3, :min3, :max3, :type4, :min4, :max4, :type5, :min5, :max5]
  defstruct [:numbands, :type1, :min1, :max1, :type2, :min2, :max2, :type3, :min3, :max3, :type4, :min4, :max4, :type5, :min5, :max5]
  @typedoc "Kinematic multi bands (track) output from Daidalus"
  @type t :: %APM.Message.IcarousKinematicBands{numbands: MAVLink.Types.int8_t, type1: APM.Types.icarous_track_band_types, min1: Float32, max1: Float32, type2: APM.Types.icarous_track_band_types, min2: Float32, max2: Float32, type3: APM.Types.icarous_track_band_types, min3: Float32, max3: Float32, type4: APM.Types.icarous_track_band_types, min4: Float32, max4: Float32, type5: APM.Types.icarous_track_band_types, min5: Float32, max5: Float32}
  defimpl MAVLink.Message do
    def pack(msg, _), do: {:ok, 42001, APM.msg_attributes(42001), <<MAVLink.Utils.pack_float(msg.min1)::binary-size(4),MAVLink.Utils.pack_float(msg.max1)::binary-size(4),MAVLink.Utils.pack_float(msg.min2)::binary-size(4),MAVLink.Utils.pack_float(msg.max2)::binary-size(4),MAVLink.Utils.pack_float(msg.min3)::binary-size(4),MAVLink.Utils.pack_float(msg.max3)::binary-size(4),MAVLink.Utils.pack_float(msg.min4)::binary-size(4),MAVLink.Utils.pack_float(msg.max4)::binary-size(4),MAVLink.Utils.pack_float(msg.min5)::binary-size(4),MAVLink.Utils.pack_float(msg.max5)::binary-size(4),msg.numbands::signed-integer-size(8),APM.encode(msg.type1, :icarous_track_band_types)::integer-size(8),APM.encode(msg.type2, :icarous_track_band_types)::integer-size(8),APM.encode(msg.type3, :icarous_track_band_types)::integer-size(8),APM.encode(msg.type4, :icarous_track_band_types)::integer-size(8),APM.encode(msg.type5, :icarous_track_band_types)::integer-size(8)>>}
  end
end


defmodule APM do

  import String, only: [replace_trailing: 3]
  import MAVLink.Utils, only: [unpack_array: 2, unpack_float: 1]
  
  use Bitwise, only_operators: true

  @moduledoc ~s(APM 3.2 generated by MAVLink mix task from config/ardupilotmega.xml on 2021-05-03 00:17:27.114515Z)

  
  @doc "MAVLink version"
  @spec mavlink_version() :: 3
  def mavlink_version(), do: 3
  
  
  @doc "MAVLink dialect"
  @spec mavlink_dialect() :: 2
  def mavlink_dialect(), do: 2
  
  
  @doc "Return a String description of a MAVLink enumeration"
  @spec describe(APM.Types.enum_type | APM.Types.enum_value) :: String.t
  def describe(:accelcal_vehicle_pos), do: ""
  def describe(:accelcal_vehicle_pos_level), do: ""
  def describe(:accelcal_vehicle_pos_left), do: ""
  def describe(:accelcal_vehicle_pos_right), do: ""
  def describe(:accelcal_vehicle_pos_nosedown), do: ""
  def describe(:accelcal_vehicle_pos_noseup), do: ""
  def describe(:accelcal_vehicle_pos_back), do: ""
  def describe(:accelcal_vehicle_pos_success), do: ""
  def describe(:accelcal_vehicle_pos_failed), do: ""
  def describe(:adsb_altitude_type), do: "Enumeration of the ADSB altimeter types"
  def describe(:adsb_altitude_type_pressure_qnh), do: "Altitude reported from a Baro source using QNH reference"
  def describe(:adsb_altitude_type_geometric), do: "Altitude reported from a GNSS source"
  def describe(:adsb_emitter_type), do: "ADSB classification for the type of vehicle emitting the transponder signal"
  def describe(:adsb_emitter_type_no_info), do: ""
  def describe(:adsb_emitter_type_light), do: ""
  def describe(:adsb_emitter_type_small), do: ""
  def describe(:adsb_emitter_type_large), do: ""
  def describe(:adsb_emitter_type_high_vortex_large), do: ""
  def describe(:adsb_emitter_type_heavy), do: ""
  def describe(:adsb_emitter_type_highly_manuv), do: ""
  def describe(:adsb_emitter_type_rotocraft), do: ""
  def describe(:adsb_emitter_type_unassigned), do: ""
  def describe(:adsb_emitter_type_glider), do: ""
  def describe(:adsb_emitter_type_lighter_air), do: ""
  def describe(:adsb_emitter_type_parachute), do: ""
  def describe(:adsb_emitter_type_ultra_light), do: ""
  def describe(:adsb_emitter_type_unassigned2), do: ""
  def describe(:adsb_emitter_type_uav), do: ""
  def describe(:adsb_emitter_type_space), do: ""
  def describe(:adsb_emitter_type_unassgined3), do: ""
  def describe(:adsb_emitter_type_emergency_surface), do: ""
  def describe(:adsb_emitter_type_service_surface), do: ""
  def describe(:adsb_emitter_type_point_obstacle), do: ""
  def describe(:adsb_flags), do: "These flags indicate status such as data validity of each data source. Set = data valid"
  def describe(:adsb_flags_valid_coords), do: ""
  def describe(:adsb_flags_valid_altitude), do: ""
  def describe(:adsb_flags_valid_heading), do: ""
  def describe(:adsb_flags_valid_velocity), do: ""
  def describe(:adsb_flags_valid_callsign), do: ""
  def describe(:adsb_flags_valid_squawk), do: ""
  def describe(:adsb_flags_simulated), do: ""
  def describe(:adsb_flags_vertical_velocity_valid), do: ""
  def describe(:adsb_flags_baro_valid), do: ""
  def describe(:adsb_flags_source_uat), do: ""
  def describe(:ais_flags), do: "These flags are used in the AIS_VESSEL.fields bitmask to indicate validity of data in the other message fields. When set, the data is valid."
  def describe(:ais_flags_position_accuracy), do: "1 = Position accuracy less than 10m, 0 = position accuracy greater than 10m."
  def describe(:ais_flags_valid_cog), do: ""
  def describe(:ais_flags_valid_velocity), do: ""
  def describe(:ais_flags_high_velocity), do: "1 = Velocity over 52.5765m/s (102.2 knots)"
  def describe(:ais_flags_valid_turn_rate), do: ""
  def describe(:ais_flags_turn_rate_sign_only), do: "Only the sign of the returned turn rate value is valid, either greater than 5deg/30s or less than -5deg/30s"
  def describe(:ais_flags_valid_dimensions), do: ""
  def describe(:ais_flags_large_bow_dimension), do: "Distance to bow is larger than 511m"
  def describe(:ais_flags_large_stern_dimension), do: "Distance to stern is larger than 511m"
  def describe(:ais_flags_large_port_dimension), do: "Distance to port side is larger than 63m"
  def describe(:ais_flags_large_starboard_dimension), do: "Distance to starboard side is larger than 63m"
  def describe(:ais_flags_valid_callsign), do: ""
  def describe(:ais_flags_valid_name), do: ""
  def describe(:ais_nav_status), do: "Navigational status of AIS vessel, enum duplicated from AIS standard, https://gpsd.gitlab.io/gpsd/AIVDM.html"
  def describe(:under_way), do: "Under way using engine."
  def describe(:ais_nav_anchored), do: ""
  def describe(:ais_nav_un_commanded), do: ""
  def describe(:ais_nav_restricted_manoeuverability), do: ""
  def describe(:ais_nav_draught_constrained), do: ""
  def describe(:ais_nav_moored), do: ""
  def describe(:ais_nav_aground), do: ""
  def describe(:ais_nav_fishing), do: ""
  def describe(:ais_nav_sailing), do: ""
  def describe(:ais_nav_reserved_hsc), do: ""
  def describe(:ais_nav_reserved_wig), do: ""
  def describe(:ais_nav_reserved_1), do: ""
  def describe(:ais_nav_reserved_2), do: ""
  def describe(:ais_nav_reserved_3), do: ""
  def describe(:ais_nav_ais_sart), do: "Search And Rescue Transponder."
  def describe(:ais_nav_unknown), do: "Not available (default)."
  def describe(:ais_type), do: "Type of AIS vessel, enum duplicated from AIS standard, https://gpsd.gitlab.io/gpsd/AIVDM.html"
  def describe(:ais_type_unknown), do: "Not available (default)."
  def describe(:ais_type_reserved_1), do: ""
  def describe(:ais_type_reserved_2), do: ""
  def describe(:ais_type_reserved_3), do: ""
  def describe(:ais_type_reserved_4), do: ""
  def describe(:ais_type_reserved_5), do: ""
  def describe(:ais_type_reserved_6), do: ""
  def describe(:ais_type_reserved_7), do: ""
  def describe(:ais_type_reserved_8), do: ""
  def describe(:ais_type_reserved_9), do: ""
  def describe(:ais_type_reserved_10), do: ""
  def describe(:ais_type_reserved_11), do: ""
  def describe(:ais_type_reserved_12), do: ""
  def describe(:ais_type_reserved_13), do: ""
  def describe(:ais_type_reserved_14), do: ""
  def describe(:ais_type_reserved_15), do: ""
  def describe(:ais_type_reserved_16), do: ""
  def describe(:ais_type_reserved_17), do: ""
  def describe(:ais_type_reserved_18), do: ""
  def describe(:ais_type_reserved_19), do: ""
  def describe(:ais_type_wig), do: "Wing In Ground effect."
  def describe(:ais_type_wig_hazardous_a), do: ""
  def describe(:ais_type_wig_hazardous_b), do: ""
  def describe(:ais_type_wig_hazardous_c), do: ""
  def describe(:ais_type_wig_hazardous_d), do: ""
  def describe(:ais_type_wig_reserved_1), do: ""
  def describe(:ais_type_wig_reserved_2), do: ""
  def describe(:ais_type_wig_reserved_3), do: ""
  def describe(:ais_type_wig_reserved_4), do: ""
  def describe(:ais_type_wig_reserved_5), do: ""
  def describe(:ais_type_fishing), do: ""
  def describe(:ais_type_towing), do: ""
  def describe(:ais_type_towing_large), do: "Towing: length exceeds 200m or breadth exceeds 25m."
  def describe(:ais_type_dredging), do: "Dredging or other underwater ops."
  def describe(:ais_type_diving), do: ""
  def describe(:ais_type_military), do: ""
  def describe(:ais_type_sailing), do: ""
  def describe(:ais_type_pleasure), do: ""
  def describe(:ais_type_reserved_20), do: ""
  def describe(:ais_type_reserved_21), do: ""
  def describe(:ais_type_hsc), do: "High Speed Craft."
  def describe(:ais_type_hsc_hazardous_a), do: ""
  def describe(:ais_type_hsc_hazardous_b), do: ""
  def describe(:ais_type_hsc_hazardous_c), do: ""
  def describe(:ais_type_hsc_hazardous_d), do: ""
  def describe(:ais_type_hsc_reserved_1), do: ""
  def describe(:ais_type_hsc_reserved_2), do: ""
  def describe(:ais_type_hsc_reserved_3), do: ""
  def describe(:ais_type_hsc_reserved_4), do: ""
  def describe(:ais_type_hsc_unknown), do: ""
  def describe(:ais_type_pilot), do: ""
  def describe(:ais_type_sar), do: "Search And Rescue vessel."
  def describe(:ais_type_tug), do: ""
  def describe(:ais_type_port_tender), do: ""
  def describe(:ais_type_anti_pollution), do: "Anti-pollution equipment."
  def describe(:ais_type_law_enforcement), do: ""
  def describe(:ais_type_spare_local_1), do: ""
  def describe(:ais_type_spare_local_2), do: ""
  def describe(:ais_type_medical_transport), do: ""
  def describe(:ais_type_nonecombatant), do: "Noncombatant ship according to RR Resolution No. 18."
  def describe(:ais_type_passenger), do: ""
  def describe(:ais_type_passenger_hazardous_a), do: ""
  def describe(:ais_type_passenger_hazardous_b), do: ""
  def describe(:ais_type_ais_type_passenger_hazardous_c), do: ""
  def describe(:ais_type_passenger_hazardous_d), do: ""
  def describe(:ais_type_passenger_reserved_1), do: ""
  def describe(:ais_type_passenger_reserved_2), do: ""
  def describe(:ais_type_passenger_reserved_3), do: ""
  def describe(:ais_type_ais_type_passenger_reserved_4), do: ""
  def describe(:ais_type_passenger_unknown), do: ""
  def describe(:ais_type_cargo), do: ""
  def describe(:ais_type_cargo_hazardous_a), do: ""
  def describe(:ais_type_cargo_hazardous_b), do: ""
  def describe(:ais_type_cargo_hazardous_c), do: ""
  def describe(:ais_type_cargo_hazardous_d), do: ""
  def describe(:ais_type_cargo_reserved_1), do: ""
  def describe(:ais_type_cargo_reserved_2), do: ""
  def describe(:ais_type_cargo_reserved_3), do: ""
  def describe(:ais_type_cargo_reserved_4), do: ""
  def describe(:ais_type_cargo_unknown), do: ""
  def describe(:ais_type_tanker), do: ""
  def describe(:ais_type_tanker_hazardous_a), do: ""
  def describe(:ais_type_tanker_hazardous_b), do: ""
  def describe(:ais_type_tanker_hazardous_c), do: ""
  def describe(:ais_type_tanker_hazardous_d), do: ""
  def describe(:ais_type_tanker_reserved_1), do: ""
  def describe(:ais_type_tanker_reserved_2), do: ""
  def describe(:ais_type_tanker_reserved_3), do: ""
  def describe(:ais_type_tanker_reserved_4), do: ""
  def describe(:ais_type_tanker_unknown), do: ""
  def describe(:ais_type_other), do: ""
  def describe(:ais_type_other_hazardous_a), do: ""
  def describe(:ais_type_other_hazardous_b), do: ""
  def describe(:ais_type_other_hazardous_c), do: ""
  def describe(:ais_type_other_hazardous_d), do: ""
  def describe(:ais_type_other_reserved_1), do: ""
  def describe(:ais_type_other_reserved_2), do: ""
  def describe(:ais_type_other_reserved_3), do: ""
  def describe(:ais_type_other_reserved_4), do: ""
  def describe(:ais_type_other_unknown), do: ""
  def describe(:attitude_target_typemask), do: "Bitmap to indicate which dimensions should be ignored by the vehicle: a value of 0b00000000 indicates that none of the setpoint dimensions should be ignored."
  def describe(:attitude_target_typemask_body_roll_rate_ignore), do: "Ignore body roll rate"
  def describe(:attitude_target_typemask_body_pitch_rate_ignore), do: "Ignore body pitch rate"
  def describe(:attitude_target_typemask_body_yaw_rate_ignore), do: "Ignore body yaw rate"
  def describe(:attitude_target_typemask_throttle_ignore), do: "Ignore throttle"
  def describe(:attitude_target_typemask_attitude_ignore), do: "Ignore attitude"
  def describe(:camera_cap_flags), do: "Camera capability flags (Bitmap)"
  def describe(:camera_cap_flags_capture_video), do: "Camera is able to record video"
  def describe(:camera_cap_flags_capture_image), do: "Camera is able to capture images"
  def describe(:camera_cap_flags_has_modes), do: "Camera has separate Video and Image/Photo modes (MAV_CMD_SET_CAMERA_MODE)"
  def describe(:camera_cap_flags_can_capture_image_in_video_mode), do: "Camera can capture images while in video mode"
  def describe(:camera_cap_flags_can_capture_video_in_image_mode), do: "Camera can capture videos while in Photo/Image mode"
  def describe(:camera_cap_flags_has_image_survey_mode), do: "Camera has image survey mode (MAV_CMD_SET_CAMERA_MODE)"
  def describe(:camera_cap_flags_has_basic_zoom), do: "Camera has basic zoom control (MAV_CMD_SET_CAMERA_ZOOM)"
  def describe(:camera_cap_flags_has_basic_focus), do: "Camera has basic focus control (MAV_CMD_SET_CAMERA_FOCUS)"
  def describe(:camera_cap_flags_has_video_stream), do: "Camera has video streaming capabilities (request VIDEO_STREAM_INFORMATION with MAV_CMD_REQUEST_MESSAGE for video streaming info)"
  def describe(:camera_cap_flags_has_tracking_point), do: "Camera supports tracking of a point on the camera view."
  def describe(:camera_cap_flags_has_tracking_rectangle), do: "Camera supports tracking of a selection rectangle on the camera view."
  def describe(:camera_cap_flags_has_tracking_geo_status), do: "Camera supports tracking geo status (CAMERA_TRACKING_GEO_STATUS)."
  def describe(:camera_feedback_flags), do: ""
  def describe(:camera_feedback_photo), do: "Shooting photos, not video."
  def describe(:camera_feedback_video), do: "Shooting video, not stills."
  def describe(:camera_feedback_badexposure), do: "Unable to achieve requested exposure (e.g. shutter speed too low)."
  def describe(:camera_feedback_closedloop), do: "Closed loop feedback from camera, we know for sure it has successfully taken a picture."
  def describe(:camera_feedback_openloop), do: "Open loop camera, an image trigger has been requested but we can't know for sure it has successfully taken a picture."
  def describe(:camera_mode), do: "Camera Modes."
  def describe(:camera_mode_image), do: "Camera is in image/photo capture mode."
  def describe(:camera_mode_video), do: "Camera is in video capture mode."
  def describe(:camera_mode_image_survey), do: "Camera is in image survey capture mode. It allows for camera controller to do specific settings for surveys."
  def describe(:camera_status_types), do: ""
  def describe(:camera_status_type_heartbeat), do: "Camera heartbeat, announce camera component ID at 1Hz."
  def describe(:camera_status_type_trigger), do: "Camera image triggered."
  def describe(:camera_status_type_disconnect), do: "Camera connection lost."
  def describe(:camera_status_type_error), do: "Camera unknown error."
  def describe(:camera_status_type_lowbatt), do: "Camera battery low. Parameter p1 shows reported voltage."
  def describe(:camera_status_type_lowstore), do: "Camera storage low. Parameter p1 shows reported shots remaining."
  def describe(:camera_status_type_lowstorev), do: "Camera storage low. Parameter p1 shows reported video minutes remaining."
  def describe(:copter_mode), do: "A mapping of copter flight modes for custom_mode field of heartbeat."
  def describe(:copter_mode_stabilize), do: ""
  def describe(:copter_mode_acro), do: ""
  def describe(:copter_mode_alt_hold), do: ""
  def describe(:copter_mode_auto), do: ""
  def describe(:copter_mode_guided), do: ""
  def describe(:copter_mode_loiter), do: ""
  def describe(:copter_mode_rtl), do: ""
  def describe(:copter_mode_circle), do: ""
  def describe(:copter_mode_land), do: ""
  def describe(:copter_mode_drift), do: ""
  def describe(:copter_mode_sport), do: ""
  def describe(:copter_mode_flip), do: ""
  def describe(:copter_mode_autotune), do: ""
  def describe(:copter_mode_poshold), do: ""
  def describe(:copter_mode_brake), do: ""
  def describe(:copter_mode_throw), do: ""
  def describe(:copter_mode_avoid_adsb), do: ""
  def describe(:copter_mode_guided_nogps), do: ""
  def describe(:copter_mode_smart_rtl), do: ""
  def describe(:copter_mode_flowhold), do: ""
  def describe(:copter_mode_follow), do: ""
  def describe(:copter_mode_zigzag), do: ""
  def describe(:copter_mode_systemid), do: ""
  def describe(:copter_mode_autorotate), do: ""
  def describe(:deepstall_stage), do: "Deepstall flight stage."
  def describe(:deepstall_stage_fly_to_landing), do: "Flying to the landing point."
  def describe(:deepstall_stage_estimate_wind), do: "Building an estimate of the wind."
  def describe(:deepstall_stage_wait_for_breakout), do: "Waiting to breakout of the loiter to fly the approach."
  def describe(:deepstall_stage_fly_to_arc), do: "Flying to the first arc point to turn around to the landing point."
  def describe(:deepstall_stage_arc), do: "Turning around back to the deepstall landing point."
  def describe(:deepstall_stage_approach), do: "Approaching the landing point."
  def describe(:deepstall_stage_land), do: "Stalling and steering towards the land point."
  def describe(:device_op_bustype), do: "Bus types for device operations."
  def describe(:device_op_bustype_i2c), do: "I2C Device operation."
  def describe(:device_op_bustype_spi), do: "SPI Device operation."
  def describe(:ekf_status_flags), do: "Flags in EKF_STATUS message."
  def describe(:ekf_attitude), do: "Set if EKF's attitude estimate is good."
  def describe(:ekf_velocity_horiz), do: "Set if EKF's horizontal velocity estimate is good."
  def describe(:ekf_velocity_vert), do: "Set if EKF's vertical velocity estimate is good."
  def describe(:ekf_pos_horiz_rel), do: "Set if EKF's horizontal position (relative) estimate is good."
  def describe(:ekf_pos_horiz_abs), do: "Set if EKF's horizontal position (absolute) estimate is good."
  def describe(:ekf_pos_vert_abs), do: "Set if EKF's vertical position (absolute) estimate is good."
  def describe(:ekf_pos_vert_agl), do: "Set if EKF's vertical position (above ground) estimate is good."
  def describe(:ekf_const_pos_mode), do: "EKF is in constant position mode and does not know it's absolute or relative position."
  def describe(:ekf_pred_pos_horiz_rel), do: "Set if EKF's predicted horizontal position (relative) estimate is good."
  def describe(:ekf_pred_pos_horiz_abs), do: "Set if EKF's predicted horizontal position (absolute) estimate is good."
  def describe(:ekf_uninitialized), do: "Set if EKF has never been healthy."
  def describe(:estimator_status_flags), do: "Flags in ESTIMATOR_STATUS message"
  def describe(:estimator_attitude), do: "True if the attitude estimate is good"
  def describe(:estimator_velocity_horiz), do: "True if the horizontal velocity estimate is good"
  def describe(:estimator_velocity_vert), do: "True if the vertical velocity estimate is good"
  def describe(:estimator_pos_horiz_rel), do: "True if the horizontal position (relative) estimate is good"
  def describe(:estimator_pos_horiz_abs), do: "True if the horizontal position (absolute) estimate is good"
  def describe(:estimator_pos_vert_abs), do: "True if the vertical position (absolute) estimate is good"
  def describe(:estimator_pos_vert_agl), do: "True if the vertical position (above ground) estimate is good"
  def describe(:estimator_const_pos_mode), do: "True if the EKF is in a constant position mode and is not using external measurements (eg GPS or optical flow)"
  def describe(:estimator_pred_pos_horiz_rel), do: "True if the EKF has sufficient data to enter a mode that will provide a (relative) position estimate"
  def describe(:estimator_pred_pos_horiz_abs), do: "True if the EKF has sufficient data to enter a mode that will provide a (absolute) position estimate"
  def describe(:estimator_gps_glitch), do: "True if the EKF has detected a GPS glitch"
  def describe(:estimator_accel_error), do: "True if the EKF has detected bad accelerometer data"
  def describe(:fence_action), do: ""
  def describe(:fence_action_none), do: "Disable fenced mode"
  def describe(:fence_action_guided), do: "Switched to guided mode to return point (fence point 0)"
  def describe(:fence_action_report), do: "Report fence breach, but don't take action"
  def describe(:fence_action_guided_thr_pass), do: "Switched to guided mode to return point (fence point 0) with manual throttle control"
  def describe(:fence_action_rtl), do: "Switch to RTL (return to launch) mode and head for the return point."
  def describe(:fence_breach), do: ""
  def describe(:fence_breach_none), do: "No last fence breach"
  def describe(:fence_breach_minalt), do: "Breached minimum altitude"
  def describe(:fence_breach_maxalt), do: "Breached maximum altitude"
  def describe(:fence_breach_boundary), do: "Breached fence boundary"
  def describe(:fence_mitigate), do: "Actions being taken to mitigate/prevent fence breach"
  def describe(:fence_mitigate_unknown), do: "Unknown"
  def describe(:fence_mitigate_none), do: "No actions being taken"
  def describe(:fence_mitigate_vel_limit), do: "Velocity limiting active to prevent breach"
  def describe(:firmware_version_type), do: "These values define the type of firmware release. These values indicate the first version or release of this type. For example the first alpha release would be 64, the second would be 65."
  def describe(:firmware_version_type_dev), do: "development release"
  def describe(:firmware_version_type_alpha), do: "alpha release"
  def describe(:firmware_version_type_beta), do: "beta release"
  def describe(:firmware_version_type_rc), do: "release candidate"
  def describe(:firmware_version_type_official), do: "official stable release"
  def describe(:gimbal_axis), do: ""
  def describe(:gimbal_axis_yaw), do: "Gimbal yaw axis."
  def describe(:gimbal_axis_pitch), do: "Gimbal pitch axis."
  def describe(:gimbal_axis_roll), do: "Gimbal roll axis."
  def describe(:gimbal_axis_calibration_required), do: ""
  def describe(:gimbal_axis_calibration_required_unknown), do: "Whether or not this axis requires calibration is unknown at this time."
  def describe(:gimbal_axis_calibration_required_true), do: "This axis requires calibration."
  def describe(:gimbal_axis_calibration_required_false), do: "This axis does not require calibration."
  def describe(:gimbal_axis_calibration_status), do: ""
  def describe(:gimbal_axis_calibration_status_in_progress), do: "Axis calibration is in progress."
  def describe(:gimbal_axis_calibration_status_succeeded), do: "Axis calibration succeeded."
  def describe(:gimbal_axis_calibration_status_failed), do: "Axis calibration failed."
  def describe(:gopro_burst_rate), do: ""
  def describe(:gopro_burst_rate_3_in_1_second), do: "3 Shots / 1 Second."
  def describe(:gopro_burst_rate_5_in_1_second), do: "5 Shots / 1 Second."
  def describe(:gopro_burst_rate_10_in_1_second), do: "10 Shots / 1 Second."
  def describe(:gopro_burst_rate_10_in_2_second), do: "10 Shots / 2 Second."
  def describe(:gopro_burst_rate_10_in_3_second), do: "10 Shots / 3 Second (Hero 4 Only)."
  def describe(:gopro_burst_rate_30_in_1_second), do: "30 Shots / 1 Second."
  def describe(:gopro_burst_rate_30_in_2_second), do: "30 Shots / 2 Second."
  def describe(:gopro_burst_rate_30_in_3_second), do: "30 Shots / 3 Second."
  def describe(:gopro_burst_rate_30_in_6_second), do: "30 Shots / 6 Second."
  def describe(:gopro_capture_mode), do: ""
  def describe(:gopro_capture_mode_video), do: "Video mode."
  def describe(:gopro_capture_mode_photo), do: "Photo mode."
  def describe(:gopro_capture_mode_burst), do: "Burst mode, Hero 3+ only."
  def describe(:gopro_capture_mode_time_lapse), do: "Time lapse mode, Hero 3+ only."
  def describe(:gopro_capture_mode_multi_shot), do: "Multi shot mode, Hero 4 only."
  def describe(:gopro_capture_mode_playback), do: "Playback mode, Hero 4 only, silver only except when LCD or HDMI is connected to black."
  def describe(:gopro_capture_mode_setup), do: "Playback mode, Hero 4 only."
  def describe(:gopro_capture_mode_unknown), do: "Mode not yet known."
  def describe(:gopro_charging), do: ""
  def describe(:gopro_charging_disabled), do: "Charging disabled."
  def describe(:gopro_charging_enabled), do: "Charging enabled."
  def describe(:gopro_command), do: ""
  def describe(:gopro_command_power), do: "(Get/Set)."
  def describe(:gopro_command_capture_mode), do: "(Get/Set)."
  def describe(:gopro_command_shutter), do: "(___/Set)."
  def describe(:gopro_command_battery), do: "(Get/___)."
  def describe(:gopro_command_model), do: "(Get/___)."
  def describe(:gopro_command_video_settings), do: "(Get/Set)."
  def describe(:gopro_command_low_light), do: "(Get/Set)."
  def describe(:gopro_command_photo_resolution), do: "(Get/Set)."
  def describe(:gopro_command_photo_burst_rate), do: "(Get/Set)."
  def describe(:gopro_command_protune), do: "(Get/Set)."
  def describe(:gopro_command_protune_white_balance), do: "(Get/Set) Hero 3+ Only."
  def describe(:gopro_command_protune_colour), do: "(Get/Set) Hero 3+ Only."
  def describe(:gopro_command_protune_gain), do: "(Get/Set) Hero 3+ Only."
  def describe(:gopro_command_protune_sharpness), do: "(Get/Set) Hero 3+ Only."
  def describe(:gopro_command_protune_exposure), do: "(Get/Set) Hero 3+ Only."
  def describe(:gopro_command_time), do: "(Get/Set)."
  def describe(:gopro_command_charging), do: "(Get/Set)."
  def describe(:gopro_field_of_view), do: ""
  def describe(:gopro_field_of_view_wide), do: "0x00: Wide."
  def describe(:gopro_field_of_view_medium), do: "0x01: Medium."
  def describe(:gopro_field_of_view_narrow), do: "0x02: Narrow."
  def describe(:gopro_frame_rate), do: ""
  def describe(:gopro_frame_rate_12), do: "12 FPS."
  def describe(:gopro_frame_rate_15), do: "15 FPS."
  def describe(:gopro_frame_rate_24), do: "24 FPS."
  def describe(:gopro_frame_rate_25), do: "25 FPS."
  def describe(:gopro_frame_rate_30), do: "30 FPS."
  def describe(:gopro_frame_rate_48), do: "48 FPS."
  def describe(:gopro_frame_rate_50), do: "50 FPS."
  def describe(:gopro_frame_rate_60), do: "60 FPS."
  def describe(:gopro_frame_rate_80), do: "80 FPS."
  def describe(:gopro_frame_rate_90), do: "90 FPS."
  def describe(:gopro_frame_rate_100), do: "100 FPS."
  def describe(:gopro_frame_rate_120), do: "120 FPS."
  def describe(:gopro_frame_rate_240), do: "240 FPS."
  def describe(:gopro_frame_rate_12_5), do: "12.5 FPS."
  def describe(:gopro_heartbeat_flags), do: ""
  def describe(:gopro_flag_recording), do: "GoPro is currently recording."
  def describe(:gopro_heartbeat_status), do: ""
  def describe(:gopro_heartbeat_status_disconnected), do: "No GoPro connected."
  def describe(:gopro_heartbeat_status_incompatible), do: "The detected GoPro is not HeroBus compatible."
  def describe(:gopro_heartbeat_status_connected), do: "A HeroBus compatible GoPro is connected."
  def describe(:gopro_heartbeat_status_error), do: "An unrecoverable error was encountered with the connected GoPro, it may require a power cycle."
  def describe(:gopro_model), do: ""
  def describe(:gopro_model_unknown), do: "Unknown gopro model."
  def describe(:gopro_model_hero_3_plus_silver), do: "Hero 3+ Silver (HeroBus not supported by GoPro)."
  def describe(:gopro_model_hero_3_plus_black), do: "Hero 3+ Black."
  def describe(:gopro_model_hero_4_silver), do: "Hero 4 Silver."
  def describe(:gopro_model_hero_4_black), do: "Hero 4 Black."
  def describe(:gopro_photo_resolution), do: ""
  def describe(:gopro_photo_resolution_5mp_medium), do: "5MP Medium."
  def describe(:gopro_photo_resolution_7mp_medium), do: "7MP Medium."
  def describe(:gopro_photo_resolution_7mp_wide), do: "7MP Wide."
  def describe(:gopro_photo_resolution_10mp_wide), do: "10MP Wide."
  def describe(:gopro_photo_resolution_12mp_wide), do: "12MP Wide."
  def describe(:gopro_protune_colour), do: ""
  def describe(:gopro_protune_colour_standard), do: "Auto."
  def describe(:gopro_protune_colour_neutral), do: "Neutral."
  def describe(:gopro_protune_exposure), do: ""
  def describe(:gopro_protune_exposure_neg_5_0), do: "-5.0 EV (Hero 3+ Only)."
  def describe(:gopro_protune_exposure_neg_4_5), do: "-4.5 EV (Hero 3+ Only)."
  def describe(:gopro_protune_exposure_neg_4_0), do: "-4.0 EV (Hero 3+ Only)."
  def describe(:gopro_protune_exposure_neg_3_5), do: "-3.5 EV (Hero 3+ Only)."
  def describe(:gopro_protune_exposure_neg_3_0), do: "-3.0 EV (Hero 3+ Only)."
  def describe(:gopro_protune_exposure_neg_2_5), do: "-2.5 EV (Hero 3+ Only)."
  def describe(:gopro_protune_exposure_neg_2_0), do: "-2.0 EV."
  def describe(:gopro_protune_exposure_neg_1_5), do: "-1.5 EV."
  def describe(:gopro_protune_exposure_neg_1_0), do: "-1.0 EV."
  def describe(:gopro_protune_exposure_neg_0_5), do: "-0.5 EV."
  def describe(:gopro_protune_exposure_zero), do: "0.0 EV."
  def describe(:gopro_protune_exposure_pos_0_5), do: "+0.5 EV."
  def describe(:gopro_protune_exposure_pos_1_0), do: "+1.0 EV."
  def describe(:gopro_protune_exposure_pos_1_5), do: "+1.5 EV."
  def describe(:gopro_protune_exposure_pos_2_0), do: "+2.0 EV."
  def describe(:gopro_protune_exposure_pos_2_5), do: "+2.5 EV (Hero 3+ Only)."
  def describe(:gopro_protune_exposure_pos_3_0), do: "+3.0 EV (Hero 3+ Only)."
  def describe(:gopro_protune_exposure_pos_3_5), do: "+3.5 EV (Hero 3+ Only)."
  def describe(:gopro_protune_exposure_pos_4_0), do: "+4.0 EV (Hero 3+ Only)."
  def describe(:gopro_protune_exposure_pos_4_5), do: "+4.5 EV (Hero 3+ Only)."
  def describe(:gopro_protune_exposure_pos_5_0), do: "+5.0 EV (Hero 3+ Only)."
  def describe(:gopro_protune_gain), do: ""
  def describe(:gopro_protune_gain_400), do: "ISO 400."
  def describe(:gopro_protune_gain_800), do: "ISO 800 (Only Hero 4)."
  def describe(:gopro_protune_gain_1600), do: "ISO 1600."
  def describe(:gopro_protune_gain_3200), do: "ISO 3200 (Only Hero 4)."
  def describe(:gopro_protune_gain_6400), do: "ISO 6400."
  def describe(:gopro_protune_sharpness), do: ""
  def describe(:gopro_protune_sharpness_low), do: "Low Sharpness."
  def describe(:gopro_protune_sharpness_medium), do: "Medium Sharpness."
  def describe(:gopro_protune_sharpness_high), do: "High Sharpness."
  def describe(:gopro_protune_white_balance), do: ""
  def describe(:gopro_protune_white_balance_auto), do: "Auto."
  def describe(:gopro_protune_white_balance_3000k), do: "3000K."
  def describe(:gopro_protune_white_balance_5500k), do: "5500K."
  def describe(:gopro_protune_white_balance_6500k), do: "6500K."
  def describe(:gopro_protune_white_balance_raw), do: "Camera Raw."
  def describe(:gopro_request_status), do: ""
  def describe(:gopro_request_success), do: "The write message with ID indicated succeeded."
  def describe(:gopro_request_failed), do: "The write message with ID indicated failed."
  def describe(:gopro_resolution), do: ""
  def describe(:gopro_resolution_480p), do: "848 x 480 (480p)."
  def describe(:gopro_resolution_720p), do: "1280 x 720 (720p)."
  def describe(:gopro_resolution_960p), do: "1280 x 960 (960p)."
  def describe(:gopro_resolution_1080p), do: "1920 x 1080 (1080p)."
  def describe(:gopro_resolution_1440p), do: "1920 x 1440 (1440p)."
  def describe(:gopro_resolution_2_7k_17_9), do: "2704 x 1440 (2.7k-17:9)."
  def describe(:gopro_resolution_2_7k_16_9), do: "2704 x 1524 (2.7k-16:9)."
  def describe(:gopro_resolution_2_7k_4_3), do: "2704 x 2028 (2.7k-4:3)."
  def describe(:gopro_resolution_4k_16_9), do: "3840 x 2160 (4k-16:9)."
  def describe(:gopro_resolution_4k_17_9), do: "4096 x 2160 (4k-17:9)."
  def describe(:gopro_resolution_720p_superview), do: "1280 x 720 (720p-SuperView)."
  def describe(:gopro_resolution_1080p_superview), do: "1920 x 1080 (1080p-SuperView)."
  def describe(:gopro_resolution_2_7k_superview), do: "2704 x 1520 (2.7k-SuperView)."
  def describe(:gopro_resolution_4k_superview), do: "3840 x 2160 (4k-SuperView)."
  def describe(:gopro_video_settings_flags), do: ""
  def describe(:gopro_video_settings_tv_mode), do: "0=NTSC, 1=PAL."
  def describe(:gps_fix_type), do: "Type of GPS fix"
  def describe(:gps_fix_type_no_gps), do: "No GPS connected"
  def describe(:gps_fix_type_no_fix), do: "No position information, GPS is connected"
  def describe(:gps_fix_type_2d_fix), do: "2D position"
  def describe(:gps_fix_type_3d_fix), do: "3D position"
  def describe(:gps_fix_type_dgps), do: "DGPS/SBAS aided 3D position"
  def describe(:gps_fix_type_rtk_float), do: "RTK float, 3D position"
  def describe(:gps_fix_type_rtk_fixed), do: "RTK Fixed, 3D position"
  def describe(:gps_fix_type_static), do: "Static fixed, typically used for base stations"
  def describe(:gps_fix_type_ppp), do: "PPP, 3D position."
  def describe(:gps_input_ignore_flags), do: ""
  def describe(:gps_input_ignore_flag_alt), do: "ignore altitude field"
  def describe(:gps_input_ignore_flag_hdop), do: "ignore hdop field"
  def describe(:gps_input_ignore_flag_vdop), do: "ignore vdop field"
  def describe(:gps_input_ignore_flag_vel_horiz), do: "ignore horizontal velocity field (vn and ve)"
  def describe(:gps_input_ignore_flag_vel_vert), do: "ignore vertical velocity field (vd)"
  def describe(:gps_input_ignore_flag_speed_accuracy), do: "ignore speed accuracy field"
  def describe(:gps_input_ignore_flag_horizontal_accuracy), do: "ignore horizontal accuracy field"
  def describe(:gps_input_ignore_flag_vertical_accuracy), do: "ignore vertical accuracy field"
  def describe(:gripper_actions), do: "Gripper actions."
  def describe(:gripper_action_release), do: "Gripper release cargo."
  def describe(:gripper_action_grab), do: "Gripper grab onto cargo."
  def describe(:heading_type), do: ""
  def describe(:heading_type_course_over_ground), do: ""
  def describe(:heading_type_heading), do: ""
  def describe(:hl_failure_flag), do: "Flags to report failure cases over the high latency telemtry."
  def describe(:hl_failure_flag_gps), do: "GPS failure."
  def describe(:hl_failure_flag_differential_pressure), do: "Differential pressure sensor failure."
  def describe(:hl_failure_flag_absolute_pressure), do: "Absolute pressure sensor failure."
  def describe(:hl_failure_flag_3d_accel), do: "Accelerometer sensor failure."
  def describe(:hl_failure_flag_3d_gyro), do: "Gyroscope sensor failure."
  def describe(:hl_failure_flag_3d_mag), do: "Magnetometer sensor failure."
  def describe(:hl_failure_flag_terrain), do: "Terrain subsystem failure."
  def describe(:hl_failure_flag_battery), do: "Battery failure/critical low battery."
  def describe(:hl_failure_flag_rc_receiver), do: "RC receiver failure/no rc connection."
  def describe(:hl_failure_flag_offboard_link), do: "Offboard link failure."
  def describe(:hl_failure_flag_engine), do: "Engine failure."
  def describe(:hl_failure_flag_geofence), do: "Geofence violation."
  def describe(:hl_failure_flag_estimator), do: "Estimator failure, for example measurement rejection or large variances."
  def describe(:hl_failure_flag_mission), do: "Mission failure."
  def describe(:icarous_fms_state), do: ""
  def describe(:icarous_fms_state_idle), do: ""
  def describe(:icarous_fms_state_takeoff), do: ""
  def describe(:icarous_fms_state_climb), do: ""
  def describe(:icarous_fms_state_cruise), do: ""
  def describe(:icarous_fms_state_approach), do: ""
  def describe(:icarous_fms_state_land), do: ""
  def describe(:icarous_track_band_types), do: ""
  def describe(:icarous_track_band_type_none), do: ""
  def describe(:icarous_track_band_type_near), do: ""
  def describe(:icarous_track_band_type_recovery), do: ""
  def describe(:landing_target_type), do: "Type of landing target"
  def describe(:landing_target_type_light_beacon), do: "Landing target signaled by light beacon (ex: IR-LOCK)"
  def describe(:landing_target_type_radio_beacon), do: "Landing target signaled by radio beacon (ex: ILS, NDB)"
  def describe(:landing_target_type_vision_fiducial), do: "Landing target represented by a fiducial marker (ex: ARTag)"
  def describe(:landing_target_type_vision_other), do: "Landing target represented by a pre-defined visual shape/feature (ex: X-marker, H-marker, square)"
  def describe(:led_control_pattern), do: ""
  def describe(:led_control_pattern_off), do: "LED patterns off (return control to regular vehicle control)."
  def describe(:led_control_pattern_firmwareupdate), do: "LEDs show pattern during firmware update."
  def describe(:led_control_pattern_custom), do: "Custom Pattern using custom bytes fields."
  def describe(:limit_module), do: ""
  def describe(:limit_gpslock), do: "Pre-initialization."
  def describe(:limit_geofence), do: "Disabled."
  def describe(:limit_altitude), do: "Checking limits."
  def describe(:limits_state), do: ""
  def describe(:limits_init), do: "Pre-initialization."
  def describe(:limits_disabled), do: "Disabled."
  def describe(:limits_enabled), do: "Checking limits."
  def describe(:limits_triggered), do: "A limit has been breached."
  def describe(:limits_recovering), do: "Taking action e.g. Return/RTL."
  def describe(:limits_recovered), do: "We're no longer in breach of a limit."
  def describe(:mag_cal_status), do: ""
  def describe(:mag_cal_not_started), do: ""
  def describe(:mag_cal_waiting_to_start), do: ""
  def describe(:mag_cal_running_step_one), do: ""
  def describe(:mag_cal_running_step_two), do: ""
  def describe(:mag_cal_success), do: ""
  def describe(:mag_cal_failed), do: ""
  def describe(:mag_cal_bad_orientation), do: ""
  def describe(:mag_cal_bad_radius), do: ""
  def describe(:mav_arm_auth_denied_reason), do: ""
  def describe(:mav_arm_auth_denied_reason_generic), do: "Not a specific reason"
  def describe(:mav_arm_auth_denied_reason_none), do: "Authorizer will send the error as string to GCS"
  def describe(:mav_arm_auth_denied_reason_invalid_waypoint), do: "At least one waypoint have a invalid value"
  def describe(:mav_arm_auth_denied_reason_timeout), do: "Timeout in the authorizer process(in case it depends on network)"
  def describe(:mav_arm_auth_denied_reason_airspace_in_use), do: "Airspace of the mission in use by another vehicle, second result parameter can have the waypoint id that caused it to be denied."
  def describe(:mav_arm_auth_denied_reason_bad_weather), do: "Weather is not good to fly"
  def describe(:mav_autopilot), do: "Micro air vehicle / autopilot classes. This identifies the individual model."
  def describe(:mav_autopilot_generic), do: "Generic autopilot, full support for everything"
  def describe(:mav_autopilot_reserved), do: "Reserved for future use."
  def describe(:mav_autopilot_slugs), do: "SLUGS autopilot, http://slugsuav.soe.ucsc.edu"
  def describe(:mav_autopilot_ardupilotmega), do: "ArduPilot - Plane/Copter/Rover/Sub/Tracker, https://ardupilot.org"
  def describe(:mav_autopilot_openpilot), do: "OpenPilot, http://openpilot.org"
  def describe(:mav_autopilot_generic_waypoints_only), do: "Generic autopilot only supporting simple waypoints"
  def describe(:mav_autopilot_generic_waypoints_and_simple_navigation_only), do: "Generic autopilot supporting waypoints and other simple navigation commands"
  def describe(:mav_autopilot_generic_mission_full), do: "Generic autopilot supporting the full mission command set"
  def describe(:mav_autopilot_invalid), do: "No valid autopilot, e.g. a GCS or other MAVLink component"
  def describe(:mav_autopilot_ppz), do: "PPZ UAV - http://nongnu.org/paparazzi"
  def describe(:mav_autopilot_udb), do: "UAV Dev Board"
  def describe(:mav_autopilot_fp), do: "FlexiPilot"
  def describe(:mav_autopilot_px4), do: "PX4 Autopilot - http://px4.io/"
  def describe(:mav_autopilot_smaccmpilot), do: "SMACCMPilot - http://smaccmpilot.org"
  def describe(:mav_autopilot_autoquad), do: "AutoQuad -- http://autoquad.org"
  def describe(:mav_autopilot_armazila), do: "Armazila -- http://armazila.com"
  def describe(:mav_autopilot_aerob), do: "Aerob -- http://aerob.ru"
  def describe(:mav_autopilot_asluav), do: "ASLUAV autopilot -- http://www.asl.ethz.ch"
  def describe(:mav_autopilot_smartap), do: "SmartAP Autopilot - http://sky-drones.com"
  def describe(:mav_autopilot_airrails), do: "AirRails - http://uaventure.com"
  def describe(:mav_battery_charge_state), do: "Enumeration for battery charge states."
  def describe(:mav_battery_charge_state_undefined), do: "Low battery state is not provided"
  def describe(:mav_battery_charge_state_ok), do: "Battery is not in low state. Normal operation."
  def describe(:mav_battery_charge_state_low), do: "Battery state is low, warn and monitor close."
  def describe(:mav_battery_charge_state_critical), do: "Battery state is critical, return or abort immediately."
  def describe(:mav_battery_charge_state_emergency), do: "Battery state is too low for ordinary abort sequence. Perform fastest possible emergency stop to prevent damage."
  def describe(:mav_battery_charge_state_failed), do: "Battery failed, damage unavoidable."
  def describe(:mav_battery_charge_state_unhealthy), do: "Battery is diagnosed to be defective or an error occurred, usage is discouraged / prohibited."
  def describe(:mav_battery_charge_state_charging), do: "Battery is charging."
  def describe(:mav_battery_function), do: "Enumeration of battery functions"
  def describe(:mav_battery_function_unknown), do: "Battery function is unknown"
  def describe(:mav_battery_function_all), do: "Battery supports all flight systems"
  def describe(:mav_battery_function_propulsion), do: "Battery for the propulsion system"
  def describe(:mav_battery_function_avionics), do: "Avionics battery"
  def describe(:mav_battery_type_payload), do: "Payload battery"
  def describe(:mav_battery_type), do: "Enumeration of battery types"
  def describe(:mav_battery_type_unknown), do: "Not specified."
  def describe(:mav_battery_type_lipo), do: "Lithium polymer battery"
  def describe(:mav_battery_type_life), do: "Lithium-iron-phosphate battery"
  def describe(:mav_battery_type_lion), do: "Lithium-ION battery"
  def describe(:mav_battery_type_nimh), do: "Nickel metal hydride battery"
  def describe(:mav_cmd), do: ""
  def describe(:mav_cmd_nav_waypoint), do: "Navigate to waypoint."
  def describe(:mav_cmd_nav_loiter_unlim), do: "Loiter around this waypoint an unlimited amount of time"
  def describe(:mav_cmd_nav_loiter_turns), do: "Loiter around this waypoint for X turns"
  def describe(:mav_cmd_nav_loiter_time), do: "Loiter around this waypoint for X seconds"
  def describe(:mav_cmd_nav_return_to_launch), do: "Return to launch location"
  def describe(:mav_cmd_nav_land), do: "Land at location."
  def describe(:mav_cmd_nav_takeoff), do: "Takeoff from ground / hand. Vehicles that support multiple takeoff modes (e.g. VTOL quadplane) should take off using the currently configured mode."
  def describe(:mav_cmd_nav_land_local), do: "Land at local position (local frame only)"
  def describe(:mav_cmd_nav_takeoff_local), do: "Takeoff from local position (local frame only)"
  def describe(:mav_cmd_nav_follow), do: "Vehicle following, i.e. this waypoint represents the position of a moving vehicle"
  def describe(:mav_cmd_nav_continue_and_change_alt), do: "Continue on the current course and climb/descend to specified altitude. When the altitude is reached continue to the next command (i.e., don't proceed to the next command until the desired altitude is reached."
  def describe(:mav_cmd_nav_loiter_to_alt), do: "Begin loiter at the specified Latitude and Longitude. If Lat=Lon=0, then loiter at the current position. Don't consider the navigation command complete (don't leave loiter) until the altitude has been reached. Additionally, if the Heading Required parameter is non-zero the aircraft will not leave the loiter until heading toward the next waypoint."
  def describe(:mav_cmd_do_follow), do: "Begin following a target"
  def describe(:mav_cmd_do_follow_reposition), do: "Reposition the MAV after a follow target command has been sent"
  def describe(:mav_cmd_nav_roi), do: "Sets the region of interest (ROI) for a sensor set or the vehicle itself. This can then be used by the vehicle's control system to control the vehicle attitude and the attitude of various sensors such as cameras."
  def describe(:mav_cmd_nav_pathplanning), do: "Control autonomous path planning on the MAV."
  def describe(:mav_cmd_nav_spline_waypoint), do: "Navigate to waypoint using a spline path."
  def describe(:mav_cmd_nav_altitude_wait), do: "Mission command to wait for an altitude or downwards vertical speed. This is meant for high altitude balloon launches, allowing the aircraft to be idle until either an altitude is reached or a negative vertical speed is reached (indicating early balloon burst). The wiggle time is how often to wiggle the control surfaces to prevent them seizing up."
  def describe(:mav_cmd_nav_vtol_takeoff), do: "Takeoff from ground using VTOL mode, and transition to forward flight with specified heading."
  def describe(:mav_cmd_nav_vtol_land), do: "Land using VTOL mode"
  def describe(:mav_cmd_nav_guided_enable), do: "hand control over to an external controller"
  def describe(:mav_cmd_nav_delay), do: "Delay the next navigation command a number of seconds or until a specified time"
  def describe(:mav_cmd_nav_payload_place), do: "Descend and place payload. Vehicle moves to specified location, descends until it detects a hanging payload has reached the ground, and then releases the payload. If ground is not detected before the reaching the maximum descent value (param1), the command will complete without releasing the payload."
  def describe(:mav_cmd_nav_last), do: "NOP - This command is only used to mark the upper limit of the NAV/ACTION commands in the enumeration"
  def describe(:mav_cmd_condition_delay), do: "Delay mission state machine."
  def describe(:mav_cmd_condition_change_alt), do: "Ascend/descend to target altitude at specified rate. Delay mission state machine until desired altitude reached."
  def describe(:mav_cmd_condition_distance), do: "Delay mission state machine until within desired distance of next NAV point."
  def describe(:mav_cmd_condition_yaw), do: "Reach a certain target angle."
  def describe(:mav_cmd_condition_last), do: "NOP - This command is only used to mark the upper limit of the CONDITION commands in the enumeration"
  def describe(:mav_cmd_do_set_mode), do: "Set system mode."
  def describe(:mav_cmd_do_jump), do: "Jump to the desired command in the mission list. Repeat this action only the specified number of times"
  def describe(:mav_cmd_do_change_speed), do: "Change speed and/or throttle set points."
  def describe(:mav_cmd_do_set_home), do: "Changes the home location either to the current location or a specified location."
  def describe(:mav_cmd_do_set_parameter), do: "Set a system parameter. Caution! Use of this command requires knowledge of the numeric enumeration value of the parameter."
  def describe(:mav_cmd_do_set_relay), do: "Set a relay to a condition."
  def describe(:mav_cmd_do_repeat_relay), do: "Cycle a relay on and off for a desired number of cycles with a desired period."
  def describe(:mav_cmd_do_set_servo), do: "Set a servo to a desired PWM value."
  def describe(:mav_cmd_do_repeat_servo), do: "Cycle a between its nominal setting and a desired PWM for a desired number of cycles with a desired period."
  def describe(:mav_cmd_do_flighttermination), do: "Terminate flight immediately"
  def describe(:mav_cmd_do_change_altitude), do: "Change altitude set point."
  def describe(:mav_cmd_do_land_start), do: "Mission command to perform a landing. This is used as a marker in a mission to tell the autopilot where a sequence of mission items that represents a landing starts. It may also be sent via a COMMAND_LONG to trigger a landing, in which case the nearest (geographically) landing sequence in the mission will be used. The Latitude/Longitude is optional, and may be set to 0 if not needed. If specified then it will be used to help find the closest landing sequence."
  def describe(:mav_cmd_do_rally_land), do: "Mission command to perform a landing from a rally point."
  def describe(:mav_cmd_do_go_around), do: "Mission command to safely abort an autonomous landing."
  def describe(:mav_cmd_do_reposition), do: "Reposition the vehicle to a specific WGS84 global position."
  def describe(:mav_cmd_do_pause_continue), do: "If in a GPS controlled position mode, hold the current position or continue."
  def describe(:mav_cmd_do_set_reverse), do: "Set moving direction to forward or reverse."
  def describe(:mav_cmd_do_set_roi_location), do: "Sets the region of interest (ROI) to a location. This can then be used by the vehicle's control system to control the vehicle attitude and the attitude of various sensors such as cameras."
  def describe(:mav_cmd_do_set_roi_wpnext_offset), do: "Sets the region of interest (ROI) to be toward next waypoint, with optional pitch/roll/yaw offset. This can then be used by the vehicle's control system to control the vehicle attitude and the attitude of various sensors such as cameras."
  def describe(:mav_cmd_do_set_roi_none), do: "Cancels any previous ROI command returning the vehicle/sensors to default flight characteristics. This can then be used by the vehicle's control system to control the vehicle attitude and the attitude of various sensors such as cameras."
  def describe(:mav_cmd_do_set_roi_sysid), do: "Mount tracks system with specified system ID. Determination of target vehicle position may be done with GLOBAL_POSITION_INT or any other means."
  def describe(:mav_cmd_do_control_video), do: "Control onboard camera system."
  def describe(:mav_cmd_do_set_roi), do: "Sets the region of interest (ROI) for a sensor set or the vehicle itself. This can then be used by the vehicle's control system to control the vehicle attitude and the attitude of various sensors such as cameras."
  def describe(:mav_cmd_do_digicam_configure), do: "Configure digital camera. This is a fallback message for systems that have not yet implemented PARAM_EXT_XXX messages and camera definition files (see https://mavlink.io/en/services/camera_def.html )."
  def describe(:mav_cmd_do_digicam_control), do: "Control digital camera. This is a fallback message for systems that have not yet implemented PARAM_EXT_XXX messages and camera definition files (see https://mavlink.io/en/services/camera_def.html )."
  def describe(:mav_cmd_do_mount_configure), do: "Mission command to configure a camera or antenna mount"
  def describe(:mav_cmd_do_mount_control), do: "Mission command to control a camera or antenna mount"
  def describe(:mav_cmd_do_set_cam_trigg_dist), do: "Mission command to set camera trigger distance for this flight. The camera is triggered each time this distance is exceeded. This command can also be used to set the shutter integration time for the camera."
  def describe(:mav_cmd_do_fence_enable), do: "Mission command to enable the geofence"
  def describe(:mav_cmd_do_parachute), do: "Mission item/command to release a parachute or enable/disable auto release."
  def describe(:mav_cmd_do_motor_test), do: "Mission command to perform motor test."
  def describe(:mav_cmd_do_inverted_flight), do: "Change to/from inverted flight."
  def describe(:mav_cmd_do_gripper), do: "Mission command to operate a gripper."
  def describe(:mav_cmd_do_autotune_enable), do: "Enable/disable autotune."
  def describe(:mav_cmd_nav_set_yaw_speed), do: "Sets a desired vehicle turn angle and speed change."
  def describe(:mav_cmd_do_set_cam_trigg_interval), do: "Mission command to set camera trigger interval for this flight. If triggering is enabled, the camera is triggered each time this interval expires. This command can also be used to set the shutter integration time for the camera."
  def describe(:mav_cmd_do_set_resume_repeat_dist), do: "Set the distance to be repeated on mission resume"
  def describe(:mav_cmd_do_sprayer), do: "Control attached liquid sprayer"
  def describe(:mav_cmd_do_send_script_message), do: "Pass instructions onto scripting, a script should be checking for a new command"
  def describe(:mav_cmd_do_aux_function), do: "Execute auxiliary function"
  def describe(:mav_cmd_do_mount_control_quat), do: "Mission command to control a camera or antenna mount, using a quaternion as reference."
  def describe(:mav_cmd_do_guided_master), do: "set id of master controller"
  def describe(:mav_cmd_do_guided_limits), do: "Set limits for external control"
  def describe(:mav_cmd_do_engine_control), do: "Control vehicle engine. This is interpreted by the vehicles engine controller to change the target engine state. It is intended for vehicles with internal combustion engines"
  def describe(:mav_cmd_do_set_mission_current), do: "Set the mission item with sequence number seq as current item. This means that the MAV will continue to this mission item on the shortest path (not following the mission items in-between)."
  def describe(:mav_cmd_do_last), do: "NOP - This command is only used to mark the upper limit of the DO commands in the enumeration"
  def describe(:mav_cmd_preflight_calibration), do: "Trigger calibration. This command will be only accepted if in pre-flight mode. Except for Temperature Calibration, only one sensor should be set in a single message and all others should be zero."
  def describe(:mav_cmd_preflight_set_sensor_offsets), do: "Set sensor offsets. This command will be only accepted if in pre-flight mode."
  def describe(:mav_cmd_preflight_uavcan), do: "Trigger UAVCAN configuration (actuator ID assignment and direction mapping). Note that this maps to the legacy UAVCAN v0 function UAVCAN_ENUMERATE, which is intended to be executed just once during initial vehicle configuration (it is not a normal pre-flight command and has been poorly named)."
  def describe(:mav_cmd_preflight_storage), do: "Request storage of different parameter values and logs. This command will be only accepted if in pre-flight mode."
  def describe(:mav_cmd_preflight_reboot_shutdown), do: "Request the reboot or shutdown of system components."
  def describe(:mav_cmd_override_goto), do: "Override current mission with command to pause mission, pause mission and move to position, continue/resume mission. When param 1 indicates that the mission is paused (MAV_GOTO_DO_HOLD), param 2 defines whether it holds in place or moves to another position."
  def describe(:mav_cmd_oblique_survey), do: "Mission command to set a Camera Auto Mount Pivoting Oblique Survey (Replaces CAM_TRIGG_DIST for this purpose). The camera is triggered each time this distance is exceeded, then the mount moves to the next position. Params 4~6 set-up the angle limits and number of positions for oblique survey, where mount-enabled vehicles automatically roll the camera between shots to emulate an oblique camera setup (providing an increased HFOV). This command can also be used to set the shutter integration time for the camera."
  def describe(:mav_cmd_mission_start), do: "start running a mission"
  def describe(:mav_cmd_component_arm_disarm), do: "Arms / Disarms a component"
  def describe(:mav_cmd_get_home_position), do: "Request the home position from the vehicle."
  def describe(:mav_cmd_start_rx_pair), do: "Starts receiver pairing."
  def describe(:mav_cmd_get_message_interval), do: "Request the interval between messages for a particular MAVLink message ID. The receiver should ACK the command and then emit its response in a MESSAGE_INTERVAL message."
  def describe(:mav_cmd_set_message_interval), do: "Set the interval between messages for a particular MAVLink message ID. This interface replaces REQUEST_DATA_STREAM."
  def describe(:mav_cmd_request_message), do: "Request the target system(s) emit a single instance of a specified message (i.e. a \"one-shot\" version of MAV_CMD_SET_MESSAGE_INTERVAL)."
  def describe(:mav_cmd_request_protocol_version), do: "Request MAVLink protocol version compatibility. All receivers should ACK the command and then emit their capabilities in an PROTOCOL_VERSION message"
  def describe(:mav_cmd_request_autopilot_capabilities), do: "Request autopilot capabilities. The receiver should ACK the command and then emit its capabilities in an AUTOPILOT_VERSION message"
  def describe(:mav_cmd_request_camera_information), do: "Request camera information (CAMERA_INFORMATION)."
  def describe(:mav_cmd_request_camera_settings), do: "Request camera settings (CAMERA_SETTINGS)."
  def describe(:mav_cmd_request_storage_information), do: "Request storage information (STORAGE_INFORMATION). Use the command's target_component to target a specific component's storage."
  def describe(:mav_cmd_storage_format), do: "Format a storage medium. Once format is complete, a STORAGE_INFORMATION message is sent. Use the command's target_component to target a specific component's storage."
  def describe(:mav_cmd_request_camera_capture_status), do: "Request camera capture status (CAMERA_CAPTURE_STATUS)"
  def describe(:mav_cmd_request_flight_information), do: "Request flight information (FLIGHT_INFORMATION)"
  def describe(:mav_cmd_reset_camera_settings), do: "Reset all camera settings to Factory Default"
  def describe(:mav_cmd_set_camera_mode), do: "Set camera running mode. Use NaN for reserved values. GCS will send a MAV_CMD_REQUEST_VIDEO_STREAM_STATUS command after a mode change if the camera supports video streaming."
  def describe(:mav_cmd_jump_tag), do: "Tagged jump target. Can be jumped to with MAV_CMD_DO_JUMP_TAG."
  def describe(:mav_cmd_do_jump_tag), do: "Jump to the matching tag in the mission list. Repeat this action for the specified number of times. A mission should contain a single matching tag for each jump. If this is not the case then a jump to a missing tag should complete the mission, and a jump where there are multiple matching tags should always select the one with the lowest mission sequence number."
  def describe(:mav_cmd_image_start_capture), do: "Start image capture sequence. Sends CAMERA_IMAGE_CAPTURED after each capture. Use NaN for reserved values."
  def describe(:mav_cmd_image_stop_capture), do: "Stop image capture sequence Use NaN for reserved values."
  def describe(:mav_cmd_do_trigger_control), do: "Enable or disable on-board camera triggering system."
  def describe(:mav_cmd_video_start_capture), do: "Starts video capture (recording)."
  def describe(:mav_cmd_video_stop_capture), do: "Stop the current video capture (recording)."
  def describe(:mav_cmd_video_start_streaming), do: "Start video streaming"
  def describe(:mav_cmd_video_stop_streaming), do: "Stop the given video stream"
  def describe(:mav_cmd_request_video_stream_information), do: "Request video stream information (VIDEO_STREAM_INFORMATION)"
  def describe(:mav_cmd_request_video_stream_status), do: "Request video stream status (VIDEO_STREAM_STATUS)"
  def describe(:mav_cmd_logging_start), do: "Request to start streaming logging data over MAVLink (see also LOGGING_DATA message)"
  def describe(:mav_cmd_logging_stop), do: "Request to stop streaming log data over MAVLink"
  def describe(:mav_cmd_airframe_configuration), do: ""
  def describe(:mav_cmd_control_high_latency), do: "Request to start/stop transmitting over the high latency telemetry"
  def describe(:mav_cmd_panorama_create), do: "Create a panorama at the current position"
  def describe(:mav_cmd_do_vtol_transition), do: "Request VTOL transition"
  def describe(:mav_cmd_arm_authorization_request), do: "Request authorization to arm the vehicle to a external entity, the arm authorizer is responsible to request all data that is needs from the vehicle before authorize or deny the request. If approved the progress of command_ack message should be set with period of time that this authorization is valid in seconds or in case it was denied it should be set with one of the reasons in ARM_AUTH_DENIED_REASON."
  def describe(:mav_cmd_set_guided_submode_standard), do: "This command sets the submode to standard guided when vehicle is in guided mode. The vehicle holds position and altitude and the user can input the desired velocities along all three axes."
  def describe(:mav_cmd_set_guided_submode_circle), do: "This command sets submode circle when vehicle is in guided mode. Vehicle flies along a circle facing the center of the circle. The user can input the velocity along the circle and change the radius. If no input is given the vehicle will hold position."
  def describe(:mav_cmd_nav_fence_return_point), do: "Fence return point (there can only be one such point in a geofence definition). If rally points are supported they should be used instead."
  def describe(:mav_cmd_nav_fence_polygon_vertex_inclusion), do: "Fence vertex for an inclusion polygon (the polygon must not be self-intersecting). The vehicle must stay within this area. Minimum of 3 vertices required."
  def describe(:mav_cmd_nav_fence_polygon_vertex_exclusion), do: "Fence vertex for an exclusion polygon (the polygon must not be self-intersecting). The vehicle must stay outside this area. Minimum of 3 vertices required."
  def describe(:mav_cmd_nav_fence_circle_inclusion), do: "Circular fence area. The vehicle must stay inside this area."
  def describe(:mav_cmd_nav_fence_circle_exclusion), do: "Circular fence area. The vehicle must stay outside this area."
  def describe(:mav_cmd_nav_rally_point), do: "Rally point. You can have multiple rally points defined."
  def describe(:mav_cmd_uavcan_get_node_info), do: "Commands the vehicle to respond with a sequence of messages UAVCAN_NODE_INFO, one message per every UAVCAN node that is online. Note that some of the response messages can be lost, which the receiver can detect easily by checking whether every received UAVCAN_NODE_STATUS has a matching message UAVCAN_NODE_INFO received earlier; if not, this command should be sent again in order to request re-transmission of the node information messages."
  def describe(:mav_cmd_payload_prepare_deploy), do: "Deploy payload on a Lat / Lon / Alt position. This includes the navigation to reach the required release position and velocity."
  def describe(:mav_cmd_payload_control_deploy), do: "Control the payload deployment."
  def describe(:mav_cmd_waypoint_user_1), do: "User defined waypoint item. Ground Station will show the Vehicle as flying through this item."
  def describe(:mav_cmd_waypoint_user_2), do: "User defined waypoint item. Ground Station will show the Vehicle as flying through this item."
  def describe(:mav_cmd_waypoint_user_3), do: "User defined waypoint item. Ground Station will show the Vehicle as flying through this item."
  def describe(:mav_cmd_waypoint_user_4), do: "User defined waypoint item. Ground Station will show the Vehicle as flying through this item."
  def describe(:mav_cmd_waypoint_user_5), do: "User defined waypoint item. Ground Station will show the Vehicle as flying through this item."
  def describe(:mav_cmd_spatial_user_1), do: "User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item."
  def describe(:mav_cmd_spatial_user_2), do: "User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item."
  def describe(:mav_cmd_spatial_user_3), do: "User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item."
  def describe(:mav_cmd_spatial_user_4), do: "User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item."
  def describe(:mav_cmd_spatial_user_5), do: "User defined spatial item. Ground Station will not show the Vehicle as flying through this item. Example: ROI item."
  def describe(:mav_cmd_user_1), do: "User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item."
  def describe(:mav_cmd_user_2), do: "User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item."
  def describe(:mav_cmd_user_3), do: "User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item."
  def describe(:mav_cmd_user_4), do: "User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item."
  def describe(:mav_cmd_user_5), do: "User defined command. Ground Station will not show the Vehicle as flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item."
  def describe(:mav_cmd_power_off_initiated), do: "A system wide power-off event has been initiated."
  def describe(:mav_cmd_solo_btn_fly_click), do: "FLY button has been clicked."
  def describe(:mav_cmd_solo_btn_fly_hold), do: "FLY button has been held for 1.5 seconds."
  def describe(:mav_cmd_solo_btn_pause_click), do: "PAUSE button has been clicked."
  def describe(:mav_cmd_fixed_mag_cal), do: "Magnetometer calibration based on fixed position in earth field given by inclination, declination and intensity."
  def describe(:mav_cmd_fixed_mag_cal_field), do: "Magnetometer calibration based on fixed expected field values."
  def describe(:mav_cmd_fixed_mag_cal_yaw), do: "Magnetometer calibration based on provided known yaw. This allows for fast calibration using WMM field tables in the vehicle, given only the known yaw of the vehicle. If Latitude and longitude are both zero then use the current vehicle location."
  def describe(:mav_cmd_do_start_mag_cal), do: "Initiate a magnetometer calibration."
  def describe(:mav_cmd_do_accept_mag_cal), do: "Accept a magnetometer calibration."
  def describe(:mav_cmd_do_cancel_mag_cal), do: "Cancel a running magnetometer calibration."
  def describe(:mav_cmd_set_factory_test_mode), do: "Command autopilot to get into factory test/diagnostic mode."
  def describe(:mav_cmd_do_send_banner), do: "Reply with the version banner."
  def describe(:mav_cmd_accelcal_vehicle_pos), do: "Used when doing accelerometer calibration. When sent to the GCS tells it what position to put the vehicle in. When sent to the vehicle says what position the vehicle is in."
  def describe(:mav_cmd_gimbal_reset), do: "Causes the gimbal to reset and boot as if it was just powered on."
  def describe(:mav_cmd_gimbal_axis_calibration_status), do: "Reports progress and success or failure of gimbal axis calibration procedure."
  def describe(:mav_cmd_gimbal_request_axis_calibration), do: "Starts commutation calibration on the gimbal."
  def describe(:mav_cmd_gimbal_full_reset), do: "Erases gimbal application and parameters."
  def describe(:mav_cmd_do_winch), do: "Command to operate winch."
  def describe(:mav_cmd_flash_bootloader), do: "Update the bootloader"
  def describe(:mav_cmd_battery_reset), do: "Reset battery capacity for batteries that accumulate consumed battery via integration."
  def describe(:mav_cmd_debug_trap), do: "Issue a trap signal to the autopilot process, presumably to enter the debugger."
  def describe(:mav_cmd_scripting), do: "Control onboard scripting."
  def describe(:mav_cmd_guided_change_speed), do: "Change flight speed at a given rate. This slews the vehicle at a controllable rate between it's previous speed and the new one. (affects GUIDED only. Outside GUIDED, aircraft ignores these commands. Designed for onboard companion-computer command-and-control, not normally operator/GCS control.)"
  def describe(:mav_cmd_guided_change_altitude), do: "Change target altitude at a given rate. This slews the vehicle at a controllable rate between it's previous altitude and the new one. (affects GUIDED only. Outside GUIDED, aircraft ignores these commands. Designed for onboard companion-computer command-and-control, not normally operator/GCS control.)"
  def describe(:mav_cmd_guided_change_heading), do: "Change to target heading at a given rate, overriding previous heading/s. This slews the vehicle at a controllable rate between it's previous heading and the new one. (affects GUIDED only. Exiting GUIDED returns aircraft to normal behaviour defined elsewhere. Designed for onboard companion-computer command-and-control, not normally operator/GCS control.)"
  def describe(:mav_cmd_ack), do: "ACK / NACK / ERROR values as a result of MAV_CMDs and for mission item transmission."
  def describe(:mav_cmd_ack_ok), do: "Command / mission item is ok."
  def describe(:mav_cmd_ack_err_fail), do: "Generic error message if none of the other reasons fails or if no detailed error reporting is implemented."
  def describe(:mav_cmd_ack_err_access_denied), do: "The system is refusing to accept this command from this source / communication partner."
  def describe(:mav_cmd_ack_err_not_supported), do: "Command or mission item is not supported, other commands would be accepted."
  def describe(:mav_cmd_ack_err_coordinate_frame_not_supported), do: "The coordinate frame of this command / mission item is not supported."
  def describe(:mav_cmd_ack_err_coordinates_out_of_range), do: "The coordinate frame of this command is ok, but he coordinate values exceed the safety limits of this system. This is a generic error, please use the more specific error messages below if possible."
  def describe(:mav_cmd_ack_err_x_lat_out_of_range), do: "The X or latitude value is out of range."
  def describe(:mav_cmd_ack_err_y_lon_out_of_range), do: "The Y or longitude value is out of range."
  def describe(:mav_cmd_ack_err_z_alt_out_of_range), do: "The Z or altitude value is out of range."
  def describe(:mav_cmd_do_aux_function_switch_level), do: ""
  def describe(:mav_cmd_do_aux_function_switch_level_low), do: "Switch Low."
  def describe(:mav_cmd_do_aux_function_switch_level_middle), do: "Switch Middle."
  def describe(:mav_cmd_do_aux_function_switch_level_high), do: "Switch High."
  def describe(:mav_collision_action), do: "Possible actions an aircraft can take to avoid a collision."
  def describe(:mav_collision_action_none), do: "Ignore any potential collisions"
  def describe(:mav_collision_action_report), do: "Report potential collision"
  def describe(:mav_collision_action_ascend_or_descend), do: "Ascend or Descend to avoid threat"
  def describe(:mav_collision_action_move_horizontally), do: "Move horizontally to avoid threat"
  def describe(:mav_collision_action_move_perpendicular), do: "Aircraft to move perpendicular to the collision's velocity vector"
  def describe(:mav_collision_action_rtl), do: "Aircraft to fly directly back to its launch point"
  def describe(:mav_collision_action_hover), do: "Aircraft to stop in place"
  def describe(:mav_collision_src), do: "Source of information about this collision."
  def describe(:mav_collision_src_adsb), do: "ID field references ADSB_VEHICLE packets"
  def describe(:mav_collision_src_mavlink_gps_global_int), do: "ID field references MAVLink SRC ID"
  def describe(:mav_collision_threat_level), do: "Aircraft-rated danger from this threat."
  def describe(:mav_collision_threat_level_none), do: "Not a threat"
  def describe(:mav_collision_threat_level_low), do: "Craft is mildly concerned about this threat"
  def describe(:mav_collision_threat_level_high), do: "Craft is panicking, and may take actions to avoid threat"
  def describe(:mav_component), do: "Component ids (values) for the different types and instances of onboard hardware/software that might make up a MAVLink system (autopilot, cameras, servos, GPS systems, avoidance systems etc.). Components must use the appropriate ID in their source address when sending messages. Components can also use IDs to determine if they are the intended recipient of an incoming message. The MAV_COMP_ID_ALL value is used to indicate messages that must be processed by all components. When creating new entries, components that can have multiple instances (e.g. cameras, servos etc.) should be allocated sequential values. An appropriate number of values should be left free after these components to allow the number of instances to be expanded."
  def describe(:mav_comp_id_all), do: "Target id (target_component) used to broadcast messages to all components of the receiving system. Components should attempt to process messages with this component ID and forward to components on any other interfaces. Note: This is not a valid *source* component id for a message."
  def describe(:mav_comp_id_autopilot1), do: "System flight controller component (\"autopilot\"). Only one autopilot is expected in a particular system."
  def describe(:mav_comp_id_user1), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user2), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user3), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user4), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user5), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user6), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user7), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user8), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user9), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user10), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user11), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user12), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user13), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user14), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user15), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user16), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user17), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user18), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user19), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user20), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user21), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user22), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user23), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user24), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user25), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user26), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user27), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user28), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user29), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user30), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user31), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user32), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user33), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user34), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user35), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user36), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user37), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user38), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user39), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user40), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user41), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user42), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user43), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_telemetry_radio), do: "Telemetry radio (e.g. SiK radio, or other component that emits RADIO_STATUS messages)."
  def describe(:mav_comp_id_user45), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user46), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user47), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user48), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user49), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user50), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user51), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user52), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user53), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user54), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user55), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user56), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user57), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user58), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user59), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user60), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user61), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user62), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user63), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user64), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user65), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user66), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user67), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user68), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user69), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user70), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user71), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user72), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user73), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user74), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_user75), do: "Id for a component on privately managed MAVLink network. Can be used for any purpose but may not be published by components outside of the private network."
  def describe(:mav_comp_id_camera), do: "Camera #1."
  def describe(:mav_comp_id_camera2), do: "Camera #2."
  def describe(:mav_comp_id_camera3), do: "Camera #3."
  def describe(:mav_comp_id_camera4), do: "Camera #4."
  def describe(:mav_comp_id_camera5), do: "Camera #5."
  def describe(:mav_comp_id_camera6), do: "Camera #6."
  def describe(:mav_comp_id_servo1), do: "Servo #1."
  def describe(:mav_comp_id_servo2), do: "Servo #2."
  def describe(:mav_comp_id_servo3), do: "Servo #3."
  def describe(:mav_comp_id_servo4), do: "Servo #4."
  def describe(:mav_comp_id_servo5), do: "Servo #5."
  def describe(:mav_comp_id_servo6), do: "Servo #6."
  def describe(:mav_comp_id_servo7), do: "Servo #7."
  def describe(:mav_comp_id_servo8), do: "Servo #8."
  def describe(:mav_comp_id_servo9), do: "Servo #9."
  def describe(:mav_comp_id_servo10), do: "Servo #10."
  def describe(:mav_comp_id_servo11), do: "Servo #11."
  def describe(:mav_comp_id_servo12), do: "Servo #12."
  def describe(:mav_comp_id_servo13), do: "Servo #13."
  def describe(:mav_comp_id_servo14), do: "Servo #14."
  def describe(:mav_comp_id_gimbal), do: "Gimbal #1."
  def describe(:mav_comp_id_log), do: "Logging component."
  def describe(:mav_comp_id_adsb), do: "Automatic Dependent Surveillance-Broadcast (ADS-B) component."
  def describe(:mav_comp_id_osd), do: "On Screen Display (OSD) devices for video links."
  def describe(:mav_comp_id_peripheral), do: "Generic autopilot peripheral component ID. Meant for devices that do not implement the parameter microservice."
  def describe(:mav_comp_id_qx1_gimbal), do: "Gimbal ID for QX1."
  def describe(:mav_comp_id_flarm), do: "FLARM collision alert component."
  def describe(:mav_comp_id_gimbal2), do: "Gimbal #2."
  def describe(:mav_comp_id_gimbal3), do: "Gimbal #3."
  def describe(:mav_comp_id_gimbal4), do: "Gimbal #4"
  def describe(:mav_comp_id_gimbal5), do: "Gimbal #5."
  def describe(:mav_comp_id_gimbal6), do: "Gimbal #6."
  def describe(:mav_comp_id_missionplanner), do: "Component that can generate/supply a mission flight plan (e.g. GCS or developer API)."
  def describe(:mav_comp_id_onboard_computer), do: "Component that lives on the onboard computer (companion computer) and has some generic functionalities, such as settings system parameters and monitoring the status of some processes that don't directly speak mavlink and so on."
  def describe(:mav_comp_id_pathplanner), do: "Component that finds an optimal path between points based on a certain constraint (e.g. minimum snap, shortest path, cost, etc.)."
  def describe(:mav_comp_id_obstacle_avoidance), do: "Component that plans a collision free path between two points."
  def describe(:mav_comp_id_visual_inertial_odometry), do: "Component that provides position estimates using VIO techniques."
  def describe(:mav_comp_id_pairing_manager), do: "Component that manages pairing of vehicle and GCS."
  def describe(:mav_comp_id_imu), do: "Inertial Measurement Unit (IMU) #1."
  def describe(:mav_comp_id_imu_2), do: "Inertial Measurement Unit (IMU) #2."
  def describe(:mav_comp_id_imu_3), do: "Inertial Measurement Unit (IMU) #3."
  def describe(:mav_comp_id_gps), do: "GPS #1."
  def describe(:mav_comp_id_gps2), do: "GPS #2."
  def describe(:mav_comp_id_odid_txrx_1), do: "Open Drone ID transmitter/receiver (Bluetooth/WiFi/Internet)."
  def describe(:mav_comp_id_odid_txrx_2), do: "Open Drone ID transmitter/receiver (Bluetooth/WiFi/Internet)."
  def describe(:mav_comp_id_odid_txrx_3), do: "Open Drone ID transmitter/receiver (Bluetooth/WiFi/Internet)."
  def describe(:mav_comp_id_udp_bridge), do: "Component to bridge MAVLink to UDP (i.e. from a UART)."
  def describe(:mav_comp_id_uart_bridge), do: "Component to bridge to UART (i.e. from UDP)."
  def describe(:mav_comp_id_tunnel_node), do: "Component handling TUNNEL messages (e.g. vendor specific GUI of a component)."
  def describe(:mav_comp_id_system_control), do: "Component for handling system messages (e.g. to ARM, takeoff, etc.)."
  def describe(:mav_data_stream), do: "A data stream is not a fixed set of messages, but rather a recommendation to the autopilot software. Individual autopilots may or may not obey the recommended messages."
  def describe(:mav_data_stream_all), do: "Enable all data streams"
  def describe(:mav_data_stream_raw_sensors), do: "Enable IMU_RAW, GPS_RAW, GPS_STATUS packets."
  def describe(:mav_data_stream_extended_status), do: "Enable GPS_STATUS, CONTROL_STATUS, AUX_STATUS"
  def describe(:mav_data_stream_rc_channels), do: "Enable RC_CHANNELS_SCALED, RC_CHANNELS_RAW, SERVO_OUTPUT_RAW"
  def describe(:mav_data_stream_raw_controller), do: "Enable ATTITUDE_CONTROLLER_OUTPUT, POSITION_CONTROLLER_OUTPUT, NAV_CONTROLLER_OUTPUT."
  def describe(:mav_data_stream_position), do: "Enable LOCAL_POSITION, GLOBAL_POSITION/GLOBAL_POSITION_INT messages."
  def describe(:mav_data_stream_extra1), do: "Dependent on the autopilot"
  def describe(:mav_data_stream_extra2), do: "Dependent on the autopilot"
  def describe(:mav_data_stream_extra3), do: "Dependent on the autopilot"
  def describe(:mav_distance_sensor), do: "Enumeration of distance sensor types"
  def describe(:mav_distance_sensor_laser), do: "Laser rangefinder, e.g. LightWare SF02/F or PulsedLight units"
  def describe(:mav_distance_sensor_ultrasound), do: "Ultrasound rangefinder, e.g. MaxBotix units"
  def describe(:mav_distance_sensor_infrared), do: "Infrared rangefinder, e.g. Sharp units"
  def describe(:mav_distance_sensor_radar), do: "Radar type, e.g. uLanding units"
  def describe(:mav_distance_sensor_unknown), do: "Broken or unknown type, e.g. analog units"
  def describe(:mav_do_reposition_flags), do: "Bitmap of options for the MAV_CMD_DO_REPOSITION"
  def describe(:mav_do_reposition_flags_change_mode), do: "The aircraft should immediately transition into guided. This should not be set for follow me applications"
  def describe(:mav_estimator_type), do: "Enumeration of estimator types"
  def describe(:mav_estimator_type_unknown), do: "Unknown type of the estimator."
  def describe(:mav_estimator_type_naive), do: "This is a naive estimator without any real covariance feedback."
  def describe(:mav_estimator_type_vision), do: "Computer vision based estimate. Might be up to scale."
  def describe(:mav_estimator_type_vio), do: "Visual-inertial estimate."
  def describe(:mav_estimator_type_gps), do: "Plain GPS estimate."
  def describe(:mav_estimator_type_gps_ins), do: "Estimator integrating GPS and inertial sensing."
  def describe(:mav_estimator_type_mocap), do: "Estimate from external motion capturing system."
  def describe(:mav_estimator_type_lidar), do: "Estimator based on lidar sensor input."
  def describe(:mav_estimator_type_autopilot), do: "Estimator on autopilot."
  def describe(:mav_frame), do: ""
  def describe(:mav_frame_global), do: "Global (WGS84) coordinate frame + MSL altitude. First value / x: latitude, second value / y: longitude, third value / z: positive altitude over mean sea level (MSL)."
  def describe(:mav_frame_local_ned), do: "Local coordinate frame, Z-down (x: North, y: East, z: Down)."
  def describe(:mav_frame_mission), do: "NOT a coordinate frame, indicates a mission command."
  def describe(:mav_frame_global_relative_alt), do: "Global (WGS84) coordinate frame + altitude relative to the home position. First value / x: latitude, second value / y: longitude, third value / z: positive altitude with 0 being at the altitude of the home location."
  def describe(:mav_frame_local_enu), do: "Local coordinate frame, Z-up (x: East, y: North, z: Up)."
  def describe(:mav_frame_global_int), do: "Global (WGS84) coordinate frame (scaled) + MSL altitude. First value / x: latitude in degrees*1.0e-7, second value / y: longitude in degrees*1.0e-7, third value / z: positive altitude over mean sea level (MSL)."
  def describe(:mav_frame_global_relative_alt_int), do: "Global (WGS84) coordinate frame (scaled) + altitude relative to the home position. First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude with 0 being at the altitude of the home location."
  def describe(:mav_frame_local_offset_ned), do: "Offset to the current local frame. Anything expressed in this frame should be added to the current local frame position."
  def describe(:mav_frame_body_ned), do: "Setpoint in body NED frame. This makes sense if all position control is externalized - e.g. useful to command 2 m/s^2 acceleration to the right."
  def describe(:mav_frame_body_offset_ned), do: "Offset in body NED frame. This makes sense if adding setpoints to the current flight path, to avoid an obstacle - e.g. useful to command 2 m/s^2 acceleration to the east."
  def describe(:mav_frame_global_terrain_alt), do: "Global (WGS84) coordinate frame with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees, second value / y: longitude in degrees, third value / z: positive altitude in meters with 0 being at ground level in terrain model."
  def describe(:mav_frame_global_terrain_alt_int), do: "Global (WGS84) coordinate frame (scaled) with AGL altitude (at the waypoint coordinate). First value / x: latitude in degrees*10e-7, second value / y: longitude in degrees*10e-7, third value / z: positive altitude in meters with 0 being at ground level in terrain model."
  def describe(:mav_frame_body_frd), do: "Body fixed frame of reference, Z-down (x: Forward, y: Right, z: Down)."
  def describe(:mav_frame_reserved_13), do: "MAV_FRAME_BODY_FLU - Body fixed frame of reference, Z-up (x: Forward, y: Left, z: Up)."
  def describe(:mav_frame_reserved_14), do: "MAV_FRAME_MOCAP_NED - Odometry local coordinate frame of data given by a motion capture system, Z-down (x: North, y: East, z: Down)."
  def describe(:mav_frame_reserved_15), do: "MAV_FRAME_MOCAP_ENU - Odometry local coordinate frame of data given by a motion capture system, Z-up (x: East, y: North, z: Up)."
  def describe(:mav_frame_reserved_16), do: "MAV_FRAME_VISION_NED - Odometry local coordinate frame of data given by a vision estimation system, Z-down (x: North, y: East, z: Down)."
  def describe(:mav_frame_reserved_17), do: "MAV_FRAME_VISION_ENU - Odometry local coordinate frame of data given by a vision estimation system, Z-up (x: East, y: North, z: Up)."
  def describe(:mav_frame_reserved_18), do: "MAV_FRAME_ESTIM_NED - Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-down (x: North, y: East, z: Down)."
  def describe(:mav_frame_reserved_19), do: "MAV_FRAME_ESTIM_ENU - Odometry local coordinate frame of data given by an estimator running onboard the vehicle, Z-up (x: East, y: North, z: Up)."
  def describe(:mav_frame_local_frd), do: "Forward, Right, Down coordinate frame. This is a local frame with Z-down and arbitrary F/R alignment (i.e. not aligned with NED/earth frame)."
  def describe(:mav_frame_local_flu), do: "Forward, Left, Up coordinate frame. This is a local frame with Z-up and arbitrary F/L alignment (i.e. not aligned with ENU/earth frame)."
  def describe(:mav_generator_status_flag), do: "Flags to report status/failure cases for a power generator (used in GENERATOR_STATUS). Note that FAULTS are conditions that cause the generator to fail. Warnings are conditions that require attention before the next use (they indicate the system is not operating properly)."
  def describe(:mav_generator_status_flag_off), do: "Generator is off."
  def describe(:mav_generator_status_flag_ready), do: "Generator is ready to start generating power."
  def describe(:mav_generator_status_flag_generating), do: "Generator is generating power."
  def describe(:mav_generator_status_flag_charging), do: "Generator is charging the batteries (generating enough power to charge and provide the load)."
  def describe(:mav_generator_status_flag_reduced_power), do: "Generator is operating at a reduced maximum power."
  def describe(:mav_generator_status_flag_maxpower), do: "Generator is providing the maximum output."
  def describe(:mav_generator_status_flag_overtemp_warning), do: "Generator is near the maximum operating temperature, cooling is insufficient."
  def describe(:mav_generator_status_flag_overtemp_fault), do: "Generator hit the maximum operating temperature and shutdown."
  def describe(:mav_generator_status_flag_electronics_overtemp_warning), do: "Power electronics are near the maximum operating temperature, cooling is insufficient."
  def describe(:mav_generator_status_flag_electronics_overtemp_fault), do: "Power electronics hit the maximum operating temperature and shutdown."
  def describe(:mav_generator_status_flag_electronics_fault), do: "Power electronics experienced a fault and shutdown."
  def describe(:mav_generator_status_flag_powersource_fault), do: "The power source supplying the generator failed e.g. mechanical generator stopped, tether is no longer providing power, solar cell is in shade, hydrogen reaction no longer happening."
  def describe(:mav_generator_status_flag_communication_warning), do: "Generator controller having communication problems."
  def describe(:mav_generator_status_flag_cooling_warning), do: "Power electronic or generator cooling system error."
  def describe(:mav_generator_status_flag_power_rail_fault), do: "Generator controller power rail experienced a fault."
  def describe(:mav_generator_status_flag_overcurrent_fault), do: "Generator controller exceeded the overcurrent threshold and shutdown to prevent damage."
  def describe(:mav_generator_status_flag_battery_overcharge_current_fault), do: "Generator controller detected a high current going into the batteries and shutdown to prevent battery damage."
  def describe(:mav_generator_status_flag_overvoltage_fault), do: "Generator controller exceeded it's overvoltage threshold and shutdown to prevent it exceeding the voltage rating."
  def describe(:mav_generator_status_flag_battery_undervolt_fault), do: "Batteries are under voltage (generator will not start)."
  def describe(:mav_generator_status_flag_start_inhibited), do: "Generator start is inhibited by e.g. a safety switch."
  def describe(:mav_generator_status_flag_maintenance_required), do: "Generator requires maintenance."
  def describe(:mav_generator_status_flag_warming_up), do: "Generator is not ready to generate yet."
  def describe(:mav_generator_status_flag_idle), do: "Generator is idle."
  def describe(:mav_goto), do: "Actions that may be specified in MAV_CMD_OVERRIDE_GOTO to override mission execution."
  def describe(:mav_goto_do_hold), do: "Hold at the current position."
  def describe(:mav_goto_do_continue), do: "Continue with the next item in mission execution."
  def describe(:mav_goto_hold_at_current_position), do: "Hold at the current position of the system"
  def describe(:mav_goto_hold_at_specified_position), do: "Hold at the position specified in the parameters of the DO_HOLD action"
  def describe(:mav_landed_state), do: "Enumeration of landed detector states"
  def describe(:mav_landed_state_undefined), do: "MAV landed state is unknown"
  def describe(:mav_landed_state_on_ground), do: "MAV is landed (on ground)"
  def describe(:mav_landed_state_in_air), do: "MAV is in air"
  def describe(:mav_landed_state_takeoff), do: "MAV currently taking off"
  def describe(:mav_landed_state_landing), do: "MAV currently landing"
  def describe(:mav_mission_result), do: "Result of mission operation (in a MISSION_ACK message)."
  def describe(:mav_mission_accepted), do: "mission accepted OK"
  def describe(:mav_mission_error), do: "Generic error / not accepting mission commands at all right now."
  def describe(:mav_mission_unsupported_frame), do: "Coordinate frame is not supported."
  def describe(:mav_mission_unsupported), do: "Command is not supported."
  def describe(:mav_mission_no_space), do: "Mission items exceed storage space."
  def describe(:mav_mission_invalid), do: "One of the parameters has an invalid value."
  def describe(:mav_mission_invalid_param1), do: "param1 has an invalid value."
  def describe(:mav_mission_invalid_param2), do: "param2 has an invalid value."
  def describe(:mav_mission_invalid_param3), do: "param3 has an invalid value."
  def describe(:mav_mission_invalid_param4), do: "param4 has an invalid value."
  def describe(:mav_mission_invalid_param5_x), do: "x / param5 has an invalid value."
  def describe(:mav_mission_invalid_param6_y), do: "y / param6 has an invalid value."
  def describe(:mav_mission_invalid_param7), do: "z / param7 has an invalid value."
  def describe(:mav_mission_invalid_sequence), do: "Mission item received out of sequence"
  def describe(:mav_mission_denied), do: "Not accepting any mission commands from this communication partner."
  def describe(:mav_mission_operation_cancelled), do: "Current mission operation cancelled (e.g. mission upload, mission download)."
  def describe(:mav_mission_type), do: "Type of mission items being requested/sent in mission protocol."
  def describe(:mav_mission_type_mission), do: "Items are mission commands for main mission."
  def describe(:mav_mission_type_fence), do: "Specifies GeoFence area(s). Items are MAV_CMD_NAV_FENCE_ GeoFence items."
  def describe(:mav_mission_type_rally), do: "Specifies the rally points for the vehicle. Rally points are alternative RTL points. Items are MAV_CMD_NAV_RALLY_POINT rally point items."
  def describe(:mav_mission_type_all), do: "Only used in MISSION_CLEAR_ALL to clear all mission types."
  def describe(:mav_mode), do: "These defines are predefined OR-combined mode flags. There is no need to use values from this enum, but it simplifies the use of the mode flags. Note that manual input is enabled in all modes as a safety override."
  def describe(:mav_mode_preflight), do: "System is not ready to fly, booting, calibrating, etc. No flag is set."
  def describe(:mav_mode_stabilize_disarmed), do: "System is allowed to be active, under assisted RC control."
  def describe(:mav_mode_stabilize_armed), do: "System is allowed to be active, under assisted RC control."
  def describe(:mav_mode_manual_disarmed), do: "System is allowed to be active, under manual (RC) control, no stabilization"
  def describe(:mav_mode_manual_armed), do: "System is allowed to be active, under manual (RC) control, no stabilization"
  def describe(:mav_mode_guided_disarmed), do: "System is allowed to be active, under autonomous control, manual setpoint"
  def describe(:mav_mode_guided_armed), do: "System is allowed to be active, under autonomous control, manual setpoint"
  def describe(:mav_mode_auto_disarmed), do: "System is allowed to be active, under autonomous control and navigation (the trajectory is decided onboard and not pre-programmed by waypoints)"
  def describe(:mav_mode_auto_armed), do: "System is allowed to be active, under autonomous control and navigation (the trajectory is decided onboard and not pre-programmed by waypoints)"
  def describe(:mav_mode_test_disarmed), do: "UNDEFINED mode. This solely depends on the autopilot - use with caution, intended for developers only."
  def describe(:mav_mode_test_armed), do: "UNDEFINED mode. This solely depends on the autopilot - use with caution, intended for developers only."
  def describe(:mav_mode_flag), do: "These flags encode the MAV mode."
  def describe(:mav_mode_flag_safety_armed), do: "0b10000000 MAV safety set to armed. Motors are enabled / running / can start. Ready to fly. Additional note: this flag is to be ignore when sent in the command MAV_CMD_DO_SET_MODE and MAV_CMD_COMPONENT_ARM_DISARM shall be used instead. The flag can still be used to report the armed state."
  def describe(:mav_mode_flag_manual_input_enabled), do: "0b01000000 remote control input is enabled."
  def describe(:mav_mode_flag_hil_enabled), do: "0b00100000 hardware in the loop simulation. All motors / actuators are blocked, but internal software is full operational."
  def describe(:mav_mode_flag_stabilize_enabled), do: "0b00010000 system stabilizes electronically its attitude (and optionally position). It needs however further control inputs to move around."
  def describe(:mav_mode_flag_guided_enabled), do: "0b00001000 guided mode enabled, system flies waypoints / mission items."
  def describe(:mav_mode_flag_auto_enabled), do: "0b00000100 autonomous mode enabled, system finds its own goal positions. Guided flag can be set or not, depends on the actual implementation."
  def describe(:mav_mode_flag_test_enabled), do: "0b00000010 system has a test mode enabled. This flag is intended for temporary system tests and should not be used for stable implementations."
  def describe(:mav_mode_flag_custom_mode_enabled), do: "0b00000001 Reserved for future use."
  def describe(:mav_mode_flag_decode_position), do: "These values encode the bit positions of the decode position. These values can be used to read the value of a flag bit by combining the base_mode variable with AND with the flag position value. The result will be either 0 or 1, depending on if the flag is set or not."
  def describe(:mav_mode_flag_decode_position_safety), do: "First bit: 10000000"
  def describe(:mav_mode_flag_decode_position_manual), do: "Second bit: 01000000"
  def describe(:mav_mode_flag_decode_position_hil), do: "Third bit: 00100000"
  def describe(:mav_mode_flag_decode_position_stabilize), do: "Fourth bit: 00010000"
  def describe(:mav_mode_flag_decode_position_guided), do: "Fifth bit: 00001000"
  def describe(:mav_mode_flag_decode_position_auto), do: "Sixth bit: 00000100"
  def describe(:mav_mode_flag_decode_position_test), do: "Seventh bit: 00000010"
  def describe(:mav_mode_flag_decode_position_custom_mode), do: "Eighth bit: 00000001"
  def describe(:mav_mode_gimbal), do: ""
  def describe(:mav_mode_gimbal_uninitialized), do: "Gimbal is powered on but has not started initializing yet."
  def describe(:mav_mode_gimbal_calibrating_pitch), do: "Gimbal is currently running calibration on the pitch axis."
  def describe(:mav_mode_gimbal_calibrating_roll), do: "Gimbal is currently running calibration on the roll axis."
  def describe(:mav_mode_gimbal_calibrating_yaw), do: "Gimbal is currently running calibration on the yaw axis."
  def describe(:mav_mode_gimbal_initialized), do: "Gimbal has finished calibrating and initializing, but is relaxed pending reception of first rate command from copter."
  def describe(:mav_mode_gimbal_active), do: "Gimbal is actively stabilizing."
  def describe(:mav_mode_gimbal_rate_cmd_timeout), do: "Gimbal is relaxed because it missed more than 10 expected rate command messages in a row. Gimbal will move back to active mode when it receives a new rate command."
  def describe(:mav_mount_mode), do: "Enumeration of possible mount operation modes"
  def describe(:mav_mount_mode_retract), do: "Load and keep safe position (Roll,Pitch,Yaw) from permant memory and stop stabilization"
  def describe(:mav_mount_mode_neutral), do: "Load and keep neutral position (Roll,Pitch,Yaw) from permanent memory."
  def describe(:mav_mount_mode_mavlink_targeting), do: "Load neutral position and start MAVLink Roll,Pitch,Yaw control with stabilization"
  def describe(:mav_mount_mode_rc_targeting), do: "Load neutral position and start RC Roll,Pitch,Yaw control with stabilization"
  def describe(:mav_mount_mode_gps_point), do: "Load neutral position and start to point to Lat,Lon,Alt"
  def describe(:mav_mount_mode_sysid_target), do: "Gimbal tracks system with specified system ID"
  def describe(:mav_mount_mode_home_location), do: "Gimbal tracks home location"
  def describe(:mav_param_type), do: "Specifies the datatype of a MAVLink parameter."
  def describe(:mav_param_type_uint8), do: "8-bit unsigned integer"
  def describe(:mav_param_type_int8), do: "8-bit signed integer"
  def describe(:mav_param_type_uint16), do: "16-bit unsigned integer"
  def describe(:mav_param_type_int16), do: "16-bit signed integer"
  def describe(:mav_param_type_uint32), do: "32-bit unsigned integer"
  def describe(:mav_param_type_int32), do: "32-bit signed integer"
  def describe(:mav_param_type_uint64), do: "64-bit unsigned integer"
  def describe(:mav_param_type_int64), do: "64-bit signed integer"
  def describe(:mav_param_type_real32), do: "32-bit floating-point"
  def describe(:mav_param_type_real64), do: "64-bit floating-point"
  def describe(:mav_power_status), do: "Power supply status flags (bitmask)"
  def describe(:mav_power_status_brick_valid), do: "main brick power supply valid"
  def describe(:mav_power_status_servo_valid), do: "main servo power supply valid for FMU"
  def describe(:mav_power_status_usb_connected), do: "USB power is connected"
  def describe(:mav_power_status_periph_overcurrent), do: "peripheral supply is in over-current state"
  def describe(:mav_power_status_periph_hipower_overcurrent), do: "hi-power peripheral supply is in over-current state"
  def describe(:mav_power_status_changed), do: "Power status has changed since boot"
  def describe(:mav_protocol_capability), do: "Bitmask of (optional) autopilot capabilities (64 bit). If a bit is set, the autopilot supports this capability."
  def describe(:mav_protocol_capability_mission_float), do: "Autopilot supports MISSION float message type."
  def describe(:mav_protocol_capability_param_float), do: "Autopilot supports the new param float message type."
  def describe(:mav_protocol_capability_mission_int), do: "Autopilot supports MISSION_ITEM_INT scaled integer message type."
  def describe(:mav_protocol_capability_command_int), do: "Autopilot supports COMMAND_INT scaled integer message type."
  def describe(:mav_protocol_capability_param_union), do: "Autopilot supports the new param union message type."
  def describe(:mav_protocol_capability_ftp), do: "Autopilot supports the new FILE_TRANSFER_PROTOCOL message type."
  def describe(:mav_protocol_capability_set_attitude_target), do: "Autopilot supports commanding attitude offboard."
  def describe(:mav_protocol_capability_set_position_target_local_ned), do: "Autopilot supports commanding position and velocity targets in local NED frame."
  def describe(:mav_protocol_capability_set_position_target_global_int), do: "Autopilot supports commanding position and velocity targets in global scaled integers."
  def describe(:mav_protocol_capability_terrain), do: "Autopilot supports terrain protocol / data handling."
  def describe(:mav_protocol_capability_set_actuator_target), do: "Autopilot supports direct actuator control."
  def describe(:mav_protocol_capability_flight_termination), do: "Autopilot supports the flight termination command."
  def describe(:mav_protocol_capability_compass_calibration), do: "Autopilot supports onboard compass calibration."
  def describe(:mav_protocol_capability_mavlink2), do: "Autopilot supports MAVLink version 2."
  def describe(:mav_protocol_capability_mission_fence), do: "Autopilot supports mission fence protocol."
  def describe(:mav_protocol_capability_mission_rally), do: "Autopilot supports mission rally point protocol."
  def describe(:mav_protocol_capability_flight_information), do: "Autopilot supports the flight information protocol."
  def describe(:mav_remote_log_data_block_commands), do: "Special ACK block numbers control activation of dataflash log streaming."
  def describe(:mav_remote_log_data_block_stop), do: "UAV to stop sending DataFlash blocks."
  def describe(:mav_remote_log_data_block_start), do: "UAV to start sending DataFlash blocks."
  def describe(:mav_remote_log_data_block_statuses), do: "Possible remote log data block statuses."
  def describe(:mav_remote_log_data_block_nack), do: "This block has NOT been received."
  def describe(:mav_remote_log_data_block_ack), do: "This block has been received."
  def describe(:mav_result), do: "Result from a MAVLink command (MAV_CMD)"
  def describe(:mav_result_accepted), do: "Command is valid (is supported and has valid parameters), and was executed."
  def describe(:mav_result_temporarily_rejected), do: "Command is valid, but cannot be executed at this time. This is used to indicate a problem that should be fixed just by waiting (e.g. a state machine is busy, can't arm because have not got GPS lock, etc.). Retrying later should work."
  def describe(:mav_result_denied), do: "Command is invalid (is supported but has invalid parameters). Retrying same command and parameters will not work."
  def describe(:mav_result_unsupported), do: "Command is not supported (unknown)."
  def describe(:mav_result_failed), do: "Command is valid, but execution has failed. This is used to indicate any non-temporary or unexpected problem, i.e. any problem that must be fixed before the command can succeed/be retried. For example, attempting to write a file when out of memory, attempting to arm when sensors are not calibrated, etc."
  def describe(:mav_result_in_progress), do: "Command is valid and is being executed. This will be followed by further progress updates, i.e. the component may send further COMMAND_ACK messages with result MAV_RESULT_IN_PROGRESS (at a rate decided by the implementation), and must terminate by sending a COMMAND_ACK message with final result of the operation. The COMMAND_ACK.progress field can be used to indicate the progress of the operation. There is no need for the sender to retry the command, but if done during execution, the component will return MAV_RESULT_IN_PROGRESS with an updated progress."
  def describe(:mav_roi), do: "The ROI (region of interest) for the vehicle. This can be be used by the vehicle for camera/vehicle attitude alignment (see MAV_CMD_NAV_ROI)."
  def describe(:mav_roi_none), do: "No region of interest."
  def describe(:mav_roi_wpnext), do: "Point toward next waypoint, with optional pitch/roll/yaw offset."
  def describe(:mav_roi_wpindex), do: "Point toward given waypoint."
  def describe(:mav_roi_location), do: "Point toward fixed location."
  def describe(:mav_roi_target), do: "Point toward of given id."
  def describe(:mav_sensor_orientation), do: "Enumeration of sensor orientation, according to its rotations"
  def describe(:mav_sensor_rotation_none), do: "Roll: 0, Pitch: 0, Yaw: 0"
  def describe(:mav_sensor_rotation_yaw_45), do: "Roll: 0, Pitch: 0, Yaw: 45"
  def describe(:mav_sensor_rotation_yaw_90), do: "Roll: 0, Pitch: 0, Yaw: 90"
  def describe(:mav_sensor_rotation_yaw_135), do: "Roll: 0, Pitch: 0, Yaw: 135"
  def describe(:mav_sensor_rotation_yaw_180), do: "Roll: 0, Pitch: 0, Yaw: 180"
  def describe(:mav_sensor_rotation_yaw_225), do: "Roll: 0, Pitch: 0, Yaw: 225"
  def describe(:mav_sensor_rotation_yaw_270), do: "Roll: 0, Pitch: 0, Yaw: 270"
  def describe(:mav_sensor_rotation_yaw_315), do: "Roll: 0, Pitch: 0, Yaw: 315"
  def describe(:mav_sensor_rotation_roll_180), do: "Roll: 180, Pitch: 0, Yaw: 0"
  def describe(:mav_sensor_rotation_roll_180_yaw_45), do: "Roll: 180, Pitch: 0, Yaw: 45"
  def describe(:mav_sensor_rotation_roll_180_yaw_90), do: "Roll: 180, Pitch: 0, Yaw: 90"
  def describe(:mav_sensor_rotation_roll_180_yaw_135), do: "Roll: 180, Pitch: 0, Yaw: 135"
  def describe(:mav_sensor_rotation_pitch_180), do: "Roll: 0, Pitch: 180, Yaw: 0"
  def describe(:mav_sensor_rotation_roll_180_yaw_225), do: "Roll: 180, Pitch: 0, Yaw: 225"
  def describe(:mav_sensor_rotation_roll_180_yaw_270), do: "Roll: 180, Pitch: 0, Yaw: 270"
  def describe(:mav_sensor_rotation_roll_180_yaw_315), do: "Roll: 180, Pitch: 0, Yaw: 315"
  def describe(:mav_sensor_rotation_roll_90), do: "Roll: 90, Pitch: 0, Yaw: 0"
  def describe(:mav_sensor_rotation_roll_90_yaw_45), do: "Roll: 90, Pitch: 0, Yaw: 45"
  def describe(:mav_sensor_rotation_roll_90_yaw_90), do: "Roll: 90, Pitch: 0, Yaw: 90"
  def describe(:mav_sensor_rotation_roll_90_yaw_135), do: "Roll: 90, Pitch: 0, Yaw: 135"
  def describe(:mav_sensor_rotation_roll_270), do: "Roll: 270, Pitch: 0, Yaw: 0"
  def describe(:mav_sensor_rotation_roll_270_yaw_45), do: "Roll: 270, Pitch: 0, Yaw: 45"
  def describe(:mav_sensor_rotation_roll_270_yaw_90), do: "Roll: 270, Pitch: 0, Yaw: 90"
  def describe(:mav_sensor_rotation_roll_270_yaw_135), do: "Roll: 270, Pitch: 0, Yaw: 135"
  def describe(:mav_sensor_rotation_pitch_90), do: "Roll: 0, Pitch: 90, Yaw: 0"
  def describe(:mav_sensor_rotation_pitch_270), do: "Roll: 0, Pitch: 270, Yaw: 0"
  def describe(:mav_sensor_rotation_pitch_180_yaw_90), do: "Roll: 0, Pitch: 180, Yaw: 90"
  def describe(:mav_sensor_rotation_pitch_180_yaw_270), do: "Roll: 0, Pitch: 180, Yaw: 270"
  def describe(:mav_sensor_rotation_roll_90_pitch_90), do: "Roll: 90, Pitch: 90, Yaw: 0"
  def describe(:mav_sensor_rotation_roll_180_pitch_90), do: "Roll: 180, Pitch: 90, Yaw: 0"
  def describe(:mav_sensor_rotation_roll_270_pitch_90), do: "Roll: 270, Pitch: 90, Yaw: 0"
  def describe(:mav_sensor_rotation_roll_90_pitch_180), do: "Roll: 90, Pitch: 180, Yaw: 0"
  def describe(:mav_sensor_rotation_roll_270_pitch_180), do: "Roll: 270, Pitch: 180, Yaw: 0"
  def describe(:mav_sensor_rotation_roll_90_pitch_270), do: "Roll: 90, Pitch: 270, Yaw: 0"
  def describe(:mav_sensor_rotation_roll_180_pitch_270), do: "Roll: 180, Pitch: 270, Yaw: 0"
  def describe(:mav_sensor_rotation_roll_270_pitch_270), do: "Roll: 270, Pitch: 270, Yaw: 0"
  def describe(:mav_sensor_rotation_roll_90_pitch_180_yaw_90), do: "Roll: 90, Pitch: 180, Yaw: 90"
  def describe(:mav_sensor_rotation_roll_90_yaw_270), do: "Roll: 90, Pitch: 0, Yaw: 270"
  def describe(:mav_sensor_rotation_roll_90_pitch_68_yaw_293), do: "Roll: 90, Pitch: 68, Yaw: 293"
  def describe(:mav_sensor_rotation_pitch_315), do: "Pitch: 315"
  def describe(:mav_sensor_rotation_roll_90_pitch_315), do: "Roll: 90, Pitch: 315"
  def describe(:mav_sensor_rotation_custom), do: "Custom orientation"
  def describe(:mav_severity), do: "Indicates the severity level, generally used for status messages to indicate their relative urgency. Based on RFC-5424 using expanded definitions at: http://www.kiwisyslog.com/kb/info:-syslog-message-levels/."
  def describe(:mav_severity_emergency), do: "System is unusable. This is a \"panic\" condition."
  def describe(:mav_severity_alert), do: "Action should be taken immediately. Indicates error in non-critical systems."
  def describe(:mav_severity_critical), do: "Action must be taken immediately. Indicates failure in a primary system."
  def describe(:mav_severity_error), do: "Indicates an error in secondary/redundant systems."
  def describe(:mav_severity_warning), do: "Indicates about a possible future error if this is not resolved within a given timeframe. Example would be a low battery warning."
  def describe(:mav_severity_notice), do: "An unusual event has occurred, though not an error condition. This should be investigated for the root cause."
  def describe(:mav_severity_info), do: "Normal operational messages. Useful for logging. No action is required for these messages."
  def describe(:mav_severity_debug), do: "Useful non-operational messages that can assist in debugging. These should not occur during normal operation."
  def describe(:mav_state), do: ""
  def describe(:mav_state_uninit), do: "Uninitialized system, state is unknown."
  def describe(:mav_state_boot), do: "System is booting up."
  def describe(:mav_state_calibrating), do: "System is calibrating and not flight-ready."
  def describe(:mav_state_standby), do: "System is grounded and on standby. It can be launched any time."
  def describe(:mav_state_active), do: "System is active and might be already airborne. Motors are engaged."
  def describe(:mav_state_critical), do: "System is in a non-normal flight mode. It can however still navigate."
  def describe(:mav_state_emergency), do: "System is in a non-normal flight mode. It lost control over parts or over the whole airframe. It is in mayday and going down."
  def describe(:mav_state_poweroff), do: "System just initialized its power-down sequence, will shut down now."
  def describe(:mav_state_flight_termination), do: "System is terminating itself."
  def describe(:mav_sys_status_sensor), do: "These encode the sensors whose status is sent as part of the SYS_STATUS message."
  def describe(:mav_sys_status_sensor_3d_gyro), do: "0x01 3D gyro"
  def describe(:mav_sys_status_sensor_3d_accel), do: "0x02 3D accelerometer"
  def describe(:mav_sys_status_sensor_3d_mag), do: "0x04 3D magnetometer"
  def describe(:mav_sys_status_sensor_absolute_pressure), do: "0x08 absolute pressure"
  def describe(:mav_sys_status_sensor_differential_pressure), do: "0x10 differential pressure"
  def describe(:mav_sys_status_sensor_gps), do: "0x20 GPS"
  def describe(:mav_sys_status_sensor_optical_flow), do: "0x40 optical flow"
  def describe(:mav_sys_status_sensor_vision_position), do: "0x80 computer vision position"
  def describe(:mav_sys_status_sensor_laser_position), do: "0x100 laser based position"
  def describe(:mav_sys_status_sensor_external_ground_truth), do: "0x200 external ground truth (Vicon or Leica)"
  def describe(:mav_sys_status_sensor_angular_rate_control), do: "0x400 3D angular rate control"
  def describe(:mav_sys_status_sensor_attitude_stabilization), do: "0x800 attitude stabilization"
  def describe(:mav_sys_status_sensor_yaw_position), do: "0x1000 yaw position"
  def describe(:mav_sys_status_sensor_z_altitude_control), do: "0x2000 z/altitude control"
  def describe(:mav_sys_status_sensor_xy_position_control), do: "0x4000 x/y position control"
  def describe(:mav_sys_status_sensor_motor_outputs), do: "0x8000 motor outputs / control"
  def describe(:mav_sys_status_sensor_rc_receiver), do: "0x10000 rc receiver"
  def describe(:mav_sys_status_sensor_3d_gyro2), do: "0x20000 2nd 3D gyro"
  def describe(:mav_sys_status_sensor_3d_accel2), do: "0x40000 2nd 3D accelerometer"
  def describe(:mav_sys_status_sensor_3d_mag2), do: "0x80000 2nd 3D magnetometer"
  def describe(:mav_sys_status_geofence), do: "0x100000 geofence"
  def describe(:mav_sys_status_ahrs), do: "0x200000 AHRS subsystem health"
  def describe(:mav_sys_status_terrain), do: "0x400000 Terrain subsystem health"
  def describe(:mav_sys_status_reverse_motor), do: "0x800000 Motors are reversed"
  def describe(:mav_sys_status_logging), do: "0x1000000 Logging"
  def describe(:mav_sys_status_sensor_battery), do: "0x2000000 Battery"
  def describe(:mav_sys_status_sensor_proximity), do: "0x4000000 Proximity"
  def describe(:mav_sys_status_sensor_satcom), do: "0x8000000 Satellite Communication"
  def describe(:mav_sys_status_prearm_check), do: "0x10000000 pre-arm check status. Always healthy when armed"
  def describe(:mav_sys_status_obstacle_avoidance), do: "0x20000000 Avoidance/collision prevention"
  def describe(:mav_sys_status_sensor_propulsion), do: "0x40000000 propulsion (actuator, esc, motor or propellor)"
  def describe(:mav_type), do: "MAVLINK component type reported in HEARTBEAT message. Flight controllers must report the type of the vehicle on which they are mounted (e.g. MAV_TYPE_OCTOROTOR). All other components must report a value appropriate for their type (e.g. a camera must use MAV_TYPE_CAMERA)."
  def describe(:mav_type_generic), do: "Generic micro air vehicle"
  def describe(:mav_type_fixed_wing), do: "Fixed wing aircraft."
  def describe(:mav_type_quadrotor), do: "Quadrotor"
  def describe(:mav_type_coaxial), do: "Coaxial helicopter"
  def describe(:mav_type_helicopter), do: "Normal helicopter with tail rotor."
  def describe(:mav_type_antenna_tracker), do: "Ground installation"
  def describe(:mav_type_gcs), do: "Operator control unit / ground control station"
  def describe(:mav_type_airship), do: "Airship, controlled"
  def describe(:mav_type_free_balloon), do: "Free balloon, uncontrolled"
  def describe(:mav_type_rocket), do: "Rocket"
  def describe(:mav_type_ground_rover), do: "Ground rover"
  def describe(:mav_type_surface_boat), do: "Surface vessel, boat, ship"
  def describe(:mav_type_submarine), do: "Submarine"
  def describe(:mav_type_hexarotor), do: "Hexarotor"
  def describe(:mav_type_octorotor), do: "Octorotor"
  def describe(:mav_type_tricopter), do: "Tricopter"
  def describe(:mav_type_flapping_wing), do: "Flapping wing"
  def describe(:mav_type_kite), do: "Kite"
  def describe(:mav_type_onboard_controller), do: "Onboard companion controller"
  def describe(:mav_type_vtol_duorotor), do: "Two-rotor VTOL using control surfaces in vertical operation in addition. Tailsitter."
  def describe(:mav_type_vtol_quadrotor), do: "Quad-rotor VTOL using a V-shaped quad config in vertical operation. Tailsitter."
  def describe(:mav_type_vtol_tiltrotor), do: "Tiltrotor VTOL"
  def describe(:mav_type_vtol_reserved2), do: "VTOL reserved 2"
  def describe(:mav_type_vtol_reserved3), do: "VTOL reserved 3"
  def describe(:mav_type_vtol_reserved4), do: "VTOL reserved 4"
  def describe(:mav_type_vtol_reserved5), do: "VTOL reserved 5"
  def describe(:mav_type_gimbal), do: "Gimbal"
  def describe(:mav_type_adsb), do: "ADSB system"
  def describe(:mav_type_parafoil), do: "Steerable, nonrigid airfoil"
  def describe(:mav_type_dodecarotor), do: "Dodecarotor"
  def describe(:mav_type_camera), do: "Camera"
  def describe(:mav_type_charging_station), do: "Charging station"
  def describe(:mav_type_flarm), do: "FLARM collision avoidance system"
  def describe(:mav_type_servo), do: "Servo"
  def describe(:mav_type_odid), do: "Open Drone ID. See https://mavlink.io/en/services/opendroneid.html."
  def describe(:mav_type_decarotor), do: "Decarotor"
  def describe(:mav_vtol_state), do: "Enumeration of VTOL states"
  def describe(:mav_vtol_state_undefined), do: "MAV is not configured as VTOL"
  def describe(:mav_vtol_state_transition_to_fw), do: "VTOL is in transition from multicopter to fixed-wing"
  def describe(:mav_vtol_state_transition_to_mc), do: "VTOL is in transition from fixed-wing to multicopter"
  def describe(:mav_vtol_state_mc), do: "VTOL is in multicopter state"
  def describe(:mav_vtol_state_fw), do: "VTOL is in fixed-wing state"
  def describe(:mav_winch_status_flag), do: "Winch status flags used in WINCH_STATUS"
  def describe(:mav_winch_status_healthy), do: "Winch is healthy"
  def describe(:mav_winch_status_fully_retracted), do: "Winch thread is fully retracted"
  def describe(:mav_winch_status_moving), do: "Winch motor is moving"
  def describe(:mav_winch_status_clutch_engaged), do: "Winch clutch is engaged allowing motor to move freely"
  def describe(:mavlink_data_stream_type), do: ""
  def describe(:mavlink_data_stream_img_jpeg), do: ""
  def describe(:mavlink_data_stream_img_bmp), do: ""
  def describe(:mavlink_data_stream_img_raw8u), do: ""
  def describe(:mavlink_data_stream_img_raw32u), do: ""
  def describe(:mavlink_data_stream_img_pgm), do: ""
  def describe(:mavlink_data_stream_img_png), do: ""
  def describe(:motor_test_order), do: ""
  def describe(:motor_test_order_default), do: "default autopilot motor test method"
  def describe(:motor_test_order_sequence), do: "motor numbers are specified as their index in a predefined vehicle-specific sequence"
  def describe(:motor_test_order_board), do: "motor numbers are specified as the output as labeled on the board"
  def describe(:motor_test_throttle_type), do: ""
  def describe(:motor_test_throttle_percent), do: "throttle as a percentage from 0 ~ 100"
  def describe(:motor_test_throttle_pwm), do: "throttle as an absolute PWM value (normally in range of 1000~2000)"
  def describe(:motor_test_throttle_pilot), do: "throttle pass-through from pilot's transmitter"
  def describe(:motor_test_compass_cal), do: "per-motor compass calibration test"
  def describe(:osd_param_config_error), do: "The error type for the OSD parameter editor."
  def describe(:osd_param_success), do: ""
  def describe(:osd_param_invalid_screen), do: ""
  def describe(:osd_param_invalid_parameter_index), do: ""
  def describe(:osd_param_invalid_parameter), do: ""
  def describe(:osd_param_config_type), do: "The type of parameter for the OSD parameter editor."
  def describe(:osd_param_none), do: ""
  def describe(:osd_param_serial_protocol), do: ""
  def describe(:osd_param_servo_function), do: ""
  def describe(:osd_param_aux_function), do: ""
  def describe(:osd_param_flight_mode), do: ""
  def describe(:osd_param_failsafe_action), do: ""
  def describe(:osd_param_failsafe_action_1), do: ""
  def describe(:osd_param_failsafe_action_2), do: ""
  def describe(:osd_param_num_types), do: ""
  def describe(:parachute_action), do: "Parachute actions. Trigger release and enable/disable auto-release."
  def describe(:parachute_disable), do: "Disable auto-release of parachute (i.e. release triggered by crash detectors)."
  def describe(:parachute_enable), do: "Enable auto-release of parachute."
  def describe(:parachute_release), do: "Release parachute and kill motors."
  def describe(:pid_tuning_axis), do: ""
  def describe(:pid_tuning_roll), do: ""
  def describe(:pid_tuning_pitch), do: ""
  def describe(:pid_tuning_yaw), do: ""
  def describe(:pid_tuning_accz), do: ""
  def describe(:pid_tuning_steer), do: ""
  def describe(:pid_tuning_landing), do: ""
  def describe(:plane_mode), do: "A mapping of plane flight modes for custom_mode field of heartbeat."
  def describe(:plane_mode_manual), do: ""
  def describe(:plane_mode_circle), do: ""
  def describe(:plane_mode_stabilize), do: ""
  def describe(:plane_mode_training), do: ""
  def describe(:plane_mode_acro), do: ""
  def describe(:plane_mode_fly_by_wire_a), do: ""
  def describe(:plane_mode_fly_by_wire_b), do: ""
  def describe(:plane_mode_cruise), do: ""
  def describe(:plane_mode_autotune), do: ""
  def describe(:plane_mode_auto), do: ""
  def describe(:plane_mode_rtl), do: ""
  def describe(:plane_mode_loiter), do: ""
  def describe(:plane_mode_takeoff), do: ""
  def describe(:plane_mode_avoid_adsb), do: ""
  def describe(:plane_mode_guided), do: ""
  def describe(:plane_mode_initializing), do: ""
  def describe(:plane_mode_qstabilize), do: ""
  def describe(:plane_mode_qhover), do: ""
  def describe(:plane_mode_qloiter), do: ""
  def describe(:plane_mode_qland), do: ""
  def describe(:plane_mode_qrtl), do: ""
  def describe(:plane_mode_qautotune), do: ""
  def describe(:plane_mode_qacro), do: ""
  def describe(:plane_mode_thermal), do: ""
  def describe(:position_target_typemask), do: "Bitmap to indicate which dimensions should be ignored by the vehicle: a value of 0b0000000000000000 or 0b0000001000000000 indicates that none of the setpoint dimensions should be ignored. If bit 9 is set the floats afx afy afz should be interpreted as force instead of acceleration."
  def describe(:position_target_typemask_x_ignore), do: "Ignore position x"
  def describe(:position_target_typemask_y_ignore), do: "Ignore position y"
  def describe(:position_target_typemask_z_ignore), do: "Ignore position z"
  def describe(:position_target_typemask_vx_ignore), do: "Ignore velocity x"
  def describe(:position_target_typemask_vy_ignore), do: "Ignore velocity y"
  def describe(:position_target_typemask_vz_ignore), do: "Ignore velocity z"
  def describe(:position_target_typemask_ax_ignore), do: "Ignore acceleration x"
  def describe(:position_target_typemask_ay_ignore), do: "Ignore acceleration y"
  def describe(:position_target_typemask_az_ignore), do: "Ignore acceleration z"
  def describe(:position_target_typemask_force_set), do: "Use force instead of acceleration"
  def describe(:position_target_typemask_yaw_ignore), do: "Ignore yaw"
  def describe(:position_target_typemask_yaw_rate_ignore), do: "Ignore yaw rate"
  def describe(:precision_land_mode), do: "Precision land modes (used in MAV_CMD_NAV_LAND)."
  def describe(:precision_land_mode_disabled), do: "Normal (non-precision) landing."
  def describe(:precision_land_mode_opportunistic), do: "Use precision landing if beacon detected when land command accepted, otherwise land normally."
  def describe(:precision_land_mode_required), do: "Use precision landing, searching for beacon if not found when land command accepted (land normally if beacon cannot be found)."
  def describe(:rally_flags), do: "Flags in RALLY_POINT message."
  def describe(:favorable_wind), do: "Flag set when requiring favorable winds for landing."
  def describe(:land_immediately), do: "Flag set when plane is to immediately descend to break altitude and land without GCS intervention. Flag not set when plane is to loiter at Rally point until commanded to land."
  def describe(:rc_type), do: "RC type"
  def describe(:rc_type_spektrum_dsm2), do: "Spektrum DSM2"
  def describe(:rc_type_spektrum_dsmx), do: "Spektrum DSMX"
  def describe(:rover_mode), do: "A mapping of rover flight modes for custom_mode field of heartbeat."
  def describe(:rover_mode_manual), do: ""
  def describe(:rover_mode_acro), do: ""
  def describe(:rover_mode_steering), do: ""
  def describe(:rover_mode_hold), do: ""
  def describe(:rover_mode_loiter), do: ""
  def describe(:rover_mode_follow), do: ""
  def describe(:rover_mode_simple), do: ""
  def describe(:rover_mode_auto), do: ""
  def describe(:rover_mode_rtl), do: ""
  def describe(:rover_mode_smart_rtl), do: ""
  def describe(:rover_mode_guided), do: ""
  def describe(:rover_mode_initializing), do: ""
  def describe(:rtk_baseline_coordinate_system), do: "RTK GPS baseline coordinate system, used for RTK corrections"
  def describe(:rtk_baseline_coordinate_system_ecef), do: "Earth-centered, Earth-fixed"
  def describe(:rtk_baseline_coordinate_system_ned), do: "RTK basestation centered, north, east, down"
  def describe(:scripting_cmd), do: ""
  def describe(:scripting_cmd_repl_start), do: "Start a REPL session."
  def describe(:scripting_cmd_repl_stop), do: "End a REPL session."
  def describe(:serial_control_dev), do: "SERIAL_CONTROL device types"
  def describe(:serial_control_dev_telem1), do: "First telemetry port"
  def describe(:serial_control_dev_telem2), do: "Second telemetry port"
  def describe(:serial_control_dev_gps1), do: "First GPS port"
  def describe(:serial_control_dev_gps2), do: "Second GPS port"
  def describe(:serial_control_dev_shell), do: "system shell"
  def describe(:serial_control_serial0), do: "SERIAL0"
  def describe(:serial_control_serial1), do: "SERIAL1"
  def describe(:serial_control_serial2), do: "SERIAL2"
  def describe(:serial_control_serial3), do: "SERIAL3"
  def describe(:serial_control_serial4), do: "SERIAL4"
  def describe(:serial_control_serial5), do: "SERIAL5"
  def describe(:serial_control_serial6), do: "SERIAL6"
  def describe(:serial_control_serial7), do: "SERIAL7"
  def describe(:serial_control_serial8), do: "SERIAL8"
  def describe(:serial_control_serial9), do: "SERIAL9"
  def describe(:serial_control_flag), do: "SERIAL_CONTROL flags (bitmask)"
  def describe(:serial_control_flag_reply), do: "Set if this is a reply"
  def describe(:serial_control_flag_respond), do: "Set if the sender wants the receiver to send a response as another SERIAL_CONTROL message"
  def describe(:serial_control_flag_exclusive), do: "Set if access to the serial port should be removed from whatever driver is currently using it, giving exclusive access to the SERIAL_CONTROL protocol. The port can be handed back by sending a request without this flag set"
  def describe(:serial_control_flag_blocking), do: "Block on writes to the serial port"
  def describe(:serial_control_flag_multi), do: "Send multiple replies until port is drained"
  def describe(:speed_type), do: ""
  def describe(:speed_type_airspeed), do: ""
  def describe(:speed_type_groundspeed), do: ""
  def describe(:storage_status), do: "Flags to indicate the status of camera storage."
  def describe(:storage_status_empty), do: "Storage is missing (no microSD card loaded for example.)"
  def describe(:storage_status_unformatted), do: "Storage present but unformatted."
  def describe(:storage_status_ready), do: "Storage present and ready."
  def describe(:storage_status_not_supported), do: "Camera does not supply storage status information. Capacity information in STORAGE_INFORMATION fields will be ignored."
  def describe(:sub_mode), do: "A mapping of sub flight modes for custom_mode field of heartbeat."
  def describe(:sub_mode_stabilize), do: ""
  def describe(:sub_mode_acro), do: ""
  def describe(:sub_mode_alt_hold), do: ""
  def describe(:sub_mode_auto), do: ""
  def describe(:sub_mode_guided), do: ""
  def describe(:sub_mode_circle), do: ""
  def describe(:sub_mode_surface), do: ""
  def describe(:sub_mode_poshold), do: ""
  def describe(:sub_mode_manual), do: ""
  def describe(:tracker_mode), do: "A mapping of antenna tracker flight modes for custom_mode field of heartbeat."
  def describe(:tracker_mode_manual), do: ""
  def describe(:tracker_mode_stop), do: ""
  def describe(:tracker_mode_scan), do: ""
  def describe(:tracker_mode_servo_test), do: ""
  def describe(:tracker_mode_auto), do: ""
  def describe(:tracker_mode_initializing), do: ""
  def describe(:uavcan_node_health), do: "Generalized UAVCAN node health"
  def describe(:uavcan_node_health_ok), do: "The node is functioning properly."
  def describe(:uavcan_node_health_warning), do: "A critical parameter went out of range or the node has encountered a minor failure."
  def describe(:uavcan_node_health_error), do: "The node has encountered a major failure."
  def describe(:uavcan_node_health_critical), do: "The node has suffered a fatal malfunction."
  def describe(:uavcan_node_mode), do: "Generalized UAVCAN node mode"
  def describe(:uavcan_node_mode_operational), do: "The node is performing its primary functions."
  def describe(:uavcan_node_mode_initialization), do: "The node is initializing; this mode is entered immediately after startup."
  def describe(:uavcan_node_mode_maintenance), do: "The node is under maintenance."
  def describe(:uavcan_node_mode_software_update), do: "The node is in the process of updating its software."
  def describe(:uavcan_node_mode_offline), do: "The node is no longer available online."
  def describe(:uavionix_adsb_emergency_status), do: "Emergency status encoding"
  def describe(:uavionix_adsb_out_no_emergency), do: ""
  def describe(:uavionix_adsb_out_general_emergency), do: ""
  def describe(:uavionix_adsb_out_lifeguard_emergency), do: ""
  def describe(:uavionix_adsb_out_minimum_fuel_emergency), do: ""
  def describe(:uavionix_adsb_out_no_comm_emergency), do: ""
  def describe(:uavionix_adsb_out_unlawful_interferance_emergency), do: ""
  def describe(:uavionix_adsb_out_downed_aircraft_emergency), do: ""
  def describe(:uavionix_adsb_out_reserved), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size), do: "Definitions for aircraft size"
  def describe(:uavionix_adsb_out_cfg_aircraft_size_no_data), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size_l15m_w23m), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size_l25m_w28p5m), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size_l25_34m), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size_l35_33m), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size_l35_38m), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size_l45_39p5m), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size_l45_45m), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size_l55_45m), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size_l55_52m), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size_l65_59p5m), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size_l65_67m), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size_l75_w72p5m), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size_l75_w80m), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size_l85_w80m), do: ""
  def describe(:uavionix_adsb_out_cfg_aircraft_size_l85_w90m), do: ""
  def describe(:uavionix_adsb_out_cfg_gps_offset_lat), do: "GPS lataral offset encoding"
  def describe(:uavionix_adsb_out_cfg_gps_offset_lat_no_data), do: ""
  def describe(:uavionix_adsb_out_cfg_gps_offset_lat_left_2m), do: ""
  def describe(:uavionix_adsb_out_cfg_gps_offset_lat_left_4m), do: ""
  def describe(:uavionix_adsb_out_cfg_gps_offset_lat_left_6m), do: ""
  def describe(:uavionix_adsb_out_cfg_gps_offset_lat_right_0m), do: ""
  def describe(:uavionix_adsb_out_cfg_gps_offset_lat_right_2m), do: ""
  def describe(:uavionix_adsb_out_cfg_gps_offset_lat_right_4m), do: ""
  def describe(:uavionix_adsb_out_cfg_gps_offset_lat_right_6m), do: ""
  def describe(:uavionix_adsb_out_cfg_gps_offset_lon), do: "GPS longitudinal offset encoding"
  def describe(:uavionix_adsb_out_cfg_gps_offset_lon_no_data), do: ""
  def describe(:uavionix_adsb_out_cfg_gps_offset_lon_applied_by_sensor), do: ""
  def describe(:uavionix_adsb_out_dynamic_gps_fix), do: "Status for ADS-B transponder dynamic input"
  def describe(:uavionix_adsb_out_dynamic_gps_fix_none_0), do: ""
  def describe(:uavionix_adsb_out_dynamic_gps_fix_none_1), do: ""
  def describe(:uavionix_adsb_out_dynamic_gps_fix_2d), do: ""
  def describe(:uavionix_adsb_out_dynamic_gps_fix_3d), do: ""
  def describe(:uavionix_adsb_out_dynamic_gps_fix_dgps), do: ""
  def describe(:uavionix_adsb_out_dynamic_gps_fix_rtk), do: ""
  def describe(:uavionix_adsb_out_dynamic_state), do: "State flags for ADS-B transponder dynamic report"
  def describe(:uavionix_adsb_out_dynamic_state_intent_change), do: ""
  def describe(:uavionix_adsb_out_dynamic_state_autopilot_enabled), do: ""
  def describe(:uavionix_adsb_out_dynamic_state_nicbaro_crosschecked), do: ""
  def describe(:uavionix_adsb_out_dynamic_state_on_ground), do: ""
  def describe(:uavionix_adsb_out_dynamic_state_ident), do: ""
  def describe(:uavionix_adsb_out_rf_select), do: "Transceiver RF control flags for ADS-B transponder dynamic reports"
  def describe(:uavionix_adsb_out_rf_select_standby), do: ""
  def describe(:uavionix_adsb_out_rf_select_rx_enabled), do: ""
  def describe(:uavionix_adsb_out_rf_select_tx_enabled), do: ""
  def describe(:uavionix_adsb_rf_health), do: "Status flags for ADS-B transponder dynamic output"
  def describe(:uavionix_adsb_rf_health_initializing), do: ""
  def describe(:uavionix_adsb_rf_health_ok), do: ""
  def describe(:uavionix_adsb_rf_health_fail_tx), do: ""
  def describe(:uavionix_adsb_rf_health_fail_rx), do: ""
  def describe(:utm_data_avail_flags), do: "Flags for the global position report."
  def describe(:utm_data_avail_flags_time_valid), do: "The field time contains valid data."
  def describe(:utm_data_avail_flags_uas_id_available), do: "The field uas_id contains valid data."
  def describe(:utm_data_avail_flags_position_available), do: "The fields lat, lon and h_acc contain valid data."
  def describe(:utm_data_avail_flags_altitude_available), do: "The fields alt and v_acc contain valid data."
  def describe(:utm_data_avail_flags_relative_altitude_available), do: "The field relative_alt contains valid data."
  def describe(:utm_data_avail_flags_horizontal_velo_available), do: "The fields vx and vy contain valid data."
  def describe(:utm_data_avail_flags_vertical_velo_available), do: "The field vz contains valid data."
  def describe(:utm_data_avail_flags_next_waypoint_available), do: "The fields next_lat, next_lon and next_alt contain valid data."
  def describe(:utm_flight_state), do: "Airborne status of UAS."
  def describe(:utm_flight_state_unknown), do: "The flight state can't be determined."
  def describe(:utm_flight_state_ground), do: "UAS on ground."
  def describe(:utm_flight_state_airborne), do: "UAS airborne."
  def describe(:utm_flight_state_emergency), do: "UAS is in an emergency flight state."
  def describe(:utm_flight_state_noctrl), do: "UAS has no active controls."
  def describe(:video_stream_status_flags), do: "Stream status flags (Bitmap)"
  def describe(:video_stream_status_flags_running), do: "Stream is active (running)"
  def describe(:video_stream_status_flags_thermal), do: "Stream is thermal imaging"
  def describe(:video_stream_type), do: "Video stream types"
  def describe(:video_stream_type_rtsp), do: "Stream is RTSP"
  def describe(:video_stream_type_rtpudp), do: "Stream is RTP UDP (URI gives the port number)"
  def describe(:video_stream_type_tcp_mpeg), do: "Stream is MPEG on TCP"
  def describe(:video_stream_type_mpeg_ts_h264), do: "Stream is h.264 on MPEG TS (URI gives the port number)"
  def describe(:vtol_transition_heading), do: "Direction of VTOL transition"
  def describe(:vtol_transition_heading_vehicle_default), do: "Respect the heading configuration of the vehicle."
  def describe(:vtol_transition_heading_next_waypoint), do: "Use the heading pointing towards the next waypoint."
  def describe(:vtol_transition_heading_takeoff), do: "Use the heading on takeoff (while sitting on the ground)."
  def describe(:vtol_transition_heading_specified), do: "Use the specified heading in parameter 4."
  def describe(:vtol_transition_heading_any), do: "Use the current heading when reaching takeoff altitude (potentially facing the wind when weather-vaning is active)."
  def describe(:winch_actions), do: "Winch actions."
  def describe(:winch_relaxed), do: "Relax winch."
  def describe(:winch_relative_length_control), do: "Wind or unwind specified length of cable, optionally using specified rate."
  def describe(:winch_rate_control), do: "Wind or unwind cable at specified rate."
  
  
  @doc "Return keyword list of mav_cmd parameters"
  @spec describe_params(APM.Types.mav_cmd) :: MAVLink.Types.param_description_list
  def describe_params(:mav_cmd_nav_waypoint), do: [{1, "Hold time. (ignored by fixed wing, time to stay at waypoint for rotary wing)"}, {2, "Acceptance radius (if the sphere with this radius is hit, the waypoint counts as reached)"}, {3, "0 to pass through the WP, if > 0 radius to pass by WP. Positive value for clockwise orbit, negative value for counter-clockwise orbit. Allows trajectory control."}, {4, "Desired yaw angle at waypoint (rotary wing). NaN to use the current system yaw heading mode (e.g. yaw towards next waypoint, yaw to home, etc.)."}, {5, "Latitude"}, {6, "Longitude"}, {7, "Altitude"}]
  def describe_params(:mav_cmd_nav_loiter_unlim), do: [{1, "Empty"}, {2, "Empty"}, {3, "Loiter radius around waypoint for forward-only moving vehicles (not multicopters). If positive loiter clockwise, else counter-clockwise"}, {4, "Desired yaw angle. NaN to use the current system yaw heading mode (e.g. yaw towards next waypoint, yaw to home, etc.)."}, {5, "Latitude"}, {6, "Longitude"}, {7, "Altitude"}]
  def describe_params(:mav_cmd_nav_loiter_turns), do: [{1, "Number of turns."}, {2, "Empty"}, {3, "Radius around waypoint. If positive loiter clockwise, else counter-clockwise"}, {4, "Forward moving aircraft this sets exit xtrack location: 0 for center of loiter wp, 1 for exit location. Else, this is desired yaw angle. NaN to use the current system yaw heading mode (e.g. yaw towards next waypoint, yaw to home, etc.)."}, {5, "Latitude"}, {6, "Longitude"}, {7, "Altitude"}]
  def describe_params(:mav_cmd_nav_loiter_time), do: [{1, "Loiter time."}, {2, "Empty"}, {3, "Radius around waypoint. If positive loiter clockwise, else counter-clockwise."}, {4, "Forward moving aircraft this sets exit xtrack location: 0 for center of loiter wp, 1 for exit location. Else, this is desired yaw angle. NaN to use the current system yaw heading mode (e.g. yaw towards next waypoint, yaw to home, etc.)."}, {5, "Latitude"}, {6, "Longitude"}, {7, "Altitude"}]
  def describe_params(:mav_cmd_nav_return_to_launch), do: [{1, "Empty"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_nav_land), do: [{1, "Minimum target altitude if landing is aborted (0 = undefined/use system default)."}, {2, "Precision land mode."}, {3, "Empty."}, {4, "Desired yaw angle. NaN to use the current system yaw heading mode (e.g. yaw towards next waypoint, yaw to home, etc.)."}, {5, "Latitude."}, {6, "Longitude."}, {7, "Landing altitude (ground level in current frame)."}]
  def describe_params(:mav_cmd_nav_takeoff), do: [{1, "Minimum pitch (if airspeed sensor present), desired pitch without sensor"}, {2, "Empty"}, {3, "Empty"}, {4, "Yaw angle (if magnetometer present), ignored without magnetometer. NaN to use the current system yaw heading mode (e.g. yaw towards next waypoint, yaw to home, etc.)."}, {5, "Latitude"}, {6, "Longitude"}, {7, "Altitude"}]
  def describe_params(:mav_cmd_nav_land_local), do: [{1, "Landing target number (if available)"}, {2, "Maximum accepted offset from desired landing position - computed magnitude from spherical coordinates: d = sqrt(x^2 + y^2 + z^2), which gives the maximum accepted distance between the desired landing position and the position where the vehicle is about to land"}, {3, "Landing descend rate"}, {4, "Desired yaw angle"}, {5, "Y-axis position"}, {6, "X-axis position"}, {7, "Z-axis / ground level position"}]
  def describe_params(:mav_cmd_nav_takeoff_local), do: [{1, "Minimum pitch (if airspeed sensor present), desired pitch without sensor"}, {2, "Empty"}, {3, "Takeoff ascend rate"}, {4, "Yaw angle (if magnetometer or another yaw estimation source present), ignored without one of these"}, {5, "Y-axis position"}, {6, "X-axis position"}, {7, "Z-axis position"}]
  def describe_params(:mav_cmd_nav_follow), do: [{1, "Following logic to use (e.g. loitering or sinusoidal following) - depends on specific autopilot implementation"}, {2, "Ground speed of vehicle to be followed"}, {3, "Radius around waypoint. If positive loiter clockwise, else counter-clockwise"}, {4, "Desired yaw angle."}, {5, "Latitude"}, {6, "Longitude"}, {7, "Altitude"}]
  def describe_params(:mav_cmd_nav_continue_and_change_alt), do: [{1, "Climb or Descend (0 = Neutral, command completes when within 5m of this command's altitude, 1 = Climbing, command completes when at or above this command's altitude, 2 = Descending, command completes when at or below this command's altitude."}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Desired altitude"}]
  def describe_params(:mav_cmd_nav_loiter_to_alt), do: [{1, "Heading Required (0 = False)"}, {2, "Radius. If positive loiter clockwise, negative counter-clockwise, 0 means no change to standard loiter."}, {3, "Empty"}, {4, "Forward moving aircraft this sets exit xtrack location: 0 for center of loiter wp, 1 for exit location"}, {5, "Latitude"}, {6, "Longitude"}, {7, "Altitude"}]
  def describe_params(:mav_cmd_do_follow), do: [{1, "System ID (of the FOLLOW_TARGET beacon). Send 0 to disable follow-me and return to the default position hold mode."}, {2, "Reserved"}, {3, "Reserved"}, {4, "Altitude mode: 0: Keep current altitude, 1: keep altitude difference to target, 2: go to a fixed altitude above home."}, {5, "Altitude above home. (used if mode=2)"}, {6, "Reserved"}, {7, "Time to land in which the MAV should go to the default position hold mode after a message RX timeout."}]
  def describe_params(:mav_cmd_do_follow_reposition), do: [{1, "Camera q1 (where 0 is on the ray from the camera to the tracking device)"}, {2, "Camera q2"}, {3, "Camera q3"}, {4, "Camera q4"}, {5, "altitude offset from target"}, {6, "X offset from target"}, {7, "Y offset from target"}]
  def describe_params(:mav_cmd_nav_roi), do: [{1, "Region of interest mode."}, {2, "Waypoint index/ target ID. (see MAV_ROI enum)"}, {3, "ROI index (allows a vehicle to manage multiple ROI's)"}, {4, "Empty"}, {5, "x the location of the fixed ROI (see MAV_FRAME)"}, {6, "y"}, {7, "z"}]
  def describe_params(:mav_cmd_nav_pathplanning), do: [{1, "0: Disable local obstacle avoidance / local path planning (without resetting map), 1: Enable local path planning, 2: Enable and reset local path planning"}, {2, "0: Disable full path planning (without resetting map), 1: Enable, 2: Enable and reset map/occupancy grid, 3: Enable and reset planned route, but not occupancy grid"}, {3, "Empty"}, {4, "Yaw angle at goal"}, {5, "Latitude/X of goal"}, {6, "Longitude/Y of goal"}, {7, "Altitude/Z of goal"}]
  def describe_params(:mav_cmd_nav_spline_waypoint), do: [{1, "Hold time. (ignored by fixed wing, time to stay at waypoint for rotary wing)"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Latitude/X of goal"}, {6, "Longitude/Y of goal"}, {7, "Altitude/Z of goal"}]
  def describe_params(:mav_cmd_nav_altitude_wait), do: [{1, "Altitude."}, {2, "Descent speed."}, {3, "How long to wiggle the control surfaces to prevent them seizing up."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_nav_vtol_takeoff), do: [{1, "Empty"}, {2, "Front transition heading."}, {3, "Empty"}, {4, "Yaw angle. NaN to use the current system yaw heading mode (e.g. yaw towards next waypoint, yaw to home, etc.)."}, {5, "Latitude"}, {6, "Longitude"}, {7, "Altitude"}]
  def describe_params(:mav_cmd_nav_vtol_land), do: [{1, "Empty"}, {2, "Empty"}, {3, "Approach altitude (with the same reference as the Altitude field). NaN if unspecified."}, {4, "Yaw angle. NaN to use the current system yaw heading mode (e.g. yaw towards next waypoint, yaw to home, etc.)."}, {5, "Latitude"}, {6, "Longitude"}, {7, "Altitude (ground level)"}]
  def describe_params(:mav_cmd_nav_guided_enable), do: [{1, "On / Off (> 0.5f on)"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_nav_delay), do: [{1, "Delay (-1 to enable time-of-day fields)"}, {2, "hour (24h format, UTC, -1 to ignore)"}, {3, "minute (24h format, UTC, -1 to ignore)"}, {4, "second (24h format, UTC, -1 to ignore)"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_nav_payload_place), do: [{1, "Maximum distance to descend."}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Latitude"}, {6, "Longitude"}, {7, "Altitude"}]
  def describe_params(:mav_cmd_nav_last), do: [{1, "Empty"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_condition_delay), do: [{1, "Delay"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_condition_change_alt), do: [{1, "Descent / Ascend rate."}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Target Altitude"}]
  def describe_params(:mav_cmd_condition_distance), do: [{1, "Distance."}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_condition_yaw), do: [{1, "target angle, 0 is north"}, {2, "angular speed"}, {3, "direction: -1: counter clockwise, 1: clockwise"}, {4, "0: absolute angle, 1: relative offset"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_condition_last), do: [{1, "Empty"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_set_mode), do: [{1, "Mode"}, {2, "Custom mode - this is system specific, please refer to the individual autopilot specifications for details."}, {3, "Custom sub mode - this is system specific, please refer to the individual autopilot specifications for details."}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_jump), do: [{1, "Sequence number"}, {2, "Repeat count"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_change_speed), do: [{1, "Speed type (0=Airspeed, 1=Ground Speed, 2=Climb Speed, 3=Descent Speed)"}, {2, "Speed (-1 indicates no change)"}, {3, "Throttle (-1 indicates no change)"}, {4, "0: absolute, 1: relative"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_set_home), do: [{1, "Use current (1=use current location, 0=use specified location)"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Latitude"}, {6, "Longitude"}, {7, "Altitude"}]
  def describe_params(:mav_cmd_do_set_parameter), do: [{1, "Parameter number"}, {2, "Parameter value"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_set_relay), do: [{1, "Relay instance number."}, {2, "Setting. (1=on, 0=off, others possible depending on system hardware)"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_repeat_relay), do: [{1, "Relay instance number."}, {2, "Cycle count."}, {3, "Cycle time."}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_set_servo), do: [{1, "Servo instance number."}, {2, "Pulse Width Modulation."}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_repeat_servo), do: [{1, "Servo instance number."}, {2, "Pulse Width Modulation."}, {3, "Cycle count."}, {4, "Cycle time."}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_flighttermination), do: [{1, "Flight termination activated if > 0.5"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_change_altitude), do: [{1, "Altitude."}, {2, "Frame of new altitude."}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_land_start), do: [{1, "Empty"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Latitude"}, {6, "Longitude"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_rally_land), do: [{1, "Break altitude"}, {2, "Landing speed"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_go_around), do: [{1, "Altitude"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_reposition), do: [{1, "Ground speed, less than 0 (-1) for default"}, {2, "Bitmask of option flags."}, {3, "Reserved"}, {4, "Yaw heading. NaN to use the current system yaw heading mode (e.g. yaw towards next waypoint, yaw to home, etc.). For planes indicates loiter direction (0: clockwise, 1: counter clockwise)"}, {5, "Latitude"}, {6, "Longitude"}, {7, "Altitude"}]
  def describe_params(:mav_cmd_do_pause_continue), do: [{1, "0: Pause current mission or reposition command, hold current position. 1: Continue mission. A VTOL capable vehicle should enter hover mode (multicopter and VTOL planes). A plane should loiter with the default loiter radius."}, {2, "Reserved"}, {3, "Reserved"}, {4, "Reserved"}, {5, "Reserved"}, {6, "Reserved"}, {7, "Reserved"}]
  def describe_params(:mav_cmd_do_set_reverse), do: [{1, "Direction (0=Forward, 1=Reverse)"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_set_roi_location), do: [{1, "Empty"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Latitude of ROI location"}, {6, "Longitude of ROI location"}, {7, "Altitude of ROI location"}]
  def describe_params(:mav_cmd_do_set_roi_wpnext_offset), do: [{1, "Empty"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Pitch offset from next waypoint, positive pitching up"}, {6, "Roll offset from next waypoint, positive rolling to the right"}, {7, "Yaw offset from next waypoint, positive yawing to the right"}]
  def describe_params(:mav_cmd_do_set_roi_none), do: [{1, "Empty"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_set_roi_sysid), do: [{1, "System ID"}]
  def describe_params(:mav_cmd_do_control_video), do: [{1, "Camera ID (-1 for all)"}, {2, "Transmission: 0: disabled, 1: enabled compressed, 2: enabled raw"}, {3, "Transmission mode: 0: video stream, >0: single images every n seconds"}, {4, "Recording: 0: disabled, 1: enabled compressed, 2: enabled raw"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_set_roi), do: [{1, "Region of interest mode."}, {2, "Waypoint index/ target ID (depends on param 1)."}, {3, "Region of interest index. (allows a vehicle to manage multiple ROI's)"}, {4, "Empty"}, {5, "x the location of the fixed ROI (see MAV_FRAME)"}, {6, "y"}, {7, "z"}]
  def describe_params(:mav_cmd_do_digicam_configure), do: [{1, "Modes: P, TV, AV, M, Etc."}, {2, "Shutter speed: Divisor number for one second."}, {3, "Aperture: F stop number."}, {4, "ISO number e.g. 80, 100, 200, Etc."}, {5, "Exposure type enumerator."}, {6, "Command Identity."}, {7, "Main engine cut-off time before camera trigger. (0 means no cut-off)"}]
  def describe_params(:mav_cmd_do_digicam_control), do: [{1, "Session control e.g. show/hide lens"}, {2, "Zoom's absolute position"}, {3, "Zooming step value to offset zoom from the current position"}, {4, "Focus Locking, Unlocking or Re-locking"}, {5, "Shooting Command"}, {6, "Command Identity"}, {7, "Test shot identifier. If set to 1, image will only be captured, but not counted towards internal frame count."}]
  def describe_params(:mav_cmd_do_mount_configure), do: [{1, "Mount operation mode"}, {2, "stabilize roll? (1 = yes, 0 = no)"}, {3, "stabilize pitch? (1 = yes, 0 = no)"}, {4, "stabilize yaw? (1 = yes, 0 = no)"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_mount_control), do: [{1, "pitch (WIP: DEPRECATED: or lat in degrees) depending on mount mode."}, {2, "roll (WIP: DEPRECATED: or lon in degrees) depending on mount mode."}, {3, "yaw (WIP: DEPRECATED: or alt in meters) depending on mount mode."}, {4, "WIP: alt in meters depending on mount mode."}, {5, "WIP: latitude in degrees * 1E7, set if appropriate mount mode."}, {6, "WIP: longitude in degrees * 1E7, set if appropriate mount mode."}, {7, "Mount mode."}]
  def describe_params(:mav_cmd_do_set_cam_trigg_dist), do: [{1, "Camera trigger distance. 0 to stop triggering."}, {2, "Camera shutter integration time. -1 or 0 to ignore"}, {3, "Trigger camera once immediately. (0 = no trigger, 1 = trigger)"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_fence_enable), do: [{1, "enable? (0=disable, 1=enable, 2=disable_floor_only)"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_parachute), do: [{1, "Action"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_motor_test), do: [{1, "Motor instance number. (from 1 to max number of motors on the vehicle)"}, {2, "Throttle type."}, {3, "Throttle."}, {4, "Timeout."}, {5, "Motor count. (number of motors to test to test in sequence, waiting for the timeout above between them; 0=1 motor, 1=1 motor, 2=2 motors...)"}, {6, "Motor test order."}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_inverted_flight), do: [{1, "Inverted flight. (0=normal, 1=inverted)"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_gripper), do: [{1, "Gripper instance number."}, {2, "Gripper action to perform."}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_autotune_enable), do: [{1, "Enable (1: enable, 0:disable)."}, {2, "Empty."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_nav_set_yaw_speed), do: [{1, "Yaw angle to adjust steering by."}, {2, "Speed."}, {3, "Final angle. (0=absolute, 1=relative)"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_set_cam_trigg_interval), do: [{1, "Camera trigger cycle time. -1 or 0 to ignore."}, {2, "Camera shutter integration time. Should be less than trigger cycle time. -1 or 0 to ignore."}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_set_resume_repeat_dist), do: [{1, "Distance."}, {2, "Empty."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_do_sprayer), do: [{1, "0: disable sprayer. 1: enable sprayer."}, {2, "Empty."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_do_send_script_message), do: [{1, "uint16 ID value to be passed to scripting"}, {2, "float value to be passed to scripting"}, {3, "float value to be passed to scripting"}, {4, "float value to be passed to scripting"}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_do_aux_function), do: [{1, "Auxiliary Function."}, {2, "Switch Level."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_do_mount_control_quat), do: [{1, "quaternion param q1, w (1 in null-rotation)"}, {2, "quaternion param q2, x (0 in null-rotation)"}, {3, "quaternion param q3, y (0 in null-rotation)"}, {4, "quaternion param q4, z (0 in null-rotation)"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_guided_master), do: [{1, "System ID"}, {2, "Component ID"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_guided_limits), do: [{1, "Timeout - maximum time that external controller will be allowed to control vehicle. 0 means no timeout."}, {2, "Altitude (MSL) min - if vehicle moves below this alt, the command will be aborted and the mission will continue. 0 means no lower altitude limit."}, {3, "Altitude (MSL) max - if vehicle moves above this alt, the command will be aborted and the mission will continue. 0 means no upper altitude limit."}, {4, "Horizontal move limit - if vehicle moves more than this distance from its location at the moment the command was executed, the command will be aborted and the mission will continue. 0 means no horizontal move limit."}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_engine_control), do: [{1, "0: Stop engine, 1:Start Engine"}, {2, "0: Warm start, 1:Cold start. Controls use of choke where applicable"}, {3, "Height delay. This is for commanding engine start only after the vehicle has gained the specified height. Used in VTOL vehicles during takeoff to start engine after the aircraft is off the ground. Zero for no delay."}, {4, "Empty"}, {5, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_set_mission_current), do: [{1, "Mission sequence value to set"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_do_last), do: [{1, "Empty"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_preflight_calibration), do: [{1, "1: gyro calibration, 3: gyro temperature calibration"}, {2, "1: magnetometer calibration"}, {3, "1: ground pressure calibration"}, {4, "1: radio RC calibration, 2: RC trim calibration"}, {5, "1: accelerometer calibration, 2: board level calibration, 3: accelerometer temperature calibration, 4: simple accelerometer calibration"}, {6, "1: APM: compass/motor interference calibration (PX4: airspeed calibration, deprecated), 2: airspeed calibration"}, {7, "1: ESC calibration, 3: barometer temperature calibration"}]
  def describe_params(:mav_cmd_preflight_set_sensor_offsets), do: [{1, "Sensor to adjust the offsets for: 0: gyros, 1: accelerometer, 2: magnetometer, 3: barometer, 4: optical flow, 5: second magnetometer, 6: third magnetometer"}, {2, "X axis offset (or generic dimension 1), in the sensor's raw units"}, {3, "Y axis offset (or generic dimension 2), in the sensor's raw units"}, {4, "Z axis offset (or generic dimension 3), in the sensor's raw units"}, {5, "Generic dimension 4, in the sensor's raw units"}, {6, "Generic dimension 5, in the sensor's raw units"}, {7, "Generic dimension 6, in the sensor's raw units"}]
  def describe_params(:mav_cmd_preflight_uavcan), do: [{1, "1: Trigger actuator ID assignment and direction mapping. 0: Cancel command."}, {2, "Reserved"}, {3, "Reserved"}, {4, "Reserved"}, {5, "Reserved"}, {6, "Reserved"}, {7, "Reserved"}]
  def describe_params(:mav_cmd_preflight_storage), do: [{1, "Parameter storage: 0: READ FROM FLASH/EEPROM, 1: WRITE CURRENT TO FLASH/EEPROM, 2: Reset to defaults"}, {2, "Mission storage: 0: READ FROM FLASH/EEPROM, 1: WRITE CURRENT TO FLASH/EEPROM, 2: Reset to defaults"}, {3, "Onboard logging: 0: Ignore, 1: Start default rate logging, -1: Stop logging, > 1: logging rate (e.g. set to 1000 for 1000 Hz logging)"}, {4, "Reserved"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_preflight_reboot_shutdown), do: [{1, "0: Do nothing for autopilot, 1: Reboot autopilot, 2: Shutdown autopilot, 3: Reboot autopilot and keep it in the bootloader until upgraded."}, {2, "0: Do nothing for onboard computer, 1: Reboot onboard computer, 2: Shutdown onboard computer, 3: Reboot onboard computer and keep it in the bootloader until upgraded."}, {3, "WIP: 0: Do nothing for camera, 1: Reboot onboard camera, 2: Shutdown onboard camera, 3: Reboot onboard camera and keep it in the bootloader until upgraded"}, {4, "WIP: 0: Do nothing for mount (e.g. gimbal), 1: Reboot mount, 2: Shutdown mount, 3: Reboot mount and keep it in the bootloader until upgraded"}, {5, "Reserved (set to 0)"}, {6, "Reserved (set to 0)"}, {7, "WIP: ID (e.g. camera ID -1 for all IDs)"}]
  def describe_params(:mav_cmd_override_goto), do: [{1, "MAV_GOTO_DO_HOLD: pause mission and either hold or move to specified position (depending on param2), MAV_GOTO_DO_CONTINUE: resume mission."}, {2, "MAV_GOTO_HOLD_AT_CURRENT_POSITION: hold at current position, MAV_GOTO_HOLD_AT_SPECIFIED_POSITION: hold at specified position."}, {3, "Coordinate frame of hold point."}, {4, "Desired yaw angle."}, {5, "Latitude/X position."}, {6, "Longitude/Y position."}, {7, "Altitude/Z position."}]
  def describe_params(:mav_cmd_oblique_survey), do: [{1, "Camera trigger distance. 0 to stop triggering."}, {2, "Camera shutter integration time. 0 to ignore"}, {3, "The minimum interval in which the camera is capable of taking subsequent pictures repeatedly. 0 to ignore."}, {4, "Total number of roll positions at which the camera will capture photos (images captures spread evenly across the limits defined by param5)."}, {5, "Angle limits that the camera can be rolled to left and right of center."}, {6, "Fixed pitch angle that the camera will hold in oblique mode if the mount is actuated in the pitch axis."}, {7, "Empty"}]
  def describe_params(:mav_cmd_mission_start), do: [{1, "first_item: the first mission item to run"}, {2, "last_item: the last mission item to run (after this item is run, the mission ends)"}]
  def describe_params(:mav_cmd_component_arm_disarm), do: [{1, "0: disarm, 1: arm"}, {2, "0: arm-disarm unless prevented by safety checks (i.e. when landed), 21196: force arming/disarming (e.g. allow arming to override preflight checks and disarming in flight)"}]
  def describe_params(:mav_cmd_get_home_position), do: [{1, "Reserved"}, {2, "Reserved"}, {3, "Reserved"}, {4, "Reserved"}, {5, "Reserved"}, {6, "Reserved"}, {7, "Reserved"}]
  def describe_params(:mav_cmd_start_rx_pair), do: [{1, "0:Spektrum."}, {2, "RC type."}]
  def describe_params(:mav_cmd_get_message_interval), do: [{1, "The MAVLink message ID"}]
  def describe_params(:mav_cmd_set_message_interval), do: [{1, "The MAVLink message ID"}, {2, "The interval between two messages. Set to -1 to disable and 0 to request default rate."}, {7, "Target address of message stream (if message has target address fields). 0: Flight-stack default (recommended), 1: address of requestor, 2: broadcast."}]
  def describe_params(:mav_cmd_request_message), do: [{1, "The MAVLink message ID of the requested message."}, {2, "Use for index ID, if required. Otherwise, the use of this parameter (if any) must be defined in the requested message. By default assumed not used (0)."}, {3, "The use of this parameter (if any), must be defined in the requested message. By default assumed not used (0)."}, {4, "The use of this parameter (if any), must be defined in the requested message. By default assumed not used (0)."}, {5, "The use of this parameter (if any), must be defined in the requested message. By default assumed not used (0)."}, {6, "The use of this parameter (if any), must be defined in the requested message. By default assumed not used (0)."}, {7, "Target address for requested message (if message has target address fields). 0: Flight-stack default, 1: address of requestor, 2: broadcast."}]
  def describe_params(:mav_cmd_request_protocol_version), do: [{1, "1: Request supported protocol versions by all nodes on the network"}, {2, "Reserved (all remaining params)"}]
  def describe_params(:mav_cmd_request_autopilot_capabilities), do: [{1, "1: Request autopilot version"}, {2, "Reserved (all remaining params)"}]
  def describe_params(:mav_cmd_request_camera_information), do: [{1, "0: No action 1: Request camera capabilities"}, {2, "Reserved (all remaining params)"}]
  def describe_params(:mav_cmd_request_camera_settings), do: [{1, "0: No Action 1: Request camera settings"}, {2, "Reserved (all remaining params)"}]
  def describe_params(:mav_cmd_request_storage_information), do: [{1, "Storage ID (0 for all, 1 for first, 2 for second, etc.)"}, {2, "0: No Action 1: Request storage information"}, {3, "Reserved (all remaining params)"}]
  def describe_params(:mav_cmd_storage_format), do: [{1, "Storage ID (1 for first, 2 for second, etc.)"}, {2, "0: No action 1: Format storage"}, {3, "Reserved (all remaining params)"}]
  def describe_params(:mav_cmd_request_camera_capture_status), do: [{1, "0: No Action 1: Request camera capture status"}, {2, "Reserved (all remaining params)"}]
  def describe_params(:mav_cmd_request_flight_information), do: [{1, "1: Request flight information"}, {2, "Reserved (all remaining params)"}]
  def describe_params(:mav_cmd_reset_camera_settings), do: [{1, "0: No Action 1: Reset all settings"}, {2, "Reserved (all remaining params)"}]
  def describe_params(:mav_cmd_set_camera_mode), do: [{1, "Reserved (Set to 0)"}, {2, "Camera mode"}, {3, ""}, {4, ""}, {7, ""}]
  def describe_params(:mav_cmd_jump_tag), do: [{1, "Tag."}]
  def describe_params(:mav_cmd_do_jump_tag), do: [{1, "Target tag to jump to."}, {2, "Repeat count."}]
  def describe_params(:mav_cmd_image_start_capture), do: [{1, "Reserved (Set to 0)"}, {2, "Desired elapsed time between two consecutive pictures (in seconds). Minimum values depend on hardware (typically greater than 2 seconds)."}, {3, "Total number of images to capture. 0 to capture forever/until MAV_CMD_IMAGE_STOP_CAPTURE."}, {4, "Capture sequence number starting from 1. This is only valid for single-capture (param3 == 1), otherwise set to 0. Increment the capture ID for each capture command to prevent double captures when a command is re-transmitted."}, {5, ""}, {6, ""}, {7, ""}]
  def describe_params(:mav_cmd_image_stop_capture), do: [{1, "Reserved (Set to 0)"}, {2, ""}, {3, ""}, {4, ""}, {7, ""}]
  def describe_params(:mav_cmd_do_trigger_control), do: [{1, "Trigger enable/disable (0 for disable, 1 for start), -1 to ignore"}, {2, "1 to reset the trigger sequence, -1 or 0 to ignore"}, {3, "1 to pause triggering, but without switching the camera off or retracting it. -1 to ignore"}]
  def describe_params(:mav_cmd_video_start_capture), do: [{1, "Video Stream ID (0 for all streams)"}, {2, "Frequency CAMERA_CAPTURE_STATUS messages should be sent while recording (0 for no messages, otherwise frequency)"}, {3, ""}, {4, ""}, {5, ""}, {6, ""}, {7, ""}]
  def describe_params(:mav_cmd_video_stop_capture), do: [{1, "Video Stream ID (0 for all streams)"}, {2, ""}, {3, ""}, {4, ""}, {5, ""}, {6, ""}, {7, ""}]
  def describe_params(:mav_cmd_video_start_streaming), do: [{1, "Video Stream ID (0 for all streams, 1 for first, 2 for second, etc.)"}]
  def describe_params(:mav_cmd_video_stop_streaming), do: [{1, "Video Stream ID (0 for all streams, 1 for first, 2 for second, etc.)"}]
  def describe_params(:mav_cmd_request_video_stream_information), do: [{1, "Video Stream ID (0 for all streams, 1 for first, 2 for second, etc.)"}]
  def describe_params(:mav_cmd_request_video_stream_status), do: [{1, "Video Stream ID (0 for all streams, 1 for first, 2 for second, etc.)"}]
  def describe_params(:mav_cmd_logging_start), do: [{1, "Format: 0: ULog"}, {2, "Reserved (set to 0)"}, {3, "Reserved (set to 0)"}, {4, "Reserved (set to 0)"}, {5, "Reserved (set to 0)"}, {6, "Reserved (set to 0)"}, {7, "Reserved (set to 0)"}]
  def describe_params(:mav_cmd_logging_stop), do: [{1, "Reserved (set to 0)"}, {2, "Reserved (set to 0)"}, {3, "Reserved (set to 0)"}, {4, "Reserved (set to 0)"}, {5, "Reserved (set to 0)"}, {6, "Reserved (set to 0)"}, {7, "Reserved (set to 0)"}]
  def describe_params(:mav_cmd_airframe_configuration), do: [{1, "Landing gear ID (default: 0, -1 for all)"}, {2, "Landing gear position (Down: 0, Up: 1, NaN for no change)"}, {3, ""}, {4, ""}, {5, ""}, {6, ""}, {7, ""}]
  def describe_params(:mav_cmd_control_high_latency), do: [{1, "Control transmission over high latency telemetry (0: stop, 1: start)"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_panorama_create), do: [{1, "Viewing angle horizontal of the panorama (+- 0.5 the total angle)"}, {2, "Viewing angle vertical of panorama."}, {3, "Speed of the horizontal rotation."}, {4, "Speed of the vertical rotation."}]
  def describe_params(:mav_cmd_do_vtol_transition), do: [{1, "The target VTOL state. Only MAV_VTOL_STATE_MC and MAV_VTOL_STATE_FW can be used."}]
  def describe_params(:mav_cmd_arm_authorization_request), do: [{1, "Vehicle system id, this way ground station can request arm authorization on behalf of any vehicle"}]
  
  def describe_params(:mav_cmd_set_guided_submode_circle), do: [{1, "Radius of desired circle in CIRCLE_MODE"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "Target latitude of center of circle in CIRCLE_MODE"}, {6, "Target longitude of center of circle in CIRCLE_MODE"}]
  def describe_params(:mav_cmd_nav_fence_return_point), do: [{1, "Reserved"}, {2, "Reserved"}, {3, "Reserved"}, {4, "Reserved"}, {5, "Latitude"}, {6, "Longitude"}, {7, "Altitude"}]
  def describe_params(:mav_cmd_nav_fence_polygon_vertex_inclusion), do: [{1, "Polygon vertex count"}, {2, "Vehicle must be inside ALL inclusion zones in a single group, vehicle must be inside at least one group, must be the same for all points in each polygon"}, {3, "Reserved"}, {4, "Reserved"}, {5, "Latitude"}, {6, "Longitude"}, {7, "Reserved"}]
  def describe_params(:mav_cmd_nav_fence_polygon_vertex_exclusion), do: [{1, "Polygon vertex count"}, {2, "Reserved"}, {3, "Reserved"}, {4, "Reserved"}, {5, "Latitude"}, {6, "Longitude"}, {7, "Reserved"}]
  def describe_params(:mav_cmd_nav_fence_circle_inclusion), do: [{1, "Radius."}, {2, "Vehicle must be inside ALL inclusion zones in a single group, vehicle must be inside at least one group"}, {3, "Reserved"}, {4, "Reserved"}, {5, "Latitude"}, {6, "Longitude"}, {7, "Reserved"}]
  def describe_params(:mav_cmd_nav_fence_circle_exclusion), do: [{1, "Radius."}, {2, "Reserved"}, {3, "Reserved"}, {4, "Reserved"}, {5, "Latitude"}, {6, "Longitude"}, {7, "Reserved"}]
  def describe_params(:mav_cmd_nav_rally_point), do: [{1, "Reserved"}, {2, "Reserved"}, {3, "Reserved"}, {4, "Reserved"}, {5, "Latitude"}, {6, "Longitude"}, {7, "Altitude"}]
  def describe_params(:mav_cmd_uavcan_get_node_info), do: [{1, "Reserved (set to 0)"}, {2, "Reserved (set to 0)"}, {3, "Reserved (set to 0)"}, {4, "Reserved (set to 0)"}, {5, "Reserved (set to 0)"}, {6, "Reserved (set to 0)"}, {7, "Reserved (set to 0)"}]
  def describe_params(:mav_cmd_payload_prepare_deploy), do: [{1, "Operation mode. 0: prepare single payload deploy (overwriting previous requests), but do not execute it. 1: execute payload deploy immediately (rejecting further deploy commands during execution, but allowing abort). 2: add payload deploy to existing deployment list."}, {2, "Desired approach vector in compass heading. A negative value indicates the system can define the approach vector at will."}, {3, "Desired ground speed at release time. This can be overridden by the airframe in case it needs to meet minimum airspeed. A negative value indicates the system can define the ground speed at will."}, {4, "Minimum altitude clearance to the release position. A negative value indicates the system can define the clearance at will."}, {5, "Latitude. Note, if used in MISSION_ITEM (deprecated) the units are degrees (unscaled)"}, {6, "Longitude. Note, if used in MISSION_ITEM (deprecated) the units are degrees (unscaled)"}, {7, "Altitude (MSL)"}]
  def describe_params(:mav_cmd_payload_control_deploy), do: [{1, "Operation mode. 0: Abort deployment, continue normal mission. 1: switch to payload deployment mode. 100: delete first payload deployment request. 101: delete all payload deployment requests."}, {2, "Reserved"}, {3, "Reserved"}, {4, "Reserved"}, {5, "Reserved"}, {6, "Reserved"}, {7, "Reserved"}]
  def describe_params(:mav_cmd_waypoint_user_1), do: [{1, "User defined"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "Latitude unscaled"}, {6, "Longitude unscaled"}, {7, "Altitude (MSL)"}]
  def describe_params(:mav_cmd_waypoint_user_2), do: [{1, "User defined"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "Latitude unscaled"}, {6, "Longitude unscaled"}, {7, "Altitude (MSL)"}]
  def describe_params(:mav_cmd_waypoint_user_3), do: [{1, "User defined"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "Latitude unscaled"}, {6, "Longitude unscaled"}, {7, "Altitude (MSL)"}]
  def describe_params(:mav_cmd_waypoint_user_4), do: [{1, "User defined"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "Latitude unscaled"}, {6, "Longitude unscaled"}, {7, "Altitude (MSL)"}]
  def describe_params(:mav_cmd_waypoint_user_5), do: [{1, "User defined"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "Latitude unscaled"}, {6, "Longitude unscaled"}, {7, "Altitude (MSL)"}]
  def describe_params(:mav_cmd_spatial_user_1), do: [{1, "User defined"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "Latitude unscaled"}, {6, "Longitude unscaled"}, {7, "Altitude (MSL)"}]
  def describe_params(:mav_cmd_spatial_user_2), do: [{1, "User defined"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "Latitude unscaled"}, {6, "Longitude unscaled"}, {7, "Altitude (MSL)"}]
  def describe_params(:mav_cmd_spatial_user_3), do: [{1, "User defined"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "Latitude unscaled"}, {6, "Longitude unscaled"}, {7, "Altitude (MSL)"}]
  def describe_params(:mav_cmd_spatial_user_4), do: [{1, "User defined"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "Latitude unscaled"}, {6, "Longitude unscaled"}, {7, "Altitude (MSL)"}]
  def describe_params(:mav_cmd_spatial_user_5), do: [{1, "User defined"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "Latitude unscaled"}, {6, "Longitude unscaled"}, {7, "Altitude (MSL)"}]
  def describe_params(:mav_cmd_user_1), do: [{1, "User defined"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "User defined"}, {6, "User defined"}, {7, "User defined"}]
  def describe_params(:mav_cmd_user_2), do: [{1, "User defined"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "User defined"}, {6, "User defined"}, {7, "User defined"}]
  def describe_params(:mav_cmd_user_3), do: [{1, "User defined"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "User defined"}, {6, "User defined"}, {7, "User defined"}]
  def describe_params(:mav_cmd_user_4), do: [{1, "User defined"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "User defined"}, {6, "User defined"}, {7, "User defined"}]
  def describe_params(:mav_cmd_user_5), do: [{1, "User defined"}, {2, "User defined"}, {3, "User defined"}, {4, "User defined"}, {5, "User defined"}, {6, "User defined"}, {7, "User defined"}]
  def describe_params(:mav_cmd_power_off_initiated), do: [{1, "Empty."}, {2, "Empty."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_solo_btn_fly_click), do: [{1, "Empty."}, {2, "Empty."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_solo_btn_fly_hold), do: [{1, "Takeoff altitude."}, {2, "Empty."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_solo_btn_pause_click), do: [{1, "1 if Solo is in a shot mode, 0 otherwise."}, {2, "Empty."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_fixed_mag_cal), do: [{1, "Magnetic declination."}, {2, "Magnetic inclination."}, {3, "Magnetic intensity."}, {4, "Yaw."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_fixed_mag_cal_field), do: [{1, "Field strength X."}, {2, "Field strength Y."}, {3, "Field strength Z."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_fixed_mag_cal_yaw), do: [{1, "Yaw of vehicle in earth frame."}, {2, "CompassMask, 0 for all."}, {3, "Latitude."}, {4, "Longitude."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_do_start_mag_cal), do: [{1, "Bitmask of magnetometers to calibrate. Use 0 to calibrate all sensors that can be started (sensors may not start if disabled, unhealthy, etc.). The command will NACK if calibration does not start for a sensor explicitly specified by the bitmask."}, {2, "Automatically retry on failure (0=no retry, 1=retry)."}, {3, "Save without user input (0=require input, 1=autosave)."}, {4, "Delay."}, {5, "Autoreboot (0=user reboot, 1=autoreboot)."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_do_accept_mag_cal), do: [{1, "Bitmask of magnetometers that calibration is accepted (0 means all)."}, {2, "Empty."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_do_cancel_mag_cal), do: [{1, "Bitmask of magnetometers to cancel a running calibration (0 means all)."}, {2, "Empty."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_set_factory_test_mode), do: [{1, "0: activate test mode, 1: exit test mode."}, {2, "Empty."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_do_send_banner), do: [{1, "Empty."}, {2, "Empty."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_accelcal_vehicle_pos), do: [{1, "Position."}, {2, "Empty."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_gimbal_reset), do: [{1, "Empty."}, {2, "Empty."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_gimbal_axis_calibration_status), do: [{1, "Gimbal axis we're reporting calibration progress for."}, {2, "Current calibration progress for this axis."}, {3, "Status of the calibration."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_gimbal_request_axis_calibration), do: [{1, "Empty."}, {2, "Empty."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_gimbal_full_reset), do: [{1, "Magic number."}, {2, "Magic number."}, {3, "Magic number."}, {4, "Magic number."}, {5, "Magic number."}, {6, "Magic number."}, {7, "Magic number."}]
  def describe_params(:mav_cmd_do_winch), do: [{1, "Winch instance number."}, {2, "Action to perform."}, {3, "Length of cable to release (negative to wind)."}, {4, "Release rate (negative to wind)."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_flash_bootloader), do: [{1, "Empty"}, {2, "Empty"}, {3, "Empty"}, {4, "Empty"}, {5, "Magic number - set to 290876 to actually flash"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_battery_reset), do: [{1, "Bitmask of batteries to reset. Least significant bit is for the first battery."}, {2, "Battery percentage remaining to set."}]
  def describe_params(:mav_cmd_debug_trap), do: [{1, "Magic number - set to 32451 to actually trap."}, {2, "Empty."}, {3, "Empty."}, {4, "Empty."}, {5, "Empty."}, {6, "Empty."}, {7, "Empty."}]
  def describe_params(:mav_cmd_scripting), do: [{1, "Scripting command to execute"}]
  def describe_params(:mav_cmd_guided_change_speed), do: [{1, "Airspeed or groundspeed."}, {2, "Target Speed"}, {3, "Acceleration rate, 0 to take effect instantly"}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  def describe_params(:mav_cmd_guided_change_altitude), do: [{1, "Empty"}, {2, "Empty"}, {3, "Rate of change, toward new altitude. 0 for maximum rate change. Positive numbers only, as negative numbers will not converge on the new target alt."}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Target Altitude"}]
  def describe_params(:mav_cmd_guided_change_heading), do: [{1, "course-over-ground or raw vehicle heading."}, {2, "Target heading."}, {3, "Maximum centripetal accelearation, ie rate of change, toward new heading."}, {4, "Empty"}, {5, "Empty"}, {6, "Empty"}, {7, "Empty"}]
  
  
  @doc "Return encoded integer value used in a MAVLink message for an enumeration value"
  @spec encode(APM.Types.accelcal_vehicle_pos, :accelcal_vehicle_pos) :: 1 | 2 | 3 | 4 | 5 | 6 | 16777215 | 16777216
  @spec encode(APM.Types.adsb_altitude_type, :adsb_altitude_type) :: 0 | 1
  @spec encode(APM.Types.adsb_emitter_type, :adsb_emitter_type) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19
  @spec encode(APM.Types.adsb_flags, :adsb_flags) :: 1 | 2 | 4 | 8 | 16 | 32 | 64 | 128 | 256 | 32768
  @spec encode(APM.Types.ais_flags, :ais_flags) :: 0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000 | 0b1000000000000
  @spec encode(APM.Types.ais_nav_status, :ais_nav_status) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15
  @spec encode(APM.Types.ais_type, :ais_type) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 | 30 | 31 | 32 | 33 | 34 | 35 | 36 | 37 | 38 | 39 | 40 | 41 | 42 | 43 | 44 | 45 | 46 | 47 | 48 | 49 | 50 | 51 | 52 | 53 | 54 | 55 | 56 | 57 | 58 | 59 | 60 | 61 | 62 | 63 | 64 | 65 | 66 | 67 | 68 | 69 | 70 | 71 | 72 | 73 | 74 | 75 | 76 | 77 | 78 | 79 | 80 | 81 | 82 | 83 | 84 | 85 | 86 | 87 | 88 | 89 | 90 | 91 | 92 | 93 | 94 | 95 | 96 | 97 | 98 | 99
  @spec encode(APM.Types.attitude_target_typemask, :attitude_target_typemask) :: 1 | 2 | 4 | 64 | 128
  @spec encode(APM.Types.camera_cap_flags, :camera_cap_flags) :: 0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000
  @spec encode(APM.Types.camera_feedback_flags, :camera_feedback_flags) :: 0 | 1 | 2 | 3 | 4
  @spec encode(APM.Types.camera_mode, :camera_mode) :: 0 | 1 | 2
  @spec encode(APM.Types.camera_status_types, :camera_status_types) :: 0 | 1 | 2 | 3 | 4 | 5 | 6
  @spec encode(APM.Types.copter_mode, :copter_mode) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 9 | 11 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26
  @spec encode(APM.Types.deepstall_stage, :deepstall_stage) :: 0 | 1 | 2 | 3 | 4 | 5 | 6
  @spec encode(APM.Types.device_op_bustype, :device_op_bustype) :: 0 | 1
  @spec encode(APM.Types.ekf_status_flags, :ekf_status_flags) :: 0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000
  @spec encode(APM.Types.estimator_status_flags, :estimator_status_flags) :: 0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000
  @spec encode(APM.Types.fence_action, :fence_action) :: 0 | 1 | 2 | 3 | 4
  @spec encode(APM.Types.fence_breach, :fence_breach) :: 0 | 1 | 2 | 3
  @spec encode(APM.Types.fence_mitigate, :fence_mitigate) :: 0 | 1 | 2
  @spec encode(APM.Types.firmware_version_type, :firmware_version_type) :: 0 | 64 | 128 | 192 | 255
  @spec encode(APM.Types.gimbal_axis, :gimbal_axis) :: 0 | 1 | 2
  @spec encode(APM.Types.gimbal_axis_calibration_required, :gimbal_axis_calibration_required) :: 0 | 1 | 2
  @spec encode(APM.Types.gimbal_axis_calibration_status, :gimbal_axis_calibration_status) :: 0 | 1 | 2
  @spec encode(APM.Types.gopro_burst_rate, :gopro_burst_rate) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8
  @spec encode(APM.Types.gopro_capture_mode, :gopro_capture_mode) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 255
  @spec encode(APM.Types.gopro_charging, :gopro_charging) :: 0 | 1
  @spec encode(APM.Types.gopro_command, :gopro_command) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16
  @spec encode(APM.Types.gopro_field_of_view, :gopro_field_of_view) :: 0 | 1 | 2
  @spec encode(APM.Types.gopro_frame_rate, :gopro_frame_rate) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13
  @spec encode(APM.Types.gopro_heartbeat_flags, :gopro_heartbeat_flags) :: 1
  @spec encode(APM.Types.gopro_heartbeat_status, :gopro_heartbeat_status) :: 0 | 1 | 2 | 3
  @spec encode(APM.Types.gopro_model, :gopro_model) :: 0 | 1 | 2 | 3 | 4
  @spec encode(APM.Types.gopro_photo_resolution, :gopro_photo_resolution) :: 0 | 1 | 2 | 3 | 4
  @spec encode(APM.Types.gopro_protune_colour, :gopro_protune_colour) :: 0 | 1
  @spec encode(APM.Types.gopro_protune_exposure, :gopro_protune_exposure) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20
  @spec encode(APM.Types.gopro_protune_gain, :gopro_protune_gain) :: 0 | 1 | 2 | 3 | 4
  @spec encode(APM.Types.gopro_protune_sharpness, :gopro_protune_sharpness) :: 0 | 1 | 2
  @spec encode(APM.Types.gopro_protune_white_balance, :gopro_protune_white_balance) :: 0 | 1 | 2 | 3 | 4
  @spec encode(APM.Types.gopro_request_status, :gopro_request_status) :: 0 | 1
  @spec encode(APM.Types.gopro_resolution, :gopro_resolution) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13
  @spec encode(APM.Types.gopro_video_settings_flags, :gopro_video_settings_flags) :: 1
  @spec encode(APM.Types.gps_fix_type, :gps_fix_type) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8
  @spec encode(APM.Types.gps_input_ignore_flags, :gps_input_ignore_flags) :: 0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000
  @spec encode(APM.Types.gripper_actions, :gripper_actions) :: 0 | 1
  @spec encode(APM.Types.heading_type, :heading_type) :: 0 | 1
  @spec encode(APM.Types.hl_failure_flag, :hl_failure_flag) :: 0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000 | 0b1000000000000 | 0b10000000000000
  @spec encode(APM.Types.icarous_fms_state, :icarous_fms_state) :: 0 | 1 | 2 | 3 | 4 | 5
  @spec encode(APM.Types.icarous_track_band_types, :icarous_track_band_types) :: 0 | 1 | 2
  @spec encode(APM.Types.landing_target_type, :landing_target_type) :: 0 | 1 | 2 | 3
  @spec encode(APM.Types.led_control_pattern, :led_control_pattern) :: 0 | 1 | 255
  @spec encode(APM.Types.limit_module, :limit_module) :: 0b1 | 0b10 | 0b100
  @spec encode(APM.Types.limits_state, :limits_state) :: 0 | 1 | 2 | 3 | 4 | 5
  @spec encode(APM.Types.mag_cal_status, :mag_cal_status) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7
  @spec encode(APM.Types.mav_arm_auth_denied_reason, :mav_arm_auth_denied_reason) :: 0 | 1 | 2 | 3 | 4 | 5
  @spec encode(APM.Types.mav_autopilot, :mav_autopilot) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19
  @spec encode(APM.Types.mav_battery_charge_state, :mav_battery_charge_state) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7
  @spec encode(APM.Types.mav_battery_function, :mav_battery_function) :: 0 | 1 | 2 | 3 | 4
  @spec encode(APM.Types.mav_battery_type, :mav_battery_type) :: 0 | 1 | 2 | 3 | 4
  @spec encode(APM.Types.mav_cmd, :mav_cmd) :: 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 30 | 31 | 32 | 33 | 80 | 81 | 82 | 83 | 84 | 85 | 92 | 93 | 94 | 95 | 112 | 113 | 114 | 115 | 159 | 176 | 177 | 178 | 179 | 180 | 181 | 182 | 183 | 184 | 185 | 186 | 189 | 190 | 191 | 192 | 193 | 194 | 195 | 196 | 197 | 198 | 200 | 201 | 202 | 203 | 204 | 205 | 206 | 207 | 208 | 209 | 210 | 211 | 212 | 213 | 214 | 215 | 216 | 217 | 218 | 220 | 221 | 222 | 223 | 224 | 240 | 241 | 242 | 243 | 245 | 246 | 252 | 260 | 300 | 400 | 410 | 500 | 510 | 511 | 512 | 519 | 520 | 521 | 522 | 525 | 526 | 527 | 528 | 529 | 530 | 600 | 601 | 2000 | 2001 | 2003 | 2500 | 2501 | 2502 | 2503 | 2504 | 2505 | 2510 | 2511 | 2520 | 2600 | 2800 | 3000 | 3001 | 4000 | 4001 | 5000 | 5001 | 5002 | 5003 | 5004 | 5100 | 5200 | 30001 | 30002 | 31000 | 31001 | 31002 | 31003 | 31004 | 31005 | 31006 | 31007 | 31008 | 31009 | 31010 | 31011 | 31012 | 31013 | 31014 | 42000 | 42001 | 42002 | 42003 | 42004 | 42005 | 42006 | 42424 | 42425 | 42426 | 42427 | 42428 | 42429 | 42501 | 42502 | 42503 | 42505 | 42600 | 42650 | 42651 | 42700 | 42701 | 43000 | 43001 | 43002
  @spec encode(APM.Types.mav_cmd_ack, :mav_cmd_ack) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8
  @spec encode(APM.Types.mav_cmd_do_aux_function_switch_level, :mav_cmd_do_aux_function_switch_level) :: 0 | 1 | 2
  @spec encode(APM.Types.mav_collision_action, :mav_collision_action) :: 0 | 1 | 2 | 3 | 4 | 5 | 6
  @spec encode(APM.Types.mav_collision_src, :mav_collision_src) :: 0 | 1
  @spec encode(APM.Types.mav_collision_threat_level, :mav_collision_threat_level) :: 0 | 1 | 2
  @spec encode(APM.Types.mav_component, :mav_component) :: 0 | 1 | 25 | 26 | 27 | 28 | 29 | 30 | 31 | 32 | 33 | 34 | 35 | 36 | 37 | 38 | 39 | 40 | 41 | 42 | 43 | 44 | 45 | 46 | 47 | 48 | 49 | 50 | 51 | 52 | 53 | 54 | 55 | 56 | 57 | 58 | 59 | 60 | 61 | 62 | 63 | 64 | 65 | 66 | 67 | 68 | 69 | 70 | 71 | 72 | 73 | 74 | 75 | 76 | 77 | 78 | 79 | 80 | 81 | 82 | 83 | 84 | 85 | 86 | 87 | 88 | 89 | 90 | 91 | 92 | 93 | 94 | 95 | 96 | 97 | 98 | 99 | 100 | 101 | 102 | 103 | 104 | 105 | 140 | 141 | 142 | 143 | 144 | 145 | 146 | 147 | 148 | 149 | 150 | 151 | 152 | 153 | 154 | 155 | 156 | 157 | 158 | 159 | 160 | 171 | 172 | 173 | 174 | 175 | 190 | 191 | 195 | 196 | 197 | 198 | 200 | 201 | 202 | 220 | 221 | 236 | 237 | 238 | 240 | 241 | 242 | 250
  @spec encode(APM.Types.mav_data_stream, :mav_data_stream) :: 0 | 1 | 2 | 3 | 4 | 6 | 10 | 11 | 12
  @spec encode(APM.Types.mav_distance_sensor, :mav_distance_sensor) :: 0 | 1 | 2 | 3 | 4
  @spec encode(APM.Types.mav_do_reposition_flags, :mav_do_reposition_flags) :: 1
  @spec encode(APM.Types.mav_estimator_type, :mav_estimator_type) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8
  @spec encode(APM.Types.mav_frame, :mav_frame) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21
  @spec encode(APM.Types.mav_generator_status_flag, :mav_generator_status_flag) :: 0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000 | 0b1000000000000 | 0b10000000000000 | 0b100000000000000 | 0b1000000000000000 | 0b10000000000000000 | 0b100000000000000000 | 0b1000000000000000000 | 0b10000000000000000000 | 0b100000000000000000000 | 0b1000000000000000000000 | 0b10000000000000000000000
  @spec encode(APM.Types.mav_goto, :mav_goto) :: 0 | 1 | 2 | 3
  @spec encode(APM.Types.mav_landed_state, :mav_landed_state) :: 0 | 1 | 2 | 3 | 4
  @spec encode(APM.Types.mav_mission_result, :mav_mission_result) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15
  @spec encode(APM.Types.mav_mission_type, :mav_mission_type) :: 0 | 1 | 2 | 255
  @spec encode(APM.Types.mav_mode, :mav_mode) :: 0 | 80 | 208 | 64 | 192 | 88 | 216 | 92 | 220 | 66 | 194
  @spec encode(APM.Types.mav_mode_flag, :mav_mode_flag) :: 0b10000000 | 0b1000000 | 0b100000 | 0b10000 | 0b1000 | 0b100 | 0b10 | 0b1
  @spec encode(APM.Types.mav_mode_flag_decode_position, :mav_mode_flag_decode_position) :: 0b10000000 | 0b1000000 | 0b100000 | 0b10000 | 0b1000 | 0b100 | 0b10 | 0b1
  @spec encode(APM.Types.mav_mode_gimbal, :mav_mode_gimbal) :: 0 | 1 | 2 | 3 | 4 | 5 | 6
  @spec encode(APM.Types.mav_mount_mode, :mav_mount_mode) :: 0 | 1 | 2 | 3 | 4 | 5 | 6
  @spec encode(APM.Types.mav_param_type, :mav_param_type) :: 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10
  @spec encode(APM.Types.mav_power_status, :mav_power_status) :: 0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000
  @spec encode(APM.Types.mav_protocol_capability, :mav_protocol_capability) :: 0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000 | 0b1000000000000 | 0b10000000000000 | 0b100000000000000 | 0b1000000000000000 | 0b10000000000000000
  @spec encode(APM.Types.mav_remote_log_data_block_commands, :mav_remote_log_data_block_commands) :: 2147483645 | 2147483646
  @spec encode(APM.Types.mav_remote_log_data_block_statuses, :mav_remote_log_data_block_statuses) :: 0 | 1
  @spec encode(APM.Types.mav_result, :mav_result) :: 0 | 1 | 2 | 3 | 4 | 5
  @spec encode(APM.Types.mav_roi, :mav_roi) :: 0 | 1 | 2 | 3 | 4
  @spec encode(APM.Types.mav_sensor_orientation, :mav_sensor_orientation) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 | 30 | 31 | 32 | 33 | 34 | 35 | 36 | 37 | 38 | 39 | 40 | 100
  @spec encode(APM.Types.mav_severity, :mav_severity) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7
  @spec encode(APM.Types.mav_state, :mav_state) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8
  @spec encode(APM.Types.mav_sys_status_sensor, :mav_sys_status_sensor) :: 0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000 | 0b1000000000000 | 0b10000000000000 | 0b100000000000000 | 0b1000000000000000 | 0b10000000000000000 | 0b100000000000000000 | 0b1000000000000000000 | 0b10000000000000000000 | 0b100000000000000000000 | 0b1000000000000000000000 | 0b10000000000000000000000 | 0b100000000000000000000000 | 0b1000000000000000000000000 | 0b10000000000000000000000000 | 0b100000000000000000000000000 | 0b1000000000000000000000000000 | 0b10000000000000000000000000000 | 0b100000000000000000000000000000 | 0b1000000000000000000000000000000
  @spec encode(APM.Types.mav_type, :mav_type) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 | 30 | 31 | 32 | 33 | 34 | 35
  @spec encode(APM.Types.mav_vtol_state, :mav_vtol_state) :: 0 | 1 | 2 | 3 | 4
  @spec encode(APM.Types.mav_winch_status_flag, :mav_winch_status_flag) :: 0b1 | 0b10 | 0b100 | 0b1000
  @spec encode(APM.Types.mavlink_data_stream_type, :mavlink_data_stream_type) :: 0 | 1 | 2 | 3 | 4 | 5
  @spec encode(APM.Types.motor_test_order, :motor_test_order) :: 0 | 1 | 2
  @spec encode(APM.Types.motor_test_throttle_type, :motor_test_throttle_type) :: 0 | 1 | 2 | 3
  @spec encode(APM.Types.osd_param_config_error, :osd_param_config_error) :: 0 | 1 | 2 | 3
  @spec encode(APM.Types.osd_param_config_type, :osd_param_config_type) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8
  @spec encode(APM.Types.parachute_action, :parachute_action) :: 0 | 1 | 2
  @spec encode(APM.Types.pid_tuning_axis, :pid_tuning_axis) :: 1 | 2 | 3 | 4 | 5 | 6
  @spec encode(APM.Types.plane_mode, :plane_mode) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24
  @spec encode(APM.Types.position_target_typemask, :position_target_typemask) :: 0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000
  @spec encode(APM.Types.precision_land_mode, :precision_land_mode) :: 0 | 1 | 2
  @spec encode(APM.Types.rally_flags, :rally_flags) :: 1 | 2
  @spec encode(APM.Types.rc_type, :rc_type) :: 0 | 1
  @spec encode(APM.Types.rover_mode, :rover_mode) :: 0 | 1 | 3 | 4 | 5 | 6 | 7 | 10 | 11 | 12 | 15 | 16
  @spec encode(APM.Types.rtk_baseline_coordinate_system, :rtk_baseline_coordinate_system) :: 0 | 1
  @spec encode(APM.Types.scripting_cmd, :scripting_cmd) :: 0 | 1
  @spec encode(APM.Types.serial_control_dev, :serial_control_dev) :: 0 | 1 | 2 | 3 | 10 | 100 | 101 | 102 | 103 | 104 | 105 | 106 | 107 | 108 | 109
  @spec encode(APM.Types.serial_control_flag, :serial_control_flag) :: 0b1 | 0b10 | 0b100 | 0b1000 | 0b10000
  @spec encode(APM.Types.speed_type, :speed_type) :: 0 | 1
  @spec encode(APM.Types.storage_status, :storage_status) :: 0 | 1 | 2 | 3
  @spec encode(APM.Types.sub_mode, :sub_mode) :: 0 | 1 | 2 | 3 | 4 | 7 | 9 | 16 | 19
  @spec encode(APM.Types.tracker_mode, :tracker_mode) :: 0 | 1 | 2 | 3 | 10 | 16
  @spec encode(APM.Types.uavcan_node_health, :uavcan_node_health) :: 0 | 1 | 2 | 3
  @spec encode(APM.Types.uavcan_node_mode, :uavcan_node_mode) :: 0 | 1 | 2 | 3 | 7
  @spec encode(APM.Types.uavionix_adsb_emergency_status, :uavionix_adsb_emergency_status) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7
  @spec encode(APM.Types.uavionix_adsb_out_cfg_aircraft_size, :uavionix_adsb_out_cfg_aircraft_size) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15
  @spec encode(APM.Types.uavionix_adsb_out_cfg_gps_offset_lat, :uavionix_adsb_out_cfg_gps_offset_lat) :: 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7
  @spec encode(APM.Types.uavionix_adsb_out_cfg_gps_offset_lon, :uavionix_adsb_out_cfg_gps_offset_lon) :: 0 | 1
  @spec encode(APM.Types.uavionix_adsb_out_dynamic_gps_fix, :uavionix_adsb_out_dynamic_gps_fix) :: 0 | 1 | 2 | 3 | 4 | 5
  @spec encode(APM.Types.uavionix_adsb_out_dynamic_state, :uavionix_adsb_out_dynamic_state) :: 0b1 | 0b10 | 0b100 | 0b1000 | 0b10000
  @spec encode(APM.Types.uavionix_adsb_out_rf_select, :uavionix_adsb_out_rf_select) :: 0 | 1 | 2
  @spec encode(APM.Types.uavionix_adsb_rf_health, :uavionix_adsb_rf_health) :: 0 | 1 | 2 | 16
  @spec encode(APM.Types.utm_data_avail_flags, :utm_data_avail_flags) :: 0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000
  @spec encode(APM.Types.utm_flight_state, :utm_flight_state) :: 1 | 2 | 3 | 16 | 32
  @spec encode(APM.Types.video_stream_status_flags, :video_stream_status_flags) :: 1 | 2
  @spec encode(APM.Types.video_stream_type, :video_stream_type) :: 0 | 1 | 2 | 3
  @spec encode(APM.Types.vtol_transition_heading, :vtol_transition_heading) :: 0 | 1 | 2 | 3 | 4
  @spec encode(APM.Types.winch_actions, :winch_actions) :: 0 | 1 | 2
  def encode(:accelcal_vehicle_pos_level, :accelcal_vehicle_pos), do: 1
  def encode(:accelcal_vehicle_pos_left, :accelcal_vehicle_pos), do: 2
  def encode(:accelcal_vehicle_pos_right, :accelcal_vehicle_pos), do: 3
  def encode(:accelcal_vehicle_pos_nosedown, :accelcal_vehicle_pos), do: 4
  def encode(:accelcal_vehicle_pos_noseup, :accelcal_vehicle_pos), do: 5
  def encode(:accelcal_vehicle_pos_back, :accelcal_vehicle_pos), do: 6
  def encode(:accelcal_vehicle_pos_success, :accelcal_vehicle_pos), do: 16777215
  def encode(:accelcal_vehicle_pos_failed, :accelcal_vehicle_pos), do: 16777216
  def encode(:adsb_altitude_type_pressure_qnh, :adsb_altitude_type), do: 0
  def encode(:adsb_altitude_type_geometric, :adsb_altitude_type), do: 1
  def encode(:adsb_emitter_type_no_info, :adsb_emitter_type), do: 0
  def encode(:adsb_emitter_type_light, :adsb_emitter_type), do: 1
  def encode(:adsb_emitter_type_small, :adsb_emitter_type), do: 2
  def encode(:adsb_emitter_type_large, :adsb_emitter_type), do: 3
  def encode(:adsb_emitter_type_high_vortex_large, :adsb_emitter_type), do: 4
  def encode(:adsb_emitter_type_heavy, :adsb_emitter_type), do: 5
  def encode(:adsb_emitter_type_highly_manuv, :adsb_emitter_type), do: 6
  def encode(:adsb_emitter_type_rotocraft, :adsb_emitter_type), do: 7
  def encode(:adsb_emitter_type_unassigned, :adsb_emitter_type), do: 8
  def encode(:adsb_emitter_type_glider, :adsb_emitter_type), do: 9
  def encode(:adsb_emitter_type_lighter_air, :adsb_emitter_type), do: 10
  def encode(:adsb_emitter_type_parachute, :adsb_emitter_type), do: 11
  def encode(:adsb_emitter_type_ultra_light, :adsb_emitter_type), do: 12
  def encode(:adsb_emitter_type_unassigned2, :adsb_emitter_type), do: 13
  def encode(:adsb_emitter_type_uav, :adsb_emitter_type), do: 14
  def encode(:adsb_emitter_type_space, :adsb_emitter_type), do: 15
  def encode(:adsb_emitter_type_unassgined3, :adsb_emitter_type), do: 16
  def encode(:adsb_emitter_type_emergency_surface, :adsb_emitter_type), do: 17
  def encode(:adsb_emitter_type_service_surface, :adsb_emitter_type), do: 18
  def encode(:adsb_emitter_type_point_obstacle, :adsb_emitter_type), do: 19
  def encode(:adsb_flags_valid_coords, :adsb_flags), do: 1
  def encode(:adsb_flags_valid_altitude, :adsb_flags), do: 2
  def encode(:adsb_flags_valid_heading, :adsb_flags), do: 4
  def encode(:adsb_flags_valid_velocity, :adsb_flags), do: 8
  def encode(:adsb_flags_valid_callsign, :adsb_flags), do: 16
  def encode(:adsb_flags_valid_squawk, :adsb_flags), do: 32
  def encode(:adsb_flags_simulated, :adsb_flags), do: 64
  def encode(:adsb_flags_vertical_velocity_valid, :adsb_flags), do: 128
  def encode(:adsb_flags_baro_valid, :adsb_flags), do: 256
  def encode(:adsb_flags_source_uat, :adsb_flags), do: 32768
  def encode(:ais_flags_position_accuracy, :ais_flags), do: 0b1
  def encode(:ais_flags_valid_cog, :ais_flags), do: 0b10
  def encode(:ais_flags_valid_velocity, :ais_flags), do: 0b100
  def encode(:ais_flags_high_velocity, :ais_flags), do: 0b1000
  def encode(:ais_flags_valid_turn_rate, :ais_flags), do: 0b10000
  def encode(:ais_flags_turn_rate_sign_only, :ais_flags), do: 0b100000
  def encode(:ais_flags_valid_dimensions, :ais_flags), do: 0b1000000
  def encode(:ais_flags_large_bow_dimension, :ais_flags), do: 0b10000000
  def encode(:ais_flags_large_stern_dimension, :ais_flags), do: 0b100000000
  def encode(:ais_flags_large_port_dimension, :ais_flags), do: 0b1000000000
  def encode(:ais_flags_large_starboard_dimension, :ais_flags), do: 0b10000000000
  def encode(:ais_flags_valid_callsign, :ais_flags), do: 0b100000000000
  def encode(:ais_flags_valid_name, :ais_flags), do: 0b1000000000000
  def encode(:under_way, :ais_nav_status), do: 0
  def encode(:ais_nav_anchored, :ais_nav_status), do: 1
  def encode(:ais_nav_un_commanded, :ais_nav_status), do: 2
  def encode(:ais_nav_restricted_manoeuverability, :ais_nav_status), do: 3
  def encode(:ais_nav_draught_constrained, :ais_nav_status), do: 4
  def encode(:ais_nav_moored, :ais_nav_status), do: 5
  def encode(:ais_nav_aground, :ais_nav_status), do: 6
  def encode(:ais_nav_fishing, :ais_nav_status), do: 7
  def encode(:ais_nav_sailing, :ais_nav_status), do: 8
  def encode(:ais_nav_reserved_hsc, :ais_nav_status), do: 9
  def encode(:ais_nav_reserved_wig, :ais_nav_status), do: 10
  def encode(:ais_nav_reserved_1, :ais_nav_status), do: 11
  def encode(:ais_nav_reserved_2, :ais_nav_status), do: 12
  def encode(:ais_nav_reserved_3, :ais_nav_status), do: 13
  def encode(:ais_nav_ais_sart, :ais_nav_status), do: 14
  def encode(:ais_nav_unknown, :ais_nav_status), do: 15
  def encode(:ais_type_unknown, :ais_type), do: 0
  def encode(:ais_type_reserved_1, :ais_type), do: 1
  def encode(:ais_type_reserved_2, :ais_type), do: 2
  def encode(:ais_type_reserved_3, :ais_type), do: 3
  def encode(:ais_type_reserved_4, :ais_type), do: 4
  def encode(:ais_type_reserved_5, :ais_type), do: 5
  def encode(:ais_type_reserved_6, :ais_type), do: 6
  def encode(:ais_type_reserved_7, :ais_type), do: 7
  def encode(:ais_type_reserved_8, :ais_type), do: 8
  def encode(:ais_type_reserved_9, :ais_type), do: 9
  def encode(:ais_type_reserved_10, :ais_type), do: 10
  def encode(:ais_type_reserved_11, :ais_type), do: 11
  def encode(:ais_type_reserved_12, :ais_type), do: 12
  def encode(:ais_type_reserved_13, :ais_type), do: 13
  def encode(:ais_type_reserved_14, :ais_type), do: 14
  def encode(:ais_type_reserved_15, :ais_type), do: 15
  def encode(:ais_type_reserved_16, :ais_type), do: 16
  def encode(:ais_type_reserved_17, :ais_type), do: 17
  def encode(:ais_type_reserved_18, :ais_type), do: 18
  def encode(:ais_type_reserved_19, :ais_type), do: 19
  def encode(:ais_type_wig, :ais_type), do: 20
  def encode(:ais_type_wig_hazardous_a, :ais_type), do: 21
  def encode(:ais_type_wig_hazardous_b, :ais_type), do: 22
  def encode(:ais_type_wig_hazardous_c, :ais_type), do: 23
  def encode(:ais_type_wig_hazardous_d, :ais_type), do: 24
  def encode(:ais_type_wig_reserved_1, :ais_type), do: 25
  def encode(:ais_type_wig_reserved_2, :ais_type), do: 26
  def encode(:ais_type_wig_reserved_3, :ais_type), do: 27
  def encode(:ais_type_wig_reserved_4, :ais_type), do: 28
  def encode(:ais_type_wig_reserved_5, :ais_type), do: 29
  def encode(:ais_type_fishing, :ais_type), do: 30
  def encode(:ais_type_towing, :ais_type), do: 31
  def encode(:ais_type_towing_large, :ais_type), do: 32
  def encode(:ais_type_dredging, :ais_type), do: 33
  def encode(:ais_type_diving, :ais_type), do: 34
  def encode(:ais_type_military, :ais_type), do: 35
  def encode(:ais_type_sailing, :ais_type), do: 36
  def encode(:ais_type_pleasure, :ais_type), do: 37
  def encode(:ais_type_reserved_20, :ais_type), do: 38
  def encode(:ais_type_reserved_21, :ais_type), do: 39
  def encode(:ais_type_hsc, :ais_type), do: 40
  def encode(:ais_type_hsc_hazardous_a, :ais_type), do: 41
  def encode(:ais_type_hsc_hazardous_b, :ais_type), do: 42
  def encode(:ais_type_hsc_hazardous_c, :ais_type), do: 43
  def encode(:ais_type_hsc_hazardous_d, :ais_type), do: 44
  def encode(:ais_type_hsc_reserved_1, :ais_type), do: 45
  def encode(:ais_type_hsc_reserved_2, :ais_type), do: 46
  def encode(:ais_type_hsc_reserved_3, :ais_type), do: 47
  def encode(:ais_type_hsc_reserved_4, :ais_type), do: 48
  def encode(:ais_type_hsc_unknown, :ais_type), do: 49
  def encode(:ais_type_pilot, :ais_type), do: 50
  def encode(:ais_type_sar, :ais_type), do: 51
  def encode(:ais_type_tug, :ais_type), do: 52
  def encode(:ais_type_port_tender, :ais_type), do: 53
  def encode(:ais_type_anti_pollution, :ais_type), do: 54
  def encode(:ais_type_law_enforcement, :ais_type), do: 55
  def encode(:ais_type_spare_local_1, :ais_type), do: 56
  def encode(:ais_type_spare_local_2, :ais_type), do: 57
  def encode(:ais_type_medical_transport, :ais_type), do: 58
  def encode(:ais_type_nonecombatant, :ais_type), do: 59
  def encode(:ais_type_passenger, :ais_type), do: 60
  def encode(:ais_type_passenger_hazardous_a, :ais_type), do: 61
  def encode(:ais_type_passenger_hazardous_b, :ais_type), do: 62
  def encode(:ais_type_ais_type_passenger_hazardous_c, :ais_type), do: 63
  def encode(:ais_type_passenger_hazardous_d, :ais_type), do: 64
  def encode(:ais_type_passenger_reserved_1, :ais_type), do: 65
  def encode(:ais_type_passenger_reserved_2, :ais_type), do: 66
  def encode(:ais_type_passenger_reserved_3, :ais_type), do: 67
  def encode(:ais_type_ais_type_passenger_reserved_4, :ais_type), do: 68
  def encode(:ais_type_passenger_unknown, :ais_type), do: 69
  def encode(:ais_type_cargo, :ais_type), do: 70
  def encode(:ais_type_cargo_hazardous_a, :ais_type), do: 71
  def encode(:ais_type_cargo_hazardous_b, :ais_type), do: 72
  def encode(:ais_type_cargo_hazardous_c, :ais_type), do: 73
  def encode(:ais_type_cargo_hazardous_d, :ais_type), do: 74
  def encode(:ais_type_cargo_reserved_1, :ais_type), do: 75
  def encode(:ais_type_cargo_reserved_2, :ais_type), do: 76
  def encode(:ais_type_cargo_reserved_3, :ais_type), do: 77
  def encode(:ais_type_cargo_reserved_4, :ais_type), do: 78
  def encode(:ais_type_cargo_unknown, :ais_type), do: 79
  def encode(:ais_type_tanker, :ais_type), do: 80
  def encode(:ais_type_tanker_hazardous_a, :ais_type), do: 81
  def encode(:ais_type_tanker_hazardous_b, :ais_type), do: 82
  def encode(:ais_type_tanker_hazardous_c, :ais_type), do: 83
  def encode(:ais_type_tanker_hazardous_d, :ais_type), do: 84
  def encode(:ais_type_tanker_reserved_1, :ais_type), do: 85
  def encode(:ais_type_tanker_reserved_2, :ais_type), do: 86
  def encode(:ais_type_tanker_reserved_3, :ais_type), do: 87
  def encode(:ais_type_tanker_reserved_4, :ais_type), do: 88
  def encode(:ais_type_tanker_unknown, :ais_type), do: 89
  def encode(:ais_type_other, :ais_type), do: 90
  def encode(:ais_type_other_hazardous_a, :ais_type), do: 91
  def encode(:ais_type_other_hazardous_b, :ais_type), do: 92
  def encode(:ais_type_other_hazardous_c, :ais_type), do: 93
  def encode(:ais_type_other_hazardous_d, :ais_type), do: 94
  def encode(:ais_type_other_reserved_1, :ais_type), do: 95
  def encode(:ais_type_other_reserved_2, :ais_type), do: 96
  def encode(:ais_type_other_reserved_3, :ais_type), do: 97
  def encode(:ais_type_other_reserved_4, :ais_type), do: 98
  def encode(:ais_type_other_unknown, :ais_type), do: 99
  def encode(:attitude_target_typemask_body_roll_rate_ignore, :attitude_target_typemask), do: 1
  def encode(:attitude_target_typemask_body_pitch_rate_ignore, :attitude_target_typemask), do: 2
  def encode(:attitude_target_typemask_body_yaw_rate_ignore, :attitude_target_typemask), do: 4
  def encode(:attitude_target_typemask_throttle_ignore, :attitude_target_typemask), do: 64
  def encode(:attitude_target_typemask_attitude_ignore, :attitude_target_typemask), do: 128
  def encode(:camera_cap_flags_capture_video, :camera_cap_flags), do: 0b1
  def encode(:camera_cap_flags_capture_image, :camera_cap_flags), do: 0b10
  def encode(:camera_cap_flags_has_modes, :camera_cap_flags), do: 0b100
  def encode(:camera_cap_flags_can_capture_image_in_video_mode, :camera_cap_flags), do: 0b1000
  def encode(:camera_cap_flags_can_capture_video_in_image_mode, :camera_cap_flags), do: 0b10000
  def encode(:camera_cap_flags_has_image_survey_mode, :camera_cap_flags), do: 0b100000
  def encode(:camera_cap_flags_has_basic_zoom, :camera_cap_flags), do: 0b1000000
  def encode(:camera_cap_flags_has_basic_focus, :camera_cap_flags), do: 0b10000000
  def encode(:camera_cap_flags_has_video_stream, :camera_cap_flags), do: 0b100000000
  def encode(:camera_cap_flags_has_tracking_point, :camera_cap_flags), do: 0b1000000000
  def encode(:camera_cap_flags_has_tracking_rectangle, :camera_cap_flags), do: 0b10000000000
  def encode(:camera_cap_flags_has_tracking_geo_status, :camera_cap_flags), do: 0b100000000000
  def encode(:camera_feedback_photo, :camera_feedback_flags), do: 0
  def encode(:camera_feedback_video, :camera_feedback_flags), do: 1
  def encode(:camera_feedback_badexposure, :camera_feedback_flags), do: 2
  def encode(:camera_feedback_closedloop, :camera_feedback_flags), do: 3
  def encode(:camera_feedback_openloop, :camera_feedback_flags), do: 4
  def encode(:camera_mode_image, :camera_mode), do: 0
  def encode(:camera_mode_video, :camera_mode), do: 1
  def encode(:camera_mode_image_survey, :camera_mode), do: 2
  def encode(:camera_status_type_heartbeat, :camera_status_types), do: 0
  def encode(:camera_status_type_trigger, :camera_status_types), do: 1
  def encode(:camera_status_type_disconnect, :camera_status_types), do: 2
  def encode(:camera_status_type_error, :camera_status_types), do: 3
  def encode(:camera_status_type_lowbatt, :camera_status_types), do: 4
  def encode(:camera_status_type_lowstore, :camera_status_types), do: 5
  def encode(:camera_status_type_lowstorev, :camera_status_types), do: 6
  def encode(:copter_mode_stabilize, :copter_mode), do: 0
  def encode(:copter_mode_acro, :copter_mode), do: 1
  def encode(:copter_mode_alt_hold, :copter_mode), do: 2
  def encode(:copter_mode_auto, :copter_mode), do: 3
  def encode(:copter_mode_guided, :copter_mode), do: 4
  def encode(:copter_mode_loiter, :copter_mode), do: 5
  def encode(:copter_mode_rtl, :copter_mode), do: 6
  def encode(:copter_mode_circle, :copter_mode), do: 7
  def encode(:copter_mode_land, :copter_mode), do: 9
  def encode(:copter_mode_drift, :copter_mode), do: 11
  def encode(:copter_mode_sport, :copter_mode), do: 13
  def encode(:copter_mode_flip, :copter_mode), do: 14
  def encode(:copter_mode_autotune, :copter_mode), do: 15
  def encode(:copter_mode_poshold, :copter_mode), do: 16
  def encode(:copter_mode_brake, :copter_mode), do: 17
  def encode(:copter_mode_throw, :copter_mode), do: 18
  def encode(:copter_mode_avoid_adsb, :copter_mode), do: 19
  def encode(:copter_mode_guided_nogps, :copter_mode), do: 20
  def encode(:copter_mode_smart_rtl, :copter_mode), do: 21
  def encode(:copter_mode_flowhold, :copter_mode), do: 22
  def encode(:copter_mode_follow, :copter_mode), do: 23
  def encode(:copter_mode_zigzag, :copter_mode), do: 24
  def encode(:copter_mode_systemid, :copter_mode), do: 25
  def encode(:copter_mode_autorotate, :copter_mode), do: 26
  def encode(:deepstall_stage_fly_to_landing, :deepstall_stage), do: 0
  def encode(:deepstall_stage_estimate_wind, :deepstall_stage), do: 1
  def encode(:deepstall_stage_wait_for_breakout, :deepstall_stage), do: 2
  def encode(:deepstall_stage_fly_to_arc, :deepstall_stage), do: 3
  def encode(:deepstall_stage_arc, :deepstall_stage), do: 4
  def encode(:deepstall_stage_approach, :deepstall_stage), do: 5
  def encode(:deepstall_stage_land, :deepstall_stage), do: 6
  def encode(:device_op_bustype_i2c, :device_op_bustype), do: 0
  def encode(:device_op_bustype_spi, :device_op_bustype), do: 1
  def encode(:ekf_attitude, :ekf_status_flags), do: 0b1
  def encode(:ekf_velocity_horiz, :ekf_status_flags), do: 0b10
  def encode(:ekf_velocity_vert, :ekf_status_flags), do: 0b100
  def encode(:ekf_pos_horiz_rel, :ekf_status_flags), do: 0b1000
  def encode(:ekf_pos_horiz_abs, :ekf_status_flags), do: 0b10000
  def encode(:ekf_pos_vert_abs, :ekf_status_flags), do: 0b100000
  def encode(:ekf_pos_vert_agl, :ekf_status_flags), do: 0b1000000
  def encode(:ekf_const_pos_mode, :ekf_status_flags), do: 0b10000000
  def encode(:ekf_pred_pos_horiz_rel, :ekf_status_flags), do: 0b100000000
  def encode(:ekf_pred_pos_horiz_abs, :ekf_status_flags), do: 0b1000000000
  def encode(:ekf_uninitialized, :ekf_status_flags), do: 0b10000000000
  def encode(:estimator_attitude, :estimator_status_flags), do: 0b1
  def encode(:estimator_velocity_horiz, :estimator_status_flags), do: 0b10
  def encode(:estimator_velocity_vert, :estimator_status_flags), do: 0b100
  def encode(:estimator_pos_horiz_rel, :estimator_status_flags), do: 0b1000
  def encode(:estimator_pos_horiz_abs, :estimator_status_flags), do: 0b10000
  def encode(:estimator_pos_vert_abs, :estimator_status_flags), do: 0b100000
  def encode(:estimator_pos_vert_agl, :estimator_status_flags), do: 0b1000000
  def encode(:estimator_const_pos_mode, :estimator_status_flags), do: 0b10000000
  def encode(:estimator_pred_pos_horiz_rel, :estimator_status_flags), do: 0b100000000
  def encode(:estimator_pred_pos_horiz_abs, :estimator_status_flags), do: 0b1000000000
  def encode(:estimator_gps_glitch, :estimator_status_flags), do: 0b10000000000
  def encode(:estimator_accel_error, :estimator_status_flags), do: 0b100000000000
  def encode(:fence_action_none, :fence_action), do: 0
  def encode(:fence_action_guided, :fence_action), do: 1
  def encode(:fence_action_report, :fence_action), do: 2
  def encode(:fence_action_guided_thr_pass, :fence_action), do: 3
  def encode(:fence_action_rtl, :fence_action), do: 4
  def encode(:fence_breach_none, :fence_breach), do: 0
  def encode(:fence_breach_minalt, :fence_breach), do: 1
  def encode(:fence_breach_maxalt, :fence_breach), do: 2
  def encode(:fence_breach_boundary, :fence_breach), do: 3
  def encode(:fence_mitigate_unknown, :fence_mitigate), do: 0
  def encode(:fence_mitigate_none, :fence_mitigate), do: 1
  def encode(:fence_mitigate_vel_limit, :fence_mitigate), do: 2
  def encode(:firmware_version_type_dev, :firmware_version_type), do: 0
  def encode(:firmware_version_type_alpha, :firmware_version_type), do: 64
  def encode(:firmware_version_type_beta, :firmware_version_type), do: 128
  def encode(:firmware_version_type_rc, :firmware_version_type), do: 192
  def encode(:firmware_version_type_official, :firmware_version_type), do: 255
  def encode(:gimbal_axis_yaw, :gimbal_axis), do: 0
  def encode(:gimbal_axis_pitch, :gimbal_axis), do: 1
  def encode(:gimbal_axis_roll, :gimbal_axis), do: 2
  def encode(:gimbal_axis_calibration_required_unknown, :gimbal_axis_calibration_required), do: 0
  def encode(:gimbal_axis_calibration_required_true, :gimbal_axis_calibration_required), do: 1
  def encode(:gimbal_axis_calibration_required_false, :gimbal_axis_calibration_required), do: 2
  def encode(:gimbal_axis_calibration_status_in_progress, :gimbal_axis_calibration_status), do: 0
  def encode(:gimbal_axis_calibration_status_succeeded, :gimbal_axis_calibration_status), do: 1
  def encode(:gimbal_axis_calibration_status_failed, :gimbal_axis_calibration_status), do: 2
  def encode(:gopro_burst_rate_3_in_1_second, :gopro_burst_rate), do: 0
  def encode(:gopro_burst_rate_5_in_1_second, :gopro_burst_rate), do: 1
  def encode(:gopro_burst_rate_10_in_1_second, :gopro_burst_rate), do: 2
  def encode(:gopro_burst_rate_10_in_2_second, :gopro_burst_rate), do: 3
  def encode(:gopro_burst_rate_10_in_3_second, :gopro_burst_rate), do: 4
  def encode(:gopro_burst_rate_30_in_1_second, :gopro_burst_rate), do: 5
  def encode(:gopro_burst_rate_30_in_2_second, :gopro_burst_rate), do: 6
  def encode(:gopro_burst_rate_30_in_3_second, :gopro_burst_rate), do: 7
  def encode(:gopro_burst_rate_30_in_6_second, :gopro_burst_rate), do: 8
  def encode(:gopro_capture_mode_video, :gopro_capture_mode), do: 0
  def encode(:gopro_capture_mode_photo, :gopro_capture_mode), do: 1
  def encode(:gopro_capture_mode_burst, :gopro_capture_mode), do: 2
  def encode(:gopro_capture_mode_time_lapse, :gopro_capture_mode), do: 3
  def encode(:gopro_capture_mode_multi_shot, :gopro_capture_mode), do: 4
  def encode(:gopro_capture_mode_playback, :gopro_capture_mode), do: 5
  def encode(:gopro_capture_mode_setup, :gopro_capture_mode), do: 6
  def encode(:gopro_capture_mode_unknown, :gopro_capture_mode), do: 255
  def encode(:gopro_charging_disabled, :gopro_charging), do: 0
  def encode(:gopro_charging_enabled, :gopro_charging), do: 1
  def encode(:gopro_command_power, :gopro_command), do: 0
  def encode(:gopro_command_capture_mode, :gopro_command), do: 1
  def encode(:gopro_command_shutter, :gopro_command), do: 2
  def encode(:gopro_command_battery, :gopro_command), do: 3
  def encode(:gopro_command_model, :gopro_command), do: 4
  def encode(:gopro_command_video_settings, :gopro_command), do: 5
  def encode(:gopro_command_low_light, :gopro_command), do: 6
  def encode(:gopro_command_photo_resolution, :gopro_command), do: 7
  def encode(:gopro_command_photo_burst_rate, :gopro_command), do: 8
  def encode(:gopro_command_protune, :gopro_command), do: 9
  def encode(:gopro_command_protune_white_balance, :gopro_command), do: 10
  def encode(:gopro_command_protune_colour, :gopro_command), do: 11
  def encode(:gopro_command_protune_gain, :gopro_command), do: 12
  def encode(:gopro_command_protune_sharpness, :gopro_command), do: 13
  def encode(:gopro_command_protune_exposure, :gopro_command), do: 14
  def encode(:gopro_command_time, :gopro_command), do: 15
  def encode(:gopro_command_charging, :gopro_command), do: 16
  def encode(:gopro_field_of_view_wide, :gopro_field_of_view), do: 0
  def encode(:gopro_field_of_view_medium, :gopro_field_of_view), do: 1
  def encode(:gopro_field_of_view_narrow, :gopro_field_of_view), do: 2
  def encode(:gopro_frame_rate_12, :gopro_frame_rate), do: 0
  def encode(:gopro_frame_rate_15, :gopro_frame_rate), do: 1
  def encode(:gopro_frame_rate_24, :gopro_frame_rate), do: 2
  def encode(:gopro_frame_rate_25, :gopro_frame_rate), do: 3
  def encode(:gopro_frame_rate_30, :gopro_frame_rate), do: 4
  def encode(:gopro_frame_rate_48, :gopro_frame_rate), do: 5
  def encode(:gopro_frame_rate_50, :gopro_frame_rate), do: 6
  def encode(:gopro_frame_rate_60, :gopro_frame_rate), do: 7
  def encode(:gopro_frame_rate_80, :gopro_frame_rate), do: 8
  def encode(:gopro_frame_rate_90, :gopro_frame_rate), do: 9
  def encode(:gopro_frame_rate_100, :gopro_frame_rate), do: 10
  def encode(:gopro_frame_rate_120, :gopro_frame_rate), do: 11
  def encode(:gopro_frame_rate_240, :gopro_frame_rate), do: 12
  def encode(:gopro_frame_rate_12_5, :gopro_frame_rate), do: 13
  def encode(:gopro_flag_recording, :gopro_heartbeat_flags), do: 1
  def encode(:gopro_heartbeat_status_disconnected, :gopro_heartbeat_status), do: 0
  def encode(:gopro_heartbeat_status_incompatible, :gopro_heartbeat_status), do: 1
  def encode(:gopro_heartbeat_status_connected, :gopro_heartbeat_status), do: 2
  def encode(:gopro_heartbeat_status_error, :gopro_heartbeat_status), do: 3
  def encode(:gopro_model_unknown, :gopro_model), do: 0
  def encode(:gopro_model_hero_3_plus_silver, :gopro_model), do: 1
  def encode(:gopro_model_hero_3_plus_black, :gopro_model), do: 2
  def encode(:gopro_model_hero_4_silver, :gopro_model), do: 3
  def encode(:gopro_model_hero_4_black, :gopro_model), do: 4
  def encode(:gopro_photo_resolution_5mp_medium, :gopro_photo_resolution), do: 0
  def encode(:gopro_photo_resolution_7mp_medium, :gopro_photo_resolution), do: 1
  def encode(:gopro_photo_resolution_7mp_wide, :gopro_photo_resolution), do: 2
  def encode(:gopro_photo_resolution_10mp_wide, :gopro_photo_resolution), do: 3
  def encode(:gopro_photo_resolution_12mp_wide, :gopro_photo_resolution), do: 4
  def encode(:gopro_protune_colour_standard, :gopro_protune_colour), do: 0
  def encode(:gopro_protune_colour_neutral, :gopro_protune_colour), do: 1
  def encode(:gopro_protune_exposure_neg_5_0, :gopro_protune_exposure), do: 0
  def encode(:gopro_protune_exposure_neg_4_5, :gopro_protune_exposure), do: 1
  def encode(:gopro_protune_exposure_neg_4_0, :gopro_protune_exposure), do: 2
  def encode(:gopro_protune_exposure_neg_3_5, :gopro_protune_exposure), do: 3
  def encode(:gopro_protune_exposure_neg_3_0, :gopro_protune_exposure), do: 4
  def encode(:gopro_protune_exposure_neg_2_5, :gopro_protune_exposure), do: 5
  def encode(:gopro_protune_exposure_neg_2_0, :gopro_protune_exposure), do: 6
  def encode(:gopro_protune_exposure_neg_1_5, :gopro_protune_exposure), do: 7
  def encode(:gopro_protune_exposure_neg_1_0, :gopro_protune_exposure), do: 8
  def encode(:gopro_protune_exposure_neg_0_5, :gopro_protune_exposure), do: 9
  def encode(:gopro_protune_exposure_zero, :gopro_protune_exposure), do: 10
  def encode(:gopro_protune_exposure_pos_0_5, :gopro_protune_exposure), do: 11
  def encode(:gopro_protune_exposure_pos_1_0, :gopro_protune_exposure), do: 12
  def encode(:gopro_protune_exposure_pos_1_5, :gopro_protune_exposure), do: 13
  def encode(:gopro_protune_exposure_pos_2_0, :gopro_protune_exposure), do: 14
  def encode(:gopro_protune_exposure_pos_2_5, :gopro_protune_exposure), do: 15
  def encode(:gopro_protune_exposure_pos_3_0, :gopro_protune_exposure), do: 16
  def encode(:gopro_protune_exposure_pos_3_5, :gopro_protune_exposure), do: 17
  def encode(:gopro_protune_exposure_pos_4_0, :gopro_protune_exposure), do: 18
  def encode(:gopro_protune_exposure_pos_4_5, :gopro_protune_exposure), do: 19
  def encode(:gopro_protune_exposure_pos_5_0, :gopro_protune_exposure), do: 20
  def encode(:gopro_protune_gain_400, :gopro_protune_gain), do: 0
  def encode(:gopro_protune_gain_800, :gopro_protune_gain), do: 1
  def encode(:gopro_protune_gain_1600, :gopro_protune_gain), do: 2
  def encode(:gopro_protune_gain_3200, :gopro_protune_gain), do: 3
  def encode(:gopro_protune_gain_6400, :gopro_protune_gain), do: 4
  def encode(:gopro_protune_sharpness_low, :gopro_protune_sharpness), do: 0
  def encode(:gopro_protune_sharpness_medium, :gopro_protune_sharpness), do: 1
  def encode(:gopro_protune_sharpness_high, :gopro_protune_sharpness), do: 2
  def encode(:gopro_protune_white_balance_auto, :gopro_protune_white_balance), do: 0
  def encode(:gopro_protune_white_balance_3000k, :gopro_protune_white_balance), do: 1
  def encode(:gopro_protune_white_balance_5500k, :gopro_protune_white_balance), do: 2
  def encode(:gopro_protune_white_balance_6500k, :gopro_protune_white_balance), do: 3
  def encode(:gopro_protune_white_balance_raw, :gopro_protune_white_balance), do: 4
  def encode(:gopro_request_success, :gopro_request_status), do: 0
  def encode(:gopro_request_failed, :gopro_request_status), do: 1
  def encode(:gopro_resolution_480p, :gopro_resolution), do: 0
  def encode(:gopro_resolution_720p, :gopro_resolution), do: 1
  def encode(:gopro_resolution_960p, :gopro_resolution), do: 2
  def encode(:gopro_resolution_1080p, :gopro_resolution), do: 3
  def encode(:gopro_resolution_1440p, :gopro_resolution), do: 4
  def encode(:gopro_resolution_2_7k_17_9, :gopro_resolution), do: 5
  def encode(:gopro_resolution_2_7k_16_9, :gopro_resolution), do: 6
  def encode(:gopro_resolution_2_7k_4_3, :gopro_resolution), do: 7
  def encode(:gopro_resolution_4k_16_9, :gopro_resolution), do: 8
  def encode(:gopro_resolution_4k_17_9, :gopro_resolution), do: 9
  def encode(:gopro_resolution_720p_superview, :gopro_resolution), do: 10
  def encode(:gopro_resolution_1080p_superview, :gopro_resolution), do: 11
  def encode(:gopro_resolution_2_7k_superview, :gopro_resolution), do: 12
  def encode(:gopro_resolution_4k_superview, :gopro_resolution), do: 13
  def encode(:gopro_video_settings_tv_mode, :gopro_video_settings_flags), do: 1
  def encode(:gps_fix_type_no_gps, :gps_fix_type), do: 0
  def encode(:gps_fix_type_no_fix, :gps_fix_type), do: 1
  def encode(:gps_fix_type_2d_fix, :gps_fix_type), do: 2
  def encode(:gps_fix_type_3d_fix, :gps_fix_type), do: 3
  def encode(:gps_fix_type_dgps, :gps_fix_type), do: 4
  def encode(:gps_fix_type_rtk_float, :gps_fix_type), do: 5
  def encode(:gps_fix_type_rtk_fixed, :gps_fix_type), do: 6
  def encode(:gps_fix_type_static, :gps_fix_type), do: 7
  def encode(:gps_fix_type_ppp, :gps_fix_type), do: 8
  def encode(:gps_input_ignore_flag_alt, :gps_input_ignore_flags), do: 0b1
  def encode(:gps_input_ignore_flag_hdop, :gps_input_ignore_flags), do: 0b10
  def encode(:gps_input_ignore_flag_vdop, :gps_input_ignore_flags), do: 0b100
  def encode(:gps_input_ignore_flag_vel_horiz, :gps_input_ignore_flags), do: 0b1000
  def encode(:gps_input_ignore_flag_vel_vert, :gps_input_ignore_flags), do: 0b10000
  def encode(:gps_input_ignore_flag_speed_accuracy, :gps_input_ignore_flags), do: 0b100000
  def encode(:gps_input_ignore_flag_horizontal_accuracy, :gps_input_ignore_flags), do: 0b1000000
  def encode(:gps_input_ignore_flag_vertical_accuracy, :gps_input_ignore_flags), do: 0b10000000
  def encode(:gripper_action_release, :gripper_actions), do: 0
  def encode(:gripper_action_grab, :gripper_actions), do: 1
  def encode(:heading_type_course_over_ground, :heading_type), do: 0
  def encode(:heading_type_heading, :heading_type), do: 1
  def encode(:hl_failure_flag_gps, :hl_failure_flag), do: 0b1
  def encode(:hl_failure_flag_differential_pressure, :hl_failure_flag), do: 0b10
  def encode(:hl_failure_flag_absolute_pressure, :hl_failure_flag), do: 0b100
  def encode(:hl_failure_flag_3d_accel, :hl_failure_flag), do: 0b1000
  def encode(:hl_failure_flag_3d_gyro, :hl_failure_flag), do: 0b10000
  def encode(:hl_failure_flag_3d_mag, :hl_failure_flag), do: 0b100000
  def encode(:hl_failure_flag_terrain, :hl_failure_flag), do: 0b1000000
  def encode(:hl_failure_flag_battery, :hl_failure_flag), do: 0b10000000
  def encode(:hl_failure_flag_rc_receiver, :hl_failure_flag), do: 0b100000000
  def encode(:hl_failure_flag_offboard_link, :hl_failure_flag), do: 0b1000000000
  def encode(:hl_failure_flag_engine, :hl_failure_flag), do: 0b10000000000
  def encode(:hl_failure_flag_geofence, :hl_failure_flag), do: 0b100000000000
  def encode(:hl_failure_flag_estimator, :hl_failure_flag), do: 0b1000000000000
  def encode(:hl_failure_flag_mission, :hl_failure_flag), do: 0b10000000000000
  def encode(:icarous_fms_state_idle, :icarous_fms_state), do: 0
  def encode(:icarous_fms_state_takeoff, :icarous_fms_state), do: 1
  def encode(:icarous_fms_state_climb, :icarous_fms_state), do: 2
  def encode(:icarous_fms_state_cruise, :icarous_fms_state), do: 3
  def encode(:icarous_fms_state_approach, :icarous_fms_state), do: 4
  def encode(:icarous_fms_state_land, :icarous_fms_state), do: 5
  def encode(:icarous_track_band_type_none, :icarous_track_band_types), do: 0
  def encode(:icarous_track_band_type_near, :icarous_track_band_types), do: 1
  def encode(:icarous_track_band_type_recovery, :icarous_track_band_types), do: 2
  def encode(:landing_target_type_light_beacon, :landing_target_type), do: 0
  def encode(:landing_target_type_radio_beacon, :landing_target_type), do: 1
  def encode(:landing_target_type_vision_fiducial, :landing_target_type), do: 2
  def encode(:landing_target_type_vision_other, :landing_target_type), do: 3
  def encode(:led_control_pattern_off, :led_control_pattern), do: 0
  def encode(:led_control_pattern_firmwareupdate, :led_control_pattern), do: 1
  def encode(:led_control_pattern_custom, :led_control_pattern), do: 255
  def encode(:limit_gpslock, :limit_module), do: 0b1
  def encode(:limit_geofence, :limit_module), do: 0b10
  def encode(:limit_altitude, :limit_module), do: 0b100
  def encode(:limits_init, :limits_state), do: 0
  def encode(:limits_disabled, :limits_state), do: 1
  def encode(:limits_enabled, :limits_state), do: 2
  def encode(:limits_triggered, :limits_state), do: 3
  def encode(:limits_recovering, :limits_state), do: 4
  def encode(:limits_recovered, :limits_state), do: 5
  def encode(:mag_cal_not_started, :mag_cal_status), do: 0
  def encode(:mag_cal_waiting_to_start, :mag_cal_status), do: 1
  def encode(:mag_cal_running_step_one, :mag_cal_status), do: 2
  def encode(:mag_cal_running_step_two, :mag_cal_status), do: 3
  def encode(:mag_cal_success, :mag_cal_status), do: 4
  def encode(:mag_cal_failed, :mag_cal_status), do: 5
  def encode(:mag_cal_bad_orientation, :mag_cal_status), do: 6
  def encode(:mag_cal_bad_radius, :mag_cal_status), do: 7
  def encode(:mav_arm_auth_denied_reason_generic, :mav_arm_auth_denied_reason), do: 0
  def encode(:mav_arm_auth_denied_reason_none, :mav_arm_auth_denied_reason), do: 1
  def encode(:mav_arm_auth_denied_reason_invalid_waypoint, :mav_arm_auth_denied_reason), do: 2
  def encode(:mav_arm_auth_denied_reason_timeout, :mav_arm_auth_denied_reason), do: 3
  def encode(:mav_arm_auth_denied_reason_airspace_in_use, :mav_arm_auth_denied_reason), do: 4
  def encode(:mav_arm_auth_denied_reason_bad_weather, :mav_arm_auth_denied_reason), do: 5
  def encode(:mav_autopilot_generic, :mav_autopilot), do: 0
  def encode(:mav_autopilot_reserved, :mav_autopilot), do: 1
  def encode(:mav_autopilot_slugs, :mav_autopilot), do: 2
  def encode(:mav_autopilot_ardupilotmega, :mav_autopilot), do: 3
  def encode(:mav_autopilot_openpilot, :mav_autopilot), do: 4
  def encode(:mav_autopilot_generic_waypoints_only, :mav_autopilot), do: 5
  def encode(:mav_autopilot_generic_waypoints_and_simple_navigation_only, :mav_autopilot), do: 6
  def encode(:mav_autopilot_generic_mission_full, :mav_autopilot), do: 7
  def encode(:mav_autopilot_invalid, :mav_autopilot), do: 8
  def encode(:mav_autopilot_ppz, :mav_autopilot), do: 9
  def encode(:mav_autopilot_udb, :mav_autopilot), do: 10
  def encode(:mav_autopilot_fp, :mav_autopilot), do: 11
  def encode(:mav_autopilot_px4, :mav_autopilot), do: 12
  def encode(:mav_autopilot_smaccmpilot, :mav_autopilot), do: 13
  def encode(:mav_autopilot_autoquad, :mav_autopilot), do: 14
  def encode(:mav_autopilot_armazila, :mav_autopilot), do: 15
  def encode(:mav_autopilot_aerob, :mav_autopilot), do: 16
  def encode(:mav_autopilot_asluav, :mav_autopilot), do: 17
  def encode(:mav_autopilot_smartap, :mav_autopilot), do: 18
  def encode(:mav_autopilot_airrails, :mav_autopilot), do: 19
  def encode(:mav_battery_charge_state_undefined, :mav_battery_charge_state), do: 0
  def encode(:mav_battery_charge_state_ok, :mav_battery_charge_state), do: 1
  def encode(:mav_battery_charge_state_low, :mav_battery_charge_state), do: 2
  def encode(:mav_battery_charge_state_critical, :mav_battery_charge_state), do: 3
  def encode(:mav_battery_charge_state_emergency, :mav_battery_charge_state), do: 4
  def encode(:mav_battery_charge_state_failed, :mav_battery_charge_state), do: 5
  def encode(:mav_battery_charge_state_unhealthy, :mav_battery_charge_state), do: 6
  def encode(:mav_battery_charge_state_charging, :mav_battery_charge_state), do: 7
  def encode(:mav_battery_function_unknown, :mav_battery_function), do: 0
  def encode(:mav_battery_function_all, :mav_battery_function), do: 1
  def encode(:mav_battery_function_propulsion, :mav_battery_function), do: 2
  def encode(:mav_battery_function_avionics, :mav_battery_function), do: 3
  def encode(:mav_battery_type_payload, :mav_battery_function), do: 4
  def encode(:mav_battery_type_unknown, :mav_battery_type), do: 0
  def encode(:mav_battery_type_lipo, :mav_battery_type), do: 1
  def encode(:mav_battery_type_life, :mav_battery_type), do: 2
  def encode(:mav_battery_type_lion, :mav_battery_type), do: 3
  def encode(:mav_battery_type_nimh, :mav_battery_type), do: 4
  def encode(:mav_cmd_nav_waypoint, :mav_cmd), do: 16
  def encode(:mav_cmd_nav_loiter_unlim, :mav_cmd), do: 17
  def encode(:mav_cmd_nav_loiter_turns, :mav_cmd), do: 18
  def encode(:mav_cmd_nav_loiter_time, :mav_cmd), do: 19
  def encode(:mav_cmd_nav_return_to_launch, :mav_cmd), do: 20
  def encode(:mav_cmd_nav_land, :mav_cmd), do: 21
  def encode(:mav_cmd_nav_takeoff, :mav_cmd), do: 22
  def encode(:mav_cmd_nav_land_local, :mav_cmd), do: 23
  def encode(:mav_cmd_nav_takeoff_local, :mav_cmd), do: 24
  def encode(:mav_cmd_nav_follow, :mav_cmd), do: 25
  def encode(:mav_cmd_nav_continue_and_change_alt, :mav_cmd), do: 30
  def encode(:mav_cmd_nav_loiter_to_alt, :mav_cmd), do: 31
  def encode(:mav_cmd_do_follow, :mav_cmd), do: 32
  def encode(:mav_cmd_do_follow_reposition, :mav_cmd), do: 33
  def encode(:mav_cmd_nav_roi, :mav_cmd), do: 80
  def encode(:mav_cmd_nav_pathplanning, :mav_cmd), do: 81
  def encode(:mav_cmd_nav_spline_waypoint, :mav_cmd), do: 82
  def encode(:mav_cmd_nav_altitude_wait, :mav_cmd), do: 83
  def encode(:mav_cmd_nav_vtol_takeoff, :mav_cmd), do: 84
  def encode(:mav_cmd_nav_vtol_land, :mav_cmd), do: 85
  def encode(:mav_cmd_nav_guided_enable, :mav_cmd), do: 92
  def encode(:mav_cmd_nav_delay, :mav_cmd), do: 93
  def encode(:mav_cmd_nav_payload_place, :mav_cmd), do: 94
  def encode(:mav_cmd_nav_last, :mav_cmd), do: 95
  def encode(:mav_cmd_condition_delay, :mav_cmd), do: 112
  def encode(:mav_cmd_condition_change_alt, :mav_cmd), do: 113
  def encode(:mav_cmd_condition_distance, :mav_cmd), do: 114
  def encode(:mav_cmd_condition_yaw, :mav_cmd), do: 115
  def encode(:mav_cmd_condition_last, :mav_cmd), do: 159
  def encode(:mav_cmd_do_set_mode, :mav_cmd), do: 176
  def encode(:mav_cmd_do_jump, :mav_cmd), do: 177
  def encode(:mav_cmd_do_change_speed, :mav_cmd), do: 178
  def encode(:mav_cmd_do_set_home, :mav_cmd), do: 179
  def encode(:mav_cmd_do_set_parameter, :mav_cmd), do: 180
  def encode(:mav_cmd_do_set_relay, :mav_cmd), do: 181
  def encode(:mav_cmd_do_repeat_relay, :mav_cmd), do: 182
  def encode(:mav_cmd_do_set_servo, :mav_cmd), do: 183
  def encode(:mav_cmd_do_repeat_servo, :mav_cmd), do: 184
  def encode(:mav_cmd_do_flighttermination, :mav_cmd), do: 185
  def encode(:mav_cmd_do_change_altitude, :mav_cmd), do: 186
  def encode(:mav_cmd_do_land_start, :mav_cmd), do: 189
  def encode(:mav_cmd_do_rally_land, :mav_cmd), do: 190
  def encode(:mav_cmd_do_go_around, :mav_cmd), do: 191
  def encode(:mav_cmd_do_reposition, :mav_cmd), do: 192
  def encode(:mav_cmd_do_pause_continue, :mav_cmd), do: 193
  def encode(:mav_cmd_do_set_reverse, :mav_cmd), do: 194
  def encode(:mav_cmd_do_set_roi_location, :mav_cmd), do: 195
  def encode(:mav_cmd_do_set_roi_wpnext_offset, :mav_cmd), do: 196
  def encode(:mav_cmd_do_set_roi_none, :mav_cmd), do: 197
  def encode(:mav_cmd_do_set_roi_sysid, :mav_cmd), do: 198
  def encode(:mav_cmd_do_control_video, :mav_cmd), do: 200
  def encode(:mav_cmd_do_set_roi, :mav_cmd), do: 201
  def encode(:mav_cmd_do_digicam_configure, :mav_cmd), do: 202
  def encode(:mav_cmd_do_digicam_control, :mav_cmd), do: 203
  def encode(:mav_cmd_do_mount_configure, :mav_cmd), do: 204
  def encode(:mav_cmd_do_mount_control, :mav_cmd), do: 205
  def encode(:mav_cmd_do_set_cam_trigg_dist, :mav_cmd), do: 206
  def encode(:mav_cmd_do_fence_enable, :mav_cmd), do: 207
  def encode(:mav_cmd_do_parachute, :mav_cmd), do: 208
  def encode(:mav_cmd_do_motor_test, :mav_cmd), do: 209
  def encode(:mav_cmd_do_inverted_flight, :mav_cmd), do: 210
  def encode(:mav_cmd_do_gripper, :mav_cmd), do: 211
  def encode(:mav_cmd_do_autotune_enable, :mav_cmd), do: 212
  def encode(:mav_cmd_nav_set_yaw_speed, :mav_cmd), do: 213
  def encode(:mav_cmd_do_set_cam_trigg_interval, :mav_cmd), do: 214
  def encode(:mav_cmd_do_set_resume_repeat_dist, :mav_cmd), do: 215
  def encode(:mav_cmd_do_sprayer, :mav_cmd), do: 216
  def encode(:mav_cmd_do_send_script_message, :mav_cmd), do: 217
  def encode(:mav_cmd_do_aux_function, :mav_cmd), do: 218
  def encode(:mav_cmd_do_mount_control_quat, :mav_cmd), do: 220
  def encode(:mav_cmd_do_guided_master, :mav_cmd), do: 221
  def encode(:mav_cmd_do_guided_limits, :mav_cmd), do: 222
  def encode(:mav_cmd_do_engine_control, :mav_cmd), do: 223
  def encode(:mav_cmd_do_set_mission_current, :mav_cmd), do: 224
  def encode(:mav_cmd_do_last, :mav_cmd), do: 240
  def encode(:mav_cmd_preflight_calibration, :mav_cmd), do: 241
  def encode(:mav_cmd_preflight_set_sensor_offsets, :mav_cmd), do: 242
  def encode(:mav_cmd_preflight_uavcan, :mav_cmd), do: 243
  def encode(:mav_cmd_preflight_storage, :mav_cmd), do: 245
  def encode(:mav_cmd_preflight_reboot_shutdown, :mav_cmd), do: 246
  def encode(:mav_cmd_override_goto, :mav_cmd), do: 252
  def encode(:mav_cmd_oblique_survey, :mav_cmd), do: 260
  def encode(:mav_cmd_mission_start, :mav_cmd), do: 300
  def encode(:mav_cmd_component_arm_disarm, :mav_cmd), do: 400
  def encode(:mav_cmd_get_home_position, :mav_cmd), do: 410
  def encode(:mav_cmd_start_rx_pair, :mav_cmd), do: 500
  def encode(:mav_cmd_get_message_interval, :mav_cmd), do: 510
  def encode(:mav_cmd_set_message_interval, :mav_cmd), do: 511
  def encode(:mav_cmd_request_message, :mav_cmd), do: 512
  def encode(:mav_cmd_request_protocol_version, :mav_cmd), do: 519
  def encode(:mav_cmd_request_autopilot_capabilities, :mav_cmd), do: 520
  def encode(:mav_cmd_request_camera_information, :mav_cmd), do: 521
  def encode(:mav_cmd_request_camera_settings, :mav_cmd), do: 522
  def encode(:mav_cmd_request_storage_information, :mav_cmd), do: 525
  def encode(:mav_cmd_storage_format, :mav_cmd), do: 526
  def encode(:mav_cmd_request_camera_capture_status, :mav_cmd), do: 527
  def encode(:mav_cmd_request_flight_information, :mav_cmd), do: 528
  def encode(:mav_cmd_reset_camera_settings, :mav_cmd), do: 529
  def encode(:mav_cmd_set_camera_mode, :mav_cmd), do: 530
  def encode(:mav_cmd_jump_tag, :mav_cmd), do: 600
  def encode(:mav_cmd_do_jump_tag, :mav_cmd), do: 601
  def encode(:mav_cmd_image_start_capture, :mav_cmd), do: 2000
  def encode(:mav_cmd_image_stop_capture, :mav_cmd), do: 2001
  def encode(:mav_cmd_do_trigger_control, :mav_cmd), do: 2003
  def encode(:mav_cmd_video_start_capture, :mav_cmd), do: 2500
  def encode(:mav_cmd_video_stop_capture, :mav_cmd), do: 2501
  def encode(:mav_cmd_video_start_streaming, :mav_cmd), do: 2502
  def encode(:mav_cmd_video_stop_streaming, :mav_cmd), do: 2503
  def encode(:mav_cmd_request_video_stream_information, :mav_cmd), do: 2504
  def encode(:mav_cmd_request_video_stream_status, :mav_cmd), do: 2505
  def encode(:mav_cmd_logging_start, :mav_cmd), do: 2510
  def encode(:mav_cmd_logging_stop, :mav_cmd), do: 2511
  def encode(:mav_cmd_airframe_configuration, :mav_cmd), do: 2520
  def encode(:mav_cmd_control_high_latency, :mav_cmd), do: 2600
  def encode(:mav_cmd_panorama_create, :mav_cmd), do: 2800
  def encode(:mav_cmd_do_vtol_transition, :mav_cmd), do: 3000
  def encode(:mav_cmd_arm_authorization_request, :mav_cmd), do: 3001
  def encode(:mav_cmd_set_guided_submode_standard, :mav_cmd), do: 4000
  def encode(:mav_cmd_set_guided_submode_circle, :mav_cmd), do: 4001
  def encode(:mav_cmd_nav_fence_return_point, :mav_cmd), do: 5000
  def encode(:mav_cmd_nav_fence_polygon_vertex_inclusion, :mav_cmd), do: 5001
  def encode(:mav_cmd_nav_fence_polygon_vertex_exclusion, :mav_cmd), do: 5002
  def encode(:mav_cmd_nav_fence_circle_inclusion, :mav_cmd), do: 5003
  def encode(:mav_cmd_nav_fence_circle_exclusion, :mav_cmd), do: 5004
  def encode(:mav_cmd_nav_rally_point, :mav_cmd), do: 5100
  def encode(:mav_cmd_uavcan_get_node_info, :mav_cmd), do: 5200
  def encode(:mav_cmd_payload_prepare_deploy, :mav_cmd), do: 30001
  def encode(:mav_cmd_payload_control_deploy, :mav_cmd), do: 30002
  def encode(:mav_cmd_waypoint_user_1, :mav_cmd), do: 31000
  def encode(:mav_cmd_waypoint_user_2, :mav_cmd), do: 31001
  def encode(:mav_cmd_waypoint_user_3, :mav_cmd), do: 31002
  def encode(:mav_cmd_waypoint_user_4, :mav_cmd), do: 31003
  def encode(:mav_cmd_waypoint_user_5, :mav_cmd), do: 31004
  def encode(:mav_cmd_spatial_user_1, :mav_cmd), do: 31005
  def encode(:mav_cmd_spatial_user_2, :mav_cmd), do: 31006
  def encode(:mav_cmd_spatial_user_3, :mav_cmd), do: 31007
  def encode(:mav_cmd_spatial_user_4, :mav_cmd), do: 31008
  def encode(:mav_cmd_spatial_user_5, :mav_cmd), do: 31009
  def encode(:mav_cmd_user_1, :mav_cmd), do: 31010
  def encode(:mav_cmd_user_2, :mav_cmd), do: 31011
  def encode(:mav_cmd_user_3, :mav_cmd), do: 31012
  def encode(:mav_cmd_user_4, :mav_cmd), do: 31013
  def encode(:mav_cmd_user_5, :mav_cmd), do: 31014
  def encode(:mav_cmd_power_off_initiated, :mav_cmd), do: 42000
  def encode(:mav_cmd_solo_btn_fly_click, :mav_cmd), do: 42001
  def encode(:mav_cmd_solo_btn_fly_hold, :mav_cmd), do: 42002
  def encode(:mav_cmd_solo_btn_pause_click, :mav_cmd), do: 42003
  def encode(:mav_cmd_fixed_mag_cal, :mav_cmd), do: 42004
  def encode(:mav_cmd_fixed_mag_cal_field, :mav_cmd), do: 42005
  def encode(:mav_cmd_fixed_mag_cal_yaw, :mav_cmd), do: 42006
  def encode(:mav_cmd_do_start_mag_cal, :mav_cmd), do: 42424
  def encode(:mav_cmd_do_accept_mag_cal, :mav_cmd), do: 42425
  def encode(:mav_cmd_do_cancel_mag_cal, :mav_cmd), do: 42426
  def encode(:mav_cmd_set_factory_test_mode, :mav_cmd), do: 42427
  def encode(:mav_cmd_do_send_banner, :mav_cmd), do: 42428
  def encode(:mav_cmd_accelcal_vehicle_pos, :mav_cmd), do: 42429
  def encode(:mav_cmd_gimbal_reset, :mav_cmd), do: 42501
  def encode(:mav_cmd_gimbal_axis_calibration_status, :mav_cmd), do: 42502
  def encode(:mav_cmd_gimbal_request_axis_calibration, :mav_cmd), do: 42503
  def encode(:mav_cmd_gimbal_full_reset, :mav_cmd), do: 42505
  def encode(:mav_cmd_do_winch, :mav_cmd), do: 42600
  def encode(:mav_cmd_flash_bootloader, :mav_cmd), do: 42650
  def encode(:mav_cmd_battery_reset, :mav_cmd), do: 42651
  def encode(:mav_cmd_debug_trap, :mav_cmd), do: 42700
  def encode(:mav_cmd_scripting, :mav_cmd), do: 42701
  def encode(:mav_cmd_guided_change_speed, :mav_cmd), do: 43000
  def encode(:mav_cmd_guided_change_altitude, :mav_cmd), do: 43001
  def encode(:mav_cmd_guided_change_heading, :mav_cmd), do: 43002
  def encode(:mav_cmd_ack_ok, :mav_cmd_ack), do: 0
  def encode(:mav_cmd_ack_err_fail, :mav_cmd_ack), do: 1
  def encode(:mav_cmd_ack_err_access_denied, :mav_cmd_ack), do: 2
  def encode(:mav_cmd_ack_err_not_supported, :mav_cmd_ack), do: 3
  def encode(:mav_cmd_ack_err_coordinate_frame_not_supported, :mav_cmd_ack), do: 4
  def encode(:mav_cmd_ack_err_coordinates_out_of_range, :mav_cmd_ack), do: 5
  def encode(:mav_cmd_ack_err_x_lat_out_of_range, :mav_cmd_ack), do: 6
  def encode(:mav_cmd_ack_err_y_lon_out_of_range, :mav_cmd_ack), do: 7
  def encode(:mav_cmd_ack_err_z_alt_out_of_range, :mav_cmd_ack), do: 8
  def encode(:mav_cmd_do_aux_function_switch_level_low, :mav_cmd_do_aux_function_switch_level), do: 0
  def encode(:mav_cmd_do_aux_function_switch_level_middle, :mav_cmd_do_aux_function_switch_level), do: 1
  def encode(:mav_cmd_do_aux_function_switch_level_high, :mav_cmd_do_aux_function_switch_level), do: 2
  def encode(:mav_collision_action_none, :mav_collision_action), do: 0
  def encode(:mav_collision_action_report, :mav_collision_action), do: 1
  def encode(:mav_collision_action_ascend_or_descend, :mav_collision_action), do: 2
  def encode(:mav_collision_action_move_horizontally, :mav_collision_action), do: 3
  def encode(:mav_collision_action_move_perpendicular, :mav_collision_action), do: 4
  def encode(:mav_collision_action_rtl, :mav_collision_action), do: 5
  def encode(:mav_collision_action_hover, :mav_collision_action), do: 6
  def encode(:mav_collision_src_adsb, :mav_collision_src), do: 0
  def encode(:mav_collision_src_mavlink_gps_global_int, :mav_collision_src), do: 1
  def encode(:mav_collision_threat_level_none, :mav_collision_threat_level), do: 0
  def encode(:mav_collision_threat_level_low, :mav_collision_threat_level), do: 1
  def encode(:mav_collision_threat_level_high, :mav_collision_threat_level), do: 2
  def encode(:mav_comp_id_all, :mav_component), do: 0
  def encode(:mav_comp_id_autopilot1, :mav_component), do: 1
  def encode(:mav_comp_id_user1, :mav_component), do: 25
  def encode(:mav_comp_id_user2, :mav_component), do: 26
  def encode(:mav_comp_id_user3, :mav_component), do: 27
  def encode(:mav_comp_id_user4, :mav_component), do: 28
  def encode(:mav_comp_id_user5, :mav_component), do: 29
  def encode(:mav_comp_id_user6, :mav_component), do: 30
  def encode(:mav_comp_id_user7, :mav_component), do: 31
  def encode(:mav_comp_id_user8, :mav_component), do: 32
  def encode(:mav_comp_id_user9, :mav_component), do: 33
  def encode(:mav_comp_id_user10, :mav_component), do: 34
  def encode(:mav_comp_id_user11, :mav_component), do: 35
  def encode(:mav_comp_id_user12, :mav_component), do: 36
  def encode(:mav_comp_id_user13, :mav_component), do: 37
  def encode(:mav_comp_id_user14, :mav_component), do: 38
  def encode(:mav_comp_id_user15, :mav_component), do: 39
  def encode(:mav_comp_id_user16, :mav_component), do: 40
  def encode(:mav_comp_id_user17, :mav_component), do: 41
  def encode(:mav_comp_id_user18, :mav_component), do: 42
  def encode(:mav_comp_id_user19, :mav_component), do: 43
  def encode(:mav_comp_id_user20, :mav_component), do: 44
  def encode(:mav_comp_id_user21, :mav_component), do: 45
  def encode(:mav_comp_id_user22, :mav_component), do: 46
  def encode(:mav_comp_id_user23, :mav_component), do: 47
  def encode(:mav_comp_id_user24, :mav_component), do: 48
  def encode(:mav_comp_id_user25, :mav_component), do: 49
  def encode(:mav_comp_id_user26, :mav_component), do: 50
  def encode(:mav_comp_id_user27, :mav_component), do: 51
  def encode(:mav_comp_id_user28, :mav_component), do: 52
  def encode(:mav_comp_id_user29, :mav_component), do: 53
  def encode(:mav_comp_id_user30, :mav_component), do: 54
  def encode(:mav_comp_id_user31, :mav_component), do: 55
  def encode(:mav_comp_id_user32, :mav_component), do: 56
  def encode(:mav_comp_id_user33, :mav_component), do: 57
  def encode(:mav_comp_id_user34, :mav_component), do: 58
  def encode(:mav_comp_id_user35, :mav_component), do: 59
  def encode(:mav_comp_id_user36, :mav_component), do: 60
  def encode(:mav_comp_id_user37, :mav_component), do: 61
  def encode(:mav_comp_id_user38, :mav_component), do: 62
  def encode(:mav_comp_id_user39, :mav_component), do: 63
  def encode(:mav_comp_id_user40, :mav_component), do: 64
  def encode(:mav_comp_id_user41, :mav_component), do: 65
  def encode(:mav_comp_id_user42, :mav_component), do: 66
  def encode(:mav_comp_id_user43, :mav_component), do: 67
  def encode(:mav_comp_id_telemetry_radio, :mav_component), do: 68
  def encode(:mav_comp_id_user45, :mav_component), do: 69
  def encode(:mav_comp_id_user46, :mav_component), do: 70
  def encode(:mav_comp_id_user47, :mav_component), do: 71
  def encode(:mav_comp_id_user48, :mav_component), do: 72
  def encode(:mav_comp_id_user49, :mav_component), do: 73
  def encode(:mav_comp_id_user50, :mav_component), do: 74
  def encode(:mav_comp_id_user51, :mav_component), do: 75
  def encode(:mav_comp_id_user52, :mav_component), do: 76
  def encode(:mav_comp_id_user53, :mav_component), do: 77
  def encode(:mav_comp_id_user54, :mav_component), do: 78
  def encode(:mav_comp_id_user55, :mav_component), do: 79
  def encode(:mav_comp_id_user56, :mav_component), do: 80
  def encode(:mav_comp_id_user57, :mav_component), do: 81
  def encode(:mav_comp_id_user58, :mav_component), do: 82
  def encode(:mav_comp_id_user59, :mav_component), do: 83
  def encode(:mav_comp_id_user60, :mav_component), do: 84
  def encode(:mav_comp_id_user61, :mav_component), do: 85
  def encode(:mav_comp_id_user62, :mav_component), do: 86
  def encode(:mav_comp_id_user63, :mav_component), do: 87
  def encode(:mav_comp_id_user64, :mav_component), do: 88
  def encode(:mav_comp_id_user65, :mav_component), do: 89
  def encode(:mav_comp_id_user66, :mav_component), do: 90
  def encode(:mav_comp_id_user67, :mav_component), do: 91
  def encode(:mav_comp_id_user68, :mav_component), do: 92
  def encode(:mav_comp_id_user69, :mav_component), do: 93
  def encode(:mav_comp_id_user70, :mav_component), do: 94
  def encode(:mav_comp_id_user71, :mav_component), do: 95
  def encode(:mav_comp_id_user72, :mav_component), do: 96
  def encode(:mav_comp_id_user73, :mav_component), do: 97
  def encode(:mav_comp_id_user74, :mav_component), do: 98
  def encode(:mav_comp_id_user75, :mav_component), do: 99
  def encode(:mav_comp_id_camera, :mav_component), do: 100
  def encode(:mav_comp_id_camera2, :mav_component), do: 101
  def encode(:mav_comp_id_camera3, :mav_component), do: 102
  def encode(:mav_comp_id_camera4, :mav_component), do: 103
  def encode(:mav_comp_id_camera5, :mav_component), do: 104
  def encode(:mav_comp_id_camera6, :mav_component), do: 105
  def encode(:mav_comp_id_servo1, :mav_component), do: 140
  def encode(:mav_comp_id_servo2, :mav_component), do: 141
  def encode(:mav_comp_id_servo3, :mav_component), do: 142
  def encode(:mav_comp_id_servo4, :mav_component), do: 143
  def encode(:mav_comp_id_servo5, :mav_component), do: 144
  def encode(:mav_comp_id_servo6, :mav_component), do: 145
  def encode(:mav_comp_id_servo7, :mav_component), do: 146
  def encode(:mav_comp_id_servo8, :mav_component), do: 147
  def encode(:mav_comp_id_servo9, :mav_component), do: 148
  def encode(:mav_comp_id_servo10, :mav_component), do: 149
  def encode(:mav_comp_id_servo11, :mav_component), do: 150
  def encode(:mav_comp_id_servo12, :mav_component), do: 151
  def encode(:mav_comp_id_servo13, :mav_component), do: 152
  def encode(:mav_comp_id_servo14, :mav_component), do: 153
  def encode(:mav_comp_id_gimbal, :mav_component), do: 154
  def encode(:mav_comp_id_log, :mav_component), do: 155
  def encode(:mav_comp_id_adsb, :mav_component), do: 156
  def encode(:mav_comp_id_osd, :mav_component), do: 157
  def encode(:mav_comp_id_peripheral, :mav_component), do: 158
  def encode(:mav_comp_id_qx1_gimbal, :mav_component), do: 159
  def encode(:mav_comp_id_flarm, :mav_component), do: 160
  def encode(:mav_comp_id_gimbal2, :mav_component), do: 171
  def encode(:mav_comp_id_gimbal3, :mav_component), do: 172
  def encode(:mav_comp_id_gimbal4, :mav_component), do: 173
  def encode(:mav_comp_id_gimbal5, :mav_component), do: 174
  def encode(:mav_comp_id_gimbal6, :mav_component), do: 175
  def encode(:mav_comp_id_missionplanner, :mav_component), do: 190
  def encode(:mav_comp_id_onboard_computer, :mav_component), do: 191
  def encode(:mav_comp_id_pathplanner, :mav_component), do: 195
  def encode(:mav_comp_id_obstacle_avoidance, :mav_component), do: 196
  def encode(:mav_comp_id_visual_inertial_odometry, :mav_component), do: 197
  def encode(:mav_comp_id_pairing_manager, :mav_component), do: 198
  def encode(:mav_comp_id_imu, :mav_component), do: 200
  def encode(:mav_comp_id_imu_2, :mav_component), do: 201
  def encode(:mav_comp_id_imu_3, :mav_component), do: 202
  def encode(:mav_comp_id_gps, :mav_component), do: 220
  def encode(:mav_comp_id_gps2, :mav_component), do: 221
  def encode(:mav_comp_id_odid_txrx_1, :mav_component), do: 236
  def encode(:mav_comp_id_odid_txrx_2, :mav_component), do: 237
  def encode(:mav_comp_id_odid_txrx_3, :mav_component), do: 238
  def encode(:mav_comp_id_udp_bridge, :mav_component), do: 240
  def encode(:mav_comp_id_uart_bridge, :mav_component), do: 241
  def encode(:mav_comp_id_tunnel_node, :mav_component), do: 242
  def encode(:mav_comp_id_system_control, :mav_component), do: 250
  def encode(:mav_data_stream_all, :mav_data_stream), do: 0
  def encode(:mav_data_stream_raw_sensors, :mav_data_stream), do: 1
  def encode(:mav_data_stream_extended_status, :mav_data_stream), do: 2
  def encode(:mav_data_stream_rc_channels, :mav_data_stream), do: 3
  def encode(:mav_data_stream_raw_controller, :mav_data_stream), do: 4
  def encode(:mav_data_stream_position, :mav_data_stream), do: 6
  def encode(:mav_data_stream_extra1, :mav_data_stream), do: 10
  def encode(:mav_data_stream_extra2, :mav_data_stream), do: 11
  def encode(:mav_data_stream_extra3, :mav_data_stream), do: 12
  def encode(:mav_distance_sensor_laser, :mav_distance_sensor), do: 0
  def encode(:mav_distance_sensor_ultrasound, :mav_distance_sensor), do: 1
  def encode(:mav_distance_sensor_infrared, :mav_distance_sensor), do: 2
  def encode(:mav_distance_sensor_radar, :mav_distance_sensor), do: 3
  def encode(:mav_distance_sensor_unknown, :mav_distance_sensor), do: 4
  def encode(:mav_do_reposition_flags_change_mode, :mav_do_reposition_flags), do: 1
  def encode(:mav_estimator_type_unknown, :mav_estimator_type), do: 0
  def encode(:mav_estimator_type_naive, :mav_estimator_type), do: 1
  def encode(:mav_estimator_type_vision, :mav_estimator_type), do: 2
  def encode(:mav_estimator_type_vio, :mav_estimator_type), do: 3
  def encode(:mav_estimator_type_gps, :mav_estimator_type), do: 4
  def encode(:mav_estimator_type_gps_ins, :mav_estimator_type), do: 5
  def encode(:mav_estimator_type_mocap, :mav_estimator_type), do: 6
  def encode(:mav_estimator_type_lidar, :mav_estimator_type), do: 7
  def encode(:mav_estimator_type_autopilot, :mav_estimator_type), do: 8
  def encode(:mav_frame_global, :mav_frame), do: 0
  def encode(:mav_frame_local_ned, :mav_frame), do: 1
  def encode(:mav_frame_mission, :mav_frame), do: 2
  def encode(:mav_frame_global_relative_alt, :mav_frame), do: 3
  def encode(:mav_frame_local_enu, :mav_frame), do: 4
  def encode(:mav_frame_global_int, :mav_frame), do: 5
  def encode(:mav_frame_global_relative_alt_int, :mav_frame), do: 6
  def encode(:mav_frame_local_offset_ned, :mav_frame), do: 7
  def encode(:mav_frame_body_ned, :mav_frame), do: 8
  def encode(:mav_frame_body_offset_ned, :mav_frame), do: 9
  def encode(:mav_frame_global_terrain_alt, :mav_frame), do: 10
  def encode(:mav_frame_global_terrain_alt_int, :mav_frame), do: 11
  def encode(:mav_frame_body_frd, :mav_frame), do: 12
  def encode(:mav_frame_reserved_13, :mav_frame), do: 13
  def encode(:mav_frame_reserved_14, :mav_frame), do: 14
  def encode(:mav_frame_reserved_15, :mav_frame), do: 15
  def encode(:mav_frame_reserved_16, :mav_frame), do: 16
  def encode(:mav_frame_reserved_17, :mav_frame), do: 17
  def encode(:mav_frame_reserved_18, :mav_frame), do: 18
  def encode(:mav_frame_reserved_19, :mav_frame), do: 19
  def encode(:mav_frame_local_frd, :mav_frame), do: 20
  def encode(:mav_frame_local_flu, :mav_frame), do: 21
  def encode(:mav_generator_status_flag_off, :mav_generator_status_flag), do: 0b1
  def encode(:mav_generator_status_flag_ready, :mav_generator_status_flag), do: 0b10
  def encode(:mav_generator_status_flag_generating, :mav_generator_status_flag), do: 0b100
  def encode(:mav_generator_status_flag_charging, :mav_generator_status_flag), do: 0b1000
  def encode(:mav_generator_status_flag_reduced_power, :mav_generator_status_flag), do: 0b10000
  def encode(:mav_generator_status_flag_maxpower, :mav_generator_status_flag), do: 0b100000
  def encode(:mav_generator_status_flag_overtemp_warning, :mav_generator_status_flag), do: 0b1000000
  def encode(:mav_generator_status_flag_overtemp_fault, :mav_generator_status_flag), do: 0b10000000
  def encode(:mav_generator_status_flag_electronics_overtemp_warning, :mav_generator_status_flag), do: 0b100000000
  def encode(:mav_generator_status_flag_electronics_overtemp_fault, :mav_generator_status_flag), do: 0b1000000000
  def encode(:mav_generator_status_flag_electronics_fault, :mav_generator_status_flag), do: 0b10000000000
  def encode(:mav_generator_status_flag_powersource_fault, :mav_generator_status_flag), do: 0b100000000000
  def encode(:mav_generator_status_flag_communication_warning, :mav_generator_status_flag), do: 0b1000000000000
  def encode(:mav_generator_status_flag_cooling_warning, :mav_generator_status_flag), do: 0b10000000000000
  def encode(:mav_generator_status_flag_power_rail_fault, :mav_generator_status_flag), do: 0b100000000000000
  def encode(:mav_generator_status_flag_overcurrent_fault, :mav_generator_status_flag), do: 0b1000000000000000
  def encode(:mav_generator_status_flag_battery_overcharge_current_fault, :mav_generator_status_flag), do: 0b10000000000000000
  def encode(:mav_generator_status_flag_overvoltage_fault, :mav_generator_status_flag), do: 0b100000000000000000
  def encode(:mav_generator_status_flag_battery_undervolt_fault, :mav_generator_status_flag), do: 0b1000000000000000000
  def encode(:mav_generator_status_flag_start_inhibited, :mav_generator_status_flag), do: 0b10000000000000000000
  def encode(:mav_generator_status_flag_maintenance_required, :mav_generator_status_flag), do: 0b100000000000000000000
  def encode(:mav_generator_status_flag_warming_up, :mav_generator_status_flag), do: 0b1000000000000000000000
  def encode(:mav_generator_status_flag_idle, :mav_generator_status_flag), do: 0b10000000000000000000000
  def encode(:mav_goto_do_hold, :mav_goto), do: 0
  def encode(:mav_goto_do_continue, :mav_goto), do: 1
  def encode(:mav_goto_hold_at_current_position, :mav_goto), do: 2
  def encode(:mav_goto_hold_at_specified_position, :mav_goto), do: 3
  def encode(:mav_landed_state_undefined, :mav_landed_state), do: 0
  def encode(:mav_landed_state_on_ground, :mav_landed_state), do: 1
  def encode(:mav_landed_state_in_air, :mav_landed_state), do: 2
  def encode(:mav_landed_state_takeoff, :mav_landed_state), do: 3
  def encode(:mav_landed_state_landing, :mav_landed_state), do: 4
  def encode(:mav_mission_accepted, :mav_mission_result), do: 0
  def encode(:mav_mission_error, :mav_mission_result), do: 1
  def encode(:mav_mission_unsupported_frame, :mav_mission_result), do: 2
  def encode(:mav_mission_unsupported, :mav_mission_result), do: 3
  def encode(:mav_mission_no_space, :mav_mission_result), do: 4
  def encode(:mav_mission_invalid, :mav_mission_result), do: 5
  def encode(:mav_mission_invalid_param1, :mav_mission_result), do: 6
  def encode(:mav_mission_invalid_param2, :mav_mission_result), do: 7
  def encode(:mav_mission_invalid_param3, :mav_mission_result), do: 8
  def encode(:mav_mission_invalid_param4, :mav_mission_result), do: 9
  def encode(:mav_mission_invalid_param5_x, :mav_mission_result), do: 10
  def encode(:mav_mission_invalid_param6_y, :mav_mission_result), do: 11
  def encode(:mav_mission_invalid_param7, :mav_mission_result), do: 12
  def encode(:mav_mission_invalid_sequence, :mav_mission_result), do: 13
  def encode(:mav_mission_denied, :mav_mission_result), do: 14
  def encode(:mav_mission_operation_cancelled, :mav_mission_result), do: 15
  def encode(:mav_mission_type_mission, :mav_mission_type), do: 0
  def encode(:mav_mission_type_fence, :mav_mission_type), do: 1
  def encode(:mav_mission_type_rally, :mav_mission_type), do: 2
  def encode(:mav_mission_type_all, :mav_mission_type), do: 255
  def encode(:mav_mode_preflight, :mav_mode), do: 0
  def encode(:mav_mode_stabilize_disarmed, :mav_mode), do: 80
  def encode(:mav_mode_stabilize_armed, :mav_mode), do: 208
  def encode(:mav_mode_manual_disarmed, :mav_mode), do: 64
  def encode(:mav_mode_manual_armed, :mav_mode), do: 192
  def encode(:mav_mode_guided_disarmed, :mav_mode), do: 88
  def encode(:mav_mode_guided_armed, :mav_mode), do: 216
  def encode(:mav_mode_auto_disarmed, :mav_mode), do: 92
  def encode(:mav_mode_auto_armed, :mav_mode), do: 220
  def encode(:mav_mode_test_disarmed, :mav_mode), do: 66
  def encode(:mav_mode_test_armed, :mav_mode), do: 194
  def encode(:mav_mode_flag_safety_armed, :mav_mode_flag), do: 0b10000000
  def encode(:mav_mode_flag_manual_input_enabled, :mav_mode_flag), do: 0b1000000
  def encode(:mav_mode_flag_hil_enabled, :mav_mode_flag), do: 0b100000
  def encode(:mav_mode_flag_stabilize_enabled, :mav_mode_flag), do: 0b10000
  def encode(:mav_mode_flag_guided_enabled, :mav_mode_flag), do: 0b1000
  def encode(:mav_mode_flag_auto_enabled, :mav_mode_flag), do: 0b100
  def encode(:mav_mode_flag_test_enabled, :mav_mode_flag), do: 0b10
  def encode(:mav_mode_flag_custom_mode_enabled, :mav_mode_flag), do: 0b1
  def encode(:mav_mode_flag_decode_position_safety, :mav_mode_flag_decode_position), do: 0b10000000
  def encode(:mav_mode_flag_decode_position_manual, :mav_mode_flag_decode_position), do: 0b1000000
  def encode(:mav_mode_flag_decode_position_hil, :mav_mode_flag_decode_position), do: 0b100000
  def encode(:mav_mode_flag_decode_position_stabilize, :mav_mode_flag_decode_position), do: 0b10000
  def encode(:mav_mode_flag_decode_position_guided, :mav_mode_flag_decode_position), do: 0b1000
  def encode(:mav_mode_flag_decode_position_auto, :mav_mode_flag_decode_position), do: 0b100
  def encode(:mav_mode_flag_decode_position_test, :mav_mode_flag_decode_position), do: 0b10
  def encode(:mav_mode_flag_decode_position_custom_mode, :mav_mode_flag_decode_position), do: 0b1
  def encode(:mav_mode_gimbal_uninitialized, :mav_mode_gimbal), do: 0
  def encode(:mav_mode_gimbal_calibrating_pitch, :mav_mode_gimbal), do: 1
  def encode(:mav_mode_gimbal_calibrating_roll, :mav_mode_gimbal), do: 2
  def encode(:mav_mode_gimbal_calibrating_yaw, :mav_mode_gimbal), do: 3
  def encode(:mav_mode_gimbal_initialized, :mav_mode_gimbal), do: 4
  def encode(:mav_mode_gimbal_active, :mav_mode_gimbal), do: 5
  def encode(:mav_mode_gimbal_rate_cmd_timeout, :mav_mode_gimbal), do: 6
  def encode(:mav_mount_mode_retract, :mav_mount_mode), do: 0
  def encode(:mav_mount_mode_neutral, :mav_mount_mode), do: 1
  def encode(:mav_mount_mode_mavlink_targeting, :mav_mount_mode), do: 2
  def encode(:mav_mount_mode_rc_targeting, :mav_mount_mode), do: 3
  def encode(:mav_mount_mode_gps_point, :mav_mount_mode), do: 4
  def encode(:mav_mount_mode_sysid_target, :mav_mount_mode), do: 5
  def encode(:mav_mount_mode_home_location, :mav_mount_mode), do: 6
  def encode(:mav_param_type_uint8, :mav_param_type), do: 1
  def encode(:mav_param_type_int8, :mav_param_type), do: 2
  def encode(:mav_param_type_uint16, :mav_param_type), do: 3
  def encode(:mav_param_type_int16, :mav_param_type), do: 4
  def encode(:mav_param_type_uint32, :mav_param_type), do: 5
  def encode(:mav_param_type_int32, :mav_param_type), do: 6
  def encode(:mav_param_type_uint64, :mav_param_type), do: 7
  def encode(:mav_param_type_int64, :mav_param_type), do: 8
  def encode(:mav_param_type_real32, :mav_param_type), do: 9
  def encode(:mav_param_type_real64, :mav_param_type), do: 10
  def encode(:mav_power_status_brick_valid, :mav_power_status), do: 0b1
  def encode(:mav_power_status_servo_valid, :mav_power_status), do: 0b10
  def encode(:mav_power_status_usb_connected, :mav_power_status), do: 0b100
  def encode(:mav_power_status_periph_overcurrent, :mav_power_status), do: 0b1000
  def encode(:mav_power_status_periph_hipower_overcurrent, :mav_power_status), do: 0b10000
  def encode(:mav_power_status_changed, :mav_power_status), do: 0b100000
  def encode(:mav_protocol_capability_mission_float, :mav_protocol_capability), do: 0b1
  def encode(:mav_protocol_capability_param_float, :mav_protocol_capability), do: 0b10
  def encode(:mav_protocol_capability_mission_int, :mav_protocol_capability), do: 0b100
  def encode(:mav_protocol_capability_command_int, :mav_protocol_capability), do: 0b1000
  def encode(:mav_protocol_capability_param_union, :mav_protocol_capability), do: 0b10000
  def encode(:mav_protocol_capability_ftp, :mav_protocol_capability), do: 0b100000
  def encode(:mav_protocol_capability_set_attitude_target, :mav_protocol_capability), do: 0b1000000
  def encode(:mav_protocol_capability_set_position_target_local_ned, :mav_protocol_capability), do: 0b10000000
  def encode(:mav_protocol_capability_set_position_target_global_int, :mav_protocol_capability), do: 0b100000000
  def encode(:mav_protocol_capability_terrain, :mav_protocol_capability), do: 0b1000000000
  def encode(:mav_protocol_capability_set_actuator_target, :mav_protocol_capability), do: 0b10000000000
  def encode(:mav_protocol_capability_flight_termination, :mav_protocol_capability), do: 0b100000000000
  def encode(:mav_protocol_capability_compass_calibration, :mav_protocol_capability), do: 0b1000000000000
  def encode(:mav_protocol_capability_mavlink2, :mav_protocol_capability), do: 0b10000000000000
  def encode(:mav_protocol_capability_mission_fence, :mav_protocol_capability), do: 0b100000000000000
  def encode(:mav_protocol_capability_mission_rally, :mav_protocol_capability), do: 0b1000000000000000
  def encode(:mav_protocol_capability_flight_information, :mav_protocol_capability), do: 0b10000000000000000
  def encode(:mav_remote_log_data_block_stop, :mav_remote_log_data_block_commands), do: 2147483645
  def encode(:mav_remote_log_data_block_start, :mav_remote_log_data_block_commands), do: 2147483646
  def encode(:mav_remote_log_data_block_nack, :mav_remote_log_data_block_statuses), do: 0
  def encode(:mav_remote_log_data_block_ack, :mav_remote_log_data_block_statuses), do: 1
  def encode(:mav_result_accepted, :mav_result), do: 0
  def encode(:mav_result_temporarily_rejected, :mav_result), do: 1
  def encode(:mav_result_denied, :mav_result), do: 2
  def encode(:mav_result_unsupported, :mav_result), do: 3
  def encode(:mav_result_failed, :mav_result), do: 4
  def encode(:mav_result_in_progress, :mav_result), do: 5
  def encode(:mav_roi_none, :mav_roi), do: 0
  def encode(:mav_roi_wpnext, :mav_roi), do: 1
  def encode(:mav_roi_wpindex, :mav_roi), do: 2
  def encode(:mav_roi_location, :mav_roi), do: 3
  def encode(:mav_roi_target, :mav_roi), do: 4
  def encode(:mav_sensor_rotation_none, :mav_sensor_orientation), do: 0
  def encode(:mav_sensor_rotation_yaw_45, :mav_sensor_orientation), do: 1
  def encode(:mav_sensor_rotation_yaw_90, :mav_sensor_orientation), do: 2
  def encode(:mav_sensor_rotation_yaw_135, :mav_sensor_orientation), do: 3
  def encode(:mav_sensor_rotation_yaw_180, :mav_sensor_orientation), do: 4
  def encode(:mav_sensor_rotation_yaw_225, :mav_sensor_orientation), do: 5
  def encode(:mav_sensor_rotation_yaw_270, :mav_sensor_orientation), do: 6
  def encode(:mav_sensor_rotation_yaw_315, :mav_sensor_orientation), do: 7
  def encode(:mav_sensor_rotation_roll_180, :mav_sensor_orientation), do: 8
  def encode(:mav_sensor_rotation_roll_180_yaw_45, :mav_sensor_orientation), do: 9
  def encode(:mav_sensor_rotation_roll_180_yaw_90, :mav_sensor_orientation), do: 10
  def encode(:mav_sensor_rotation_roll_180_yaw_135, :mav_sensor_orientation), do: 11
  def encode(:mav_sensor_rotation_pitch_180, :mav_sensor_orientation), do: 12
  def encode(:mav_sensor_rotation_roll_180_yaw_225, :mav_sensor_orientation), do: 13
  def encode(:mav_sensor_rotation_roll_180_yaw_270, :mav_sensor_orientation), do: 14
  def encode(:mav_sensor_rotation_roll_180_yaw_315, :mav_sensor_orientation), do: 15
  def encode(:mav_sensor_rotation_roll_90, :mav_sensor_orientation), do: 16
  def encode(:mav_sensor_rotation_roll_90_yaw_45, :mav_sensor_orientation), do: 17
  def encode(:mav_sensor_rotation_roll_90_yaw_90, :mav_sensor_orientation), do: 18
  def encode(:mav_sensor_rotation_roll_90_yaw_135, :mav_sensor_orientation), do: 19
  def encode(:mav_sensor_rotation_roll_270, :mav_sensor_orientation), do: 20
  def encode(:mav_sensor_rotation_roll_270_yaw_45, :mav_sensor_orientation), do: 21
  def encode(:mav_sensor_rotation_roll_270_yaw_90, :mav_sensor_orientation), do: 22
  def encode(:mav_sensor_rotation_roll_270_yaw_135, :mav_sensor_orientation), do: 23
  def encode(:mav_sensor_rotation_pitch_90, :mav_sensor_orientation), do: 24
  def encode(:mav_sensor_rotation_pitch_270, :mav_sensor_orientation), do: 25
  def encode(:mav_sensor_rotation_pitch_180_yaw_90, :mav_sensor_orientation), do: 26
  def encode(:mav_sensor_rotation_pitch_180_yaw_270, :mav_sensor_orientation), do: 27
  def encode(:mav_sensor_rotation_roll_90_pitch_90, :mav_sensor_orientation), do: 28
  def encode(:mav_sensor_rotation_roll_180_pitch_90, :mav_sensor_orientation), do: 29
  def encode(:mav_sensor_rotation_roll_270_pitch_90, :mav_sensor_orientation), do: 30
  def encode(:mav_sensor_rotation_roll_90_pitch_180, :mav_sensor_orientation), do: 31
  def encode(:mav_sensor_rotation_roll_270_pitch_180, :mav_sensor_orientation), do: 32
  def encode(:mav_sensor_rotation_roll_90_pitch_270, :mav_sensor_orientation), do: 33
  def encode(:mav_sensor_rotation_roll_180_pitch_270, :mav_sensor_orientation), do: 34
  def encode(:mav_sensor_rotation_roll_270_pitch_270, :mav_sensor_orientation), do: 35
  def encode(:mav_sensor_rotation_roll_90_pitch_180_yaw_90, :mav_sensor_orientation), do: 36
  def encode(:mav_sensor_rotation_roll_90_yaw_270, :mav_sensor_orientation), do: 37
  def encode(:mav_sensor_rotation_roll_90_pitch_68_yaw_293, :mav_sensor_orientation), do: 38
  def encode(:mav_sensor_rotation_pitch_315, :mav_sensor_orientation), do: 39
  def encode(:mav_sensor_rotation_roll_90_pitch_315, :mav_sensor_orientation), do: 40
  def encode(:mav_sensor_rotation_custom, :mav_sensor_orientation), do: 100
  def encode(:mav_severity_emergency, :mav_severity), do: 0
  def encode(:mav_severity_alert, :mav_severity), do: 1
  def encode(:mav_severity_critical, :mav_severity), do: 2
  def encode(:mav_severity_error, :mav_severity), do: 3
  def encode(:mav_severity_warning, :mav_severity), do: 4
  def encode(:mav_severity_notice, :mav_severity), do: 5
  def encode(:mav_severity_info, :mav_severity), do: 6
  def encode(:mav_severity_debug, :mav_severity), do: 7
  def encode(:mav_state_uninit, :mav_state), do: 0
  def encode(:mav_state_boot, :mav_state), do: 1
  def encode(:mav_state_calibrating, :mav_state), do: 2
  def encode(:mav_state_standby, :mav_state), do: 3
  def encode(:mav_state_active, :mav_state), do: 4
  def encode(:mav_state_critical, :mav_state), do: 5
  def encode(:mav_state_emergency, :mav_state), do: 6
  def encode(:mav_state_poweroff, :mav_state), do: 7
  def encode(:mav_state_flight_termination, :mav_state), do: 8
  def encode(:mav_sys_status_sensor_3d_gyro, :mav_sys_status_sensor), do: 0b1
  def encode(:mav_sys_status_sensor_3d_accel, :mav_sys_status_sensor), do: 0b10
  def encode(:mav_sys_status_sensor_3d_mag, :mav_sys_status_sensor), do: 0b100
  def encode(:mav_sys_status_sensor_absolute_pressure, :mav_sys_status_sensor), do: 0b1000
  def encode(:mav_sys_status_sensor_differential_pressure, :mav_sys_status_sensor), do: 0b10000
  def encode(:mav_sys_status_sensor_gps, :mav_sys_status_sensor), do: 0b100000
  def encode(:mav_sys_status_sensor_optical_flow, :mav_sys_status_sensor), do: 0b1000000
  def encode(:mav_sys_status_sensor_vision_position, :mav_sys_status_sensor), do: 0b10000000
  def encode(:mav_sys_status_sensor_laser_position, :mav_sys_status_sensor), do: 0b100000000
  def encode(:mav_sys_status_sensor_external_ground_truth, :mav_sys_status_sensor), do: 0b1000000000
  def encode(:mav_sys_status_sensor_angular_rate_control, :mav_sys_status_sensor), do: 0b10000000000
  def encode(:mav_sys_status_sensor_attitude_stabilization, :mav_sys_status_sensor), do: 0b100000000000
  def encode(:mav_sys_status_sensor_yaw_position, :mav_sys_status_sensor), do: 0b1000000000000
  def encode(:mav_sys_status_sensor_z_altitude_control, :mav_sys_status_sensor), do: 0b10000000000000
  def encode(:mav_sys_status_sensor_xy_position_control, :mav_sys_status_sensor), do: 0b100000000000000
  def encode(:mav_sys_status_sensor_motor_outputs, :mav_sys_status_sensor), do: 0b1000000000000000
  def encode(:mav_sys_status_sensor_rc_receiver, :mav_sys_status_sensor), do: 0b10000000000000000
  def encode(:mav_sys_status_sensor_3d_gyro2, :mav_sys_status_sensor), do: 0b100000000000000000
  def encode(:mav_sys_status_sensor_3d_accel2, :mav_sys_status_sensor), do: 0b1000000000000000000
  def encode(:mav_sys_status_sensor_3d_mag2, :mav_sys_status_sensor), do: 0b10000000000000000000
  def encode(:mav_sys_status_geofence, :mav_sys_status_sensor), do: 0b100000000000000000000
  def encode(:mav_sys_status_ahrs, :mav_sys_status_sensor), do: 0b1000000000000000000000
  def encode(:mav_sys_status_terrain, :mav_sys_status_sensor), do: 0b10000000000000000000000
  def encode(:mav_sys_status_reverse_motor, :mav_sys_status_sensor), do: 0b100000000000000000000000
  def encode(:mav_sys_status_logging, :mav_sys_status_sensor), do: 0b1000000000000000000000000
  def encode(:mav_sys_status_sensor_battery, :mav_sys_status_sensor), do: 0b10000000000000000000000000
  def encode(:mav_sys_status_sensor_proximity, :mav_sys_status_sensor), do: 0b100000000000000000000000000
  def encode(:mav_sys_status_sensor_satcom, :mav_sys_status_sensor), do: 0b1000000000000000000000000000
  def encode(:mav_sys_status_prearm_check, :mav_sys_status_sensor), do: 0b10000000000000000000000000000
  def encode(:mav_sys_status_obstacle_avoidance, :mav_sys_status_sensor), do: 0b100000000000000000000000000000
  def encode(:mav_sys_status_sensor_propulsion, :mav_sys_status_sensor), do: 0b1000000000000000000000000000000
  def encode(:mav_type_generic, :mav_type), do: 0
  def encode(:mav_type_fixed_wing, :mav_type), do: 1
  def encode(:mav_type_quadrotor, :mav_type), do: 2
  def encode(:mav_type_coaxial, :mav_type), do: 3
  def encode(:mav_type_helicopter, :mav_type), do: 4
  def encode(:mav_type_antenna_tracker, :mav_type), do: 5
  def encode(:mav_type_gcs, :mav_type), do: 6
  def encode(:mav_type_airship, :mav_type), do: 7
  def encode(:mav_type_free_balloon, :mav_type), do: 8
  def encode(:mav_type_rocket, :mav_type), do: 9
  def encode(:mav_type_ground_rover, :mav_type), do: 10
  def encode(:mav_type_surface_boat, :mav_type), do: 11
  def encode(:mav_type_submarine, :mav_type), do: 12
  def encode(:mav_type_hexarotor, :mav_type), do: 13
  def encode(:mav_type_octorotor, :mav_type), do: 14
  def encode(:mav_type_tricopter, :mav_type), do: 15
  def encode(:mav_type_flapping_wing, :mav_type), do: 16
  def encode(:mav_type_kite, :mav_type), do: 17
  def encode(:mav_type_onboard_controller, :mav_type), do: 18
  def encode(:mav_type_vtol_duorotor, :mav_type), do: 19
  def encode(:mav_type_vtol_quadrotor, :mav_type), do: 20
  def encode(:mav_type_vtol_tiltrotor, :mav_type), do: 21
  def encode(:mav_type_vtol_reserved2, :mav_type), do: 22
  def encode(:mav_type_vtol_reserved3, :mav_type), do: 23
  def encode(:mav_type_vtol_reserved4, :mav_type), do: 24
  def encode(:mav_type_vtol_reserved5, :mav_type), do: 25
  def encode(:mav_type_gimbal, :mav_type), do: 26
  def encode(:mav_type_adsb, :mav_type), do: 27
  def encode(:mav_type_parafoil, :mav_type), do: 28
  def encode(:mav_type_dodecarotor, :mav_type), do: 29
  def encode(:mav_type_camera, :mav_type), do: 30
  def encode(:mav_type_charging_station, :mav_type), do: 31
  def encode(:mav_type_flarm, :mav_type), do: 32
  def encode(:mav_type_servo, :mav_type), do: 33
  def encode(:mav_type_odid, :mav_type), do: 34
  def encode(:mav_type_decarotor, :mav_type), do: 35
  def encode(:mav_vtol_state_undefined, :mav_vtol_state), do: 0
  def encode(:mav_vtol_state_transition_to_fw, :mav_vtol_state), do: 1
  def encode(:mav_vtol_state_transition_to_mc, :mav_vtol_state), do: 2
  def encode(:mav_vtol_state_mc, :mav_vtol_state), do: 3
  def encode(:mav_vtol_state_fw, :mav_vtol_state), do: 4
  def encode(:mav_winch_status_healthy, :mav_winch_status_flag), do: 0b1
  def encode(:mav_winch_status_fully_retracted, :mav_winch_status_flag), do: 0b10
  def encode(:mav_winch_status_moving, :mav_winch_status_flag), do: 0b100
  def encode(:mav_winch_status_clutch_engaged, :mav_winch_status_flag), do: 0b1000
  def encode(:mavlink_data_stream_img_jpeg, :mavlink_data_stream_type), do: 0
  def encode(:mavlink_data_stream_img_bmp, :mavlink_data_stream_type), do: 1
  def encode(:mavlink_data_stream_img_raw8u, :mavlink_data_stream_type), do: 2
  def encode(:mavlink_data_stream_img_raw32u, :mavlink_data_stream_type), do: 3
  def encode(:mavlink_data_stream_img_pgm, :mavlink_data_stream_type), do: 4
  def encode(:mavlink_data_stream_img_png, :mavlink_data_stream_type), do: 5
  def encode(:motor_test_order_default, :motor_test_order), do: 0
  def encode(:motor_test_order_sequence, :motor_test_order), do: 1
  def encode(:motor_test_order_board, :motor_test_order), do: 2
  def encode(:motor_test_throttle_percent, :motor_test_throttle_type), do: 0
  def encode(:motor_test_throttle_pwm, :motor_test_throttle_type), do: 1
  def encode(:motor_test_throttle_pilot, :motor_test_throttle_type), do: 2
  def encode(:motor_test_compass_cal, :motor_test_throttle_type), do: 3
  def encode(:osd_param_success, :osd_param_config_error), do: 0
  def encode(:osd_param_invalid_screen, :osd_param_config_error), do: 1
  def encode(:osd_param_invalid_parameter_index, :osd_param_config_error), do: 2
  def encode(:osd_param_invalid_parameter, :osd_param_config_error), do: 3
  def encode(:osd_param_none, :osd_param_config_type), do: 0
  def encode(:osd_param_serial_protocol, :osd_param_config_type), do: 1
  def encode(:osd_param_servo_function, :osd_param_config_type), do: 2
  def encode(:osd_param_aux_function, :osd_param_config_type), do: 3
  def encode(:osd_param_flight_mode, :osd_param_config_type), do: 4
  def encode(:osd_param_failsafe_action, :osd_param_config_type), do: 5
  def encode(:osd_param_failsafe_action_1, :osd_param_config_type), do: 6
  def encode(:osd_param_failsafe_action_2, :osd_param_config_type), do: 7
  def encode(:osd_param_num_types, :osd_param_config_type), do: 8
  def encode(:parachute_disable, :parachute_action), do: 0
  def encode(:parachute_enable, :parachute_action), do: 1
  def encode(:parachute_release, :parachute_action), do: 2
  def encode(:pid_tuning_roll, :pid_tuning_axis), do: 1
  def encode(:pid_tuning_pitch, :pid_tuning_axis), do: 2
  def encode(:pid_tuning_yaw, :pid_tuning_axis), do: 3
  def encode(:pid_tuning_accz, :pid_tuning_axis), do: 4
  def encode(:pid_tuning_steer, :pid_tuning_axis), do: 5
  def encode(:pid_tuning_landing, :pid_tuning_axis), do: 6
  def encode(:plane_mode_manual, :plane_mode), do: 0
  def encode(:plane_mode_circle, :plane_mode), do: 1
  def encode(:plane_mode_stabilize, :plane_mode), do: 2
  def encode(:plane_mode_training, :plane_mode), do: 3
  def encode(:plane_mode_acro, :plane_mode), do: 4
  def encode(:plane_mode_fly_by_wire_a, :plane_mode), do: 5
  def encode(:plane_mode_fly_by_wire_b, :plane_mode), do: 6
  def encode(:plane_mode_cruise, :plane_mode), do: 7
  def encode(:plane_mode_autotune, :plane_mode), do: 8
  def encode(:plane_mode_auto, :plane_mode), do: 10
  def encode(:plane_mode_rtl, :plane_mode), do: 11
  def encode(:plane_mode_loiter, :plane_mode), do: 12
  def encode(:plane_mode_takeoff, :plane_mode), do: 13
  def encode(:plane_mode_avoid_adsb, :plane_mode), do: 14
  def encode(:plane_mode_guided, :plane_mode), do: 15
  def encode(:plane_mode_initializing, :plane_mode), do: 16
  def encode(:plane_mode_qstabilize, :plane_mode), do: 17
  def encode(:plane_mode_qhover, :plane_mode), do: 18
  def encode(:plane_mode_qloiter, :plane_mode), do: 19
  def encode(:plane_mode_qland, :plane_mode), do: 20
  def encode(:plane_mode_qrtl, :plane_mode), do: 21
  def encode(:plane_mode_qautotune, :plane_mode), do: 22
  def encode(:plane_mode_qacro, :plane_mode), do: 23
  def encode(:plane_mode_thermal, :plane_mode), do: 24
  def encode(:position_target_typemask_x_ignore, :position_target_typemask), do: 0b1
  def encode(:position_target_typemask_y_ignore, :position_target_typemask), do: 0b10
  def encode(:position_target_typemask_z_ignore, :position_target_typemask), do: 0b100
  def encode(:position_target_typemask_vx_ignore, :position_target_typemask), do: 0b1000
  def encode(:position_target_typemask_vy_ignore, :position_target_typemask), do: 0b10000
  def encode(:position_target_typemask_vz_ignore, :position_target_typemask), do: 0b100000
  def encode(:position_target_typemask_ax_ignore, :position_target_typemask), do: 0b1000000
  def encode(:position_target_typemask_ay_ignore, :position_target_typemask), do: 0b10000000
  def encode(:position_target_typemask_az_ignore, :position_target_typemask), do: 0b100000000
  def encode(:position_target_typemask_force_set, :position_target_typemask), do: 0b1000000000
  def encode(:position_target_typemask_yaw_ignore, :position_target_typemask), do: 0b10000000000
  def encode(:position_target_typemask_yaw_rate_ignore, :position_target_typemask), do: 0b100000000000
  def encode(:precision_land_mode_disabled, :precision_land_mode), do: 0
  def encode(:precision_land_mode_opportunistic, :precision_land_mode), do: 1
  def encode(:precision_land_mode_required, :precision_land_mode), do: 2
  def encode(:favorable_wind, :rally_flags), do: 1
  def encode(:land_immediately, :rally_flags), do: 2
  def encode(:rc_type_spektrum_dsm2, :rc_type), do: 0
  def encode(:rc_type_spektrum_dsmx, :rc_type), do: 1
  def encode(:rover_mode_manual, :rover_mode), do: 0
  def encode(:rover_mode_acro, :rover_mode), do: 1
  def encode(:rover_mode_steering, :rover_mode), do: 3
  def encode(:rover_mode_hold, :rover_mode), do: 4
  def encode(:rover_mode_loiter, :rover_mode), do: 5
  def encode(:rover_mode_follow, :rover_mode), do: 6
  def encode(:rover_mode_simple, :rover_mode), do: 7
  def encode(:rover_mode_auto, :rover_mode), do: 10
  def encode(:rover_mode_rtl, :rover_mode), do: 11
  def encode(:rover_mode_smart_rtl, :rover_mode), do: 12
  def encode(:rover_mode_guided, :rover_mode), do: 15
  def encode(:rover_mode_initializing, :rover_mode), do: 16
  def encode(:rtk_baseline_coordinate_system_ecef, :rtk_baseline_coordinate_system), do: 0
  def encode(:rtk_baseline_coordinate_system_ned, :rtk_baseline_coordinate_system), do: 1
  def encode(:scripting_cmd_repl_start, :scripting_cmd), do: 0
  def encode(:scripting_cmd_repl_stop, :scripting_cmd), do: 1
  def encode(:serial_control_dev_telem1, :serial_control_dev), do: 0
  def encode(:serial_control_dev_telem2, :serial_control_dev), do: 1
  def encode(:serial_control_dev_gps1, :serial_control_dev), do: 2
  def encode(:serial_control_dev_gps2, :serial_control_dev), do: 3
  def encode(:serial_control_dev_shell, :serial_control_dev), do: 10
  def encode(:serial_control_serial0, :serial_control_dev), do: 100
  def encode(:serial_control_serial1, :serial_control_dev), do: 101
  def encode(:serial_control_serial2, :serial_control_dev), do: 102
  def encode(:serial_control_serial3, :serial_control_dev), do: 103
  def encode(:serial_control_serial4, :serial_control_dev), do: 104
  def encode(:serial_control_serial5, :serial_control_dev), do: 105
  def encode(:serial_control_serial6, :serial_control_dev), do: 106
  def encode(:serial_control_serial7, :serial_control_dev), do: 107
  def encode(:serial_control_serial8, :serial_control_dev), do: 108
  def encode(:serial_control_serial9, :serial_control_dev), do: 109
  def encode(:serial_control_flag_reply, :serial_control_flag), do: 0b1
  def encode(:serial_control_flag_respond, :serial_control_flag), do: 0b10
  def encode(:serial_control_flag_exclusive, :serial_control_flag), do: 0b100
  def encode(:serial_control_flag_blocking, :serial_control_flag), do: 0b1000
  def encode(:serial_control_flag_multi, :serial_control_flag), do: 0b10000
  def encode(:speed_type_airspeed, :speed_type), do: 0
  def encode(:speed_type_groundspeed, :speed_type), do: 1
  def encode(:storage_status_empty, :storage_status), do: 0
  def encode(:storage_status_unformatted, :storage_status), do: 1
  def encode(:storage_status_ready, :storage_status), do: 2
  def encode(:storage_status_not_supported, :storage_status), do: 3
  def encode(:sub_mode_stabilize, :sub_mode), do: 0
  def encode(:sub_mode_acro, :sub_mode), do: 1
  def encode(:sub_mode_alt_hold, :sub_mode), do: 2
  def encode(:sub_mode_auto, :sub_mode), do: 3
  def encode(:sub_mode_guided, :sub_mode), do: 4
  def encode(:sub_mode_circle, :sub_mode), do: 7
  def encode(:sub_mode_surface, :sub_mode), do: 9
  def encode(:sub_mode_poshold, :sub_mode), do: 16
  def encode(:sub_mode_manual, :sub_mode), do: 19
  def encode(:tracker_mode_manual, :tracker_mode), do: 0
  def encode(:tracker_mode_stop, :tracker_mode), do: 1
  def encode(:tracker_mode_scan, :tracker_mode), do: 2
  def encode(:tracker_mode_servo_test, :tracker_mode), do: 3
  def encode(:tracker_mode_auto, :tracker_mode), do: 10
  def encode(:tracker_mode_initializing, :tracker_mode), do: 16
  def encode(:uavcan_node_health_ok, :uavcan_node_health), do: 0
  def encode(:uavcan_node_health_warning, :uavcan_node_health), do: 1
  def encode(:uavcan_node_health_error, :uavcan_node_health), do: 2
  def encode(:uavcan_node_health_critical, :uavcan_node_health), do: 3
  def encode(:uavcan_node_mode_operational, :uavcan_node_mode), do: 0
  def encode(:uavcan_node_mode_initialization, :uavcan_node_mode), do: 1
  def encode(:uavcan_node_mode_maintenance, :uavcan_node_mode), do: 2
  def encode(:uavcan_node_mode_software_update, :uavcan_node_mode), do: 3
  def encode(:uavcan_node_mode_offline, :uavcan_node_mode), do: 7
  def encode(:uavionix_adsb_out_no_emergency, :uavionix_adsb_emergency_status), do: 0
  def encode(:uavionix_adsb_out_general_emergency, :uavionix_adsb_emergency_status), do: 1
  def encode(:uavionix_adsb_out_lifeguard_emergency, :uavionix_adsb_emergency_status), do: 2
  def encode(:uavionix_adsb_out_minimum_fuel_emergency, :uavionix_adsb_emergency_status), do: 3
  def encode(:uavionix_adsb_out_no_comm_emergency, :uavionix_adsb_emergency_status), do: 4
  def encode(:uavionix_adsb_out_unlawful_interferance_emergency, :uavionix_adsb_emergency_status), do: 5
  def encode(:uavionix_adsb_out_downed_aircraft_emergency, :uavionix_adsb_emergency_status), do: 6
  def encode(:uavionix_adsb_out_reserved, :uavionix_adsb_emergency_status), do: 7
  def encode(:uavionix_adsb_out_cfg_aircraft_size_no_data, :uavionix_adsb_out_cfg_aircraft_size), do: 0
  def encode(:uavionix_adsb_out_cfg_aircraft_size_l15m_w23m, :uavionix_adsb_out_cfg_aircraft_size), do: 1
  def encode(:uavionix_adsb_out_cfg_aircraft_size_l25m_w28p5m, :uavionix_adsb_out_cfg_aircraft_size), do: 2
  def encode(:uavionix_adsb_out_cfg_aircraft_size_l25_34m, :uavionix_adsb_out_cfg_aircraft_size), do: 3
  def encode(:uavionix_adsb_out_cfg_aircraft_size_l35_33m, :uavionix_adsb_out_cfg_aircraft_size), do: 4
  def encode(:uavionix_adsb_out_cfg_aircraft_size_l35_38m, :uavionix_adsb_out_cfg_aircraft_size), do: 5
  def encode(:uavionix_adsb_out_cfg_aircraft_size_l45_39p5m, :uavionix_adsb_out_cfg_aircraft_size), do: 6
  def encode(:uavionix_adsb_out_cfg_aircraft_size_l45_45m, :uavionix_adsb_out_cfg_aircraft_size), do: 7
  def encode(:uavionix_adsb_out_cfg_aircraft_size_l55_45m, :uavionix_adsb_out_cfg_aircraft_size), do: 8
  def encode(:uavionix_adsb_out_cfg_aircraft_size_l55_52m, :uavionix_adsb_out_cfg_aircraft_size), do: 9
  def encode(:uavionix_adsb_out_cfg_aircraft_size_l65_59p5m, :uavionix_adsb_out_cfg_aircraft_size), do: 10
  def encode(:uavionix_adsb_out_cfg_aircraft_size_l65_67m, :uavionix_adsb_out_cfg_aircraft_size), do: 11
  def encode(:uavionix_adsb_out_cfg_aircraft_size_l75_w72p5m, :uavionix_adsb_out_cfg_aircraft_size), do: 12
  def encode(:uavionix_adsb_out_cfg_aircraft_size_l75_w80m, :uavionix_adsb_out_cfg_aircraft_size), do: 13
  def encode(:uavionix_adsb_out_cfg_aircraft_size_l85_w80m, :uavionix_adsb_out_cfg_aircraft_size), do: 14
  def encode(:uavionix_adsb_out_cfg_aircraft_size_l85_w90m, :uavionix_adsb_out_cfg_aircraft_size), do: 15
  def encode(:uavionix_adsb_out_cfg_gps_offset_lat_no_data, :uavionix_adsb_out_cfg_gps_offset_lat), do: 0
  def encode(:uavionix_adsb_out_cfg_gps_offset_lat_left_2m, :uavionix_adsb_out_cfg_gps_offset_lat), do: 1
  def encode(:uavionix_adsb_out_cfg_gps_offset_lat_left_4m, :uavionix_adsb_out_cfg_gps_offset_lat), do: 2
  def encode(:uavionix_adsb_out_cfg_gps_offset_lat_left_6m, :uavionix_adsb_out_cfg_gps_offset_lat), do: 3
  def encode(:uavionix_adsb_out_cfg_gps_offset_lat_right_0m, :uavionix_adsb_out_cfg_gps_offset_lat), do: 4
  def encode(:uavionix_adsb_out_cfg_gps_offset_lat_right_2m, :uavionix_adsb_out_cfg_gps_offset_lat), do: 5
  def encode(:uavionix_adsb_out_cfg_gps_offset_lat_right_4m, :uavionix_adsb_out_cfg_gps_offset_lat), do: 6
  def encode(:uavionix_adsb_out_cfg_gps_offset_lat_right_6m, :uavionix_adsb_out_cfg_gps_offset_lat), do: 7
  def encode(:uavionix_adsb_out_cfg_gps_offset_lon_no_data, :uavionix_adsb_out_cfg_gps_offset_lon), do: 0
  def encode(:uavionix_adsb_out_cfg_gps_offset_lon_applied_by_sensor, :uavionix_adsb_out_cfg_gps_offset_lon), do: 1
  def encode(:uavionix_adsb_out_dynamic_gps_fix_none_0, :uavionix_adsb_out_dynamic_gps_fix), do: 0
  def encode(:uavionix_adsb_out_dynamic_gps_fix_none_1, :uavionix_adsb_out_dynamic_gps_fix), do: 1
  def encode(:uavionix_adsb_out_dynamic_gps_fix_2d, :uavionix_adsb_out_dynamic_gps_fix), do: 2
  def encode(:uavionix_adsb_out_dynamic_gps_fix_3d, :uavionix_adsb_out_dynamic_gps_fix), do: 3
  def encode(:uavionix_adsb_out_dynamic_gps_fix_dgps, :uavionix_adsb_out_dynamic_gps_fix), do: 4
  def encode(:uavionix_adsb_out_dynamic_gps_fix_rtk, :uavionix_adsb_out_dynamic_gps_fix), do: 5
  def encode(:uavionix_adsb_out_dynamic_state_intent_change, :uavionix_adsb_out_dynamic_state), do: 0b1
  def encode(:uavionix_adsb_out_dynamic_state_autopilot_enabled, :uavionix_adsb_out_dynamic_state), do: 0b10
  def encode(:uavionix_adsb_out_dynamic_state_nicbaro_crosschecked, :uavionix_adsb_out_dynamic_state), do: 0b100
  def encode(:uavionix_adsb_out_dynamic_state_on_ground, :uavionix_adsb_out_dynamic_state), do: 0b1000
  def encode(:uavionix_adsb_out_dynamic_state_ident, :uavionix_adsb_out_dynamic_state), do: 0b10000
  def encode(:uavionix_adsb_out_rf_select_standby, :uavionix_adsb_out_rf_select), do: 0
  def encode(:uavionix_adsb_out_rf_select_rx_enabled, :uavionix_adsb_out_rf_select), do: 1
  def encode(:uavionix_adsb_out_rf_select_tx_enabled, :uavionix_adsb_out_rf_select), do: 2
  def encode(:uavionix_adsb_rf_health_initializing, :uavionix_adsb_rf_health), do: 0
  def encode(:uavionix_adsb_rf_health_ok, :uavionix_adsb_rf_health), do: 1
  def encode(:uavionix_adsb_rf_health_fail_tx, :uavionix_adsb_rf_health), do: 2
  def encode(:uavionix_adsb_rf_health_fail_rx, :uavionix_adsb_rf_health), do: 16
  def encode(:utm_data_avail_flags_time_valid, :utm_data_avail_flags), do: 0b1
  def encode(:utm_data_avail_flags_uas_id_available, :utm_data_avail_flags), do: 0b10
  def encode(:utm_data_avail_flags_position_available, :utm_data_avail_flags), do: 0b100
  def encode(:utm_data_avail_flags_altitude_available, :utm_data_avail_flags), do: 0b1000
  def encode(:utm_data_avail_flags_relative_altitude_available, :utm_data_avail_flags), do: 0b10000
  def encode(:utm_data_avail_flags_horizontal_velo_available, :utm_data_avail_flags), do: 0b100000
  def encode(:utm_data_avail_flags_vertical_velo_available, :utm_data_avail_flags), do: 0b1000000
  def encode(:utm_data_avail_flags_next_waypoint_available, :utm_data_avail_flags), do: 0b10000000
  def encode(:utm_flight_state_unknown, :utm_flight_state), do: 1
  def encode(:utm_flight_state_ground, :utm_flight_state), do: 2
  def encode(:utm_flight_state_airborne, :utm_flight_state), do: 3
  def encode(:utm_flight_state_emergency, :utm_flight_state), do: 16
  def encode(:utm_flight_state_noctrl, :utm_flight_state), do: 32
  def encode(:video_stream_status_flags_running, :video_stream_status_flags), do: 1
  def encode(:video_stream_status_flags_thermal, :video_stream_status_flags), do: 2
  def encode(:video_stream_type_rtsp, :video_stream_type), do: 0
  def encode(:video_stream_type_rtpudp, :video_stream_type), do: 1
  def encode(:video_stream_type_tcp_mpeg, :video_stream_type), do: 2
  def encode(:video_stream_type_mpeg_ts_h264, :video_stream_type), do: 3
  def encode(:vtol_transition_heading_vehicle_default, :vtol_transition_heading), do: 0
  def encode(:vtol_transition_heading_next_waypoint, :vtol_transition_heading), do: 1
  def encode(:vtol_transition_heading_takeoff, :vtol_transition_heading), do: 2
  def encode(:vtol_transition_heading_specified, :vtol_transition_heading), do: 3
  def encode(:vtol_transition_heading_any, :vtol_transition_heading), do: 4
  def encode(:winch_relaxed, :winch_actions), do: 0
  def encode(:winch_relative_length_control, :winch_actions), do: 1
  def encode(:winch_rate_control, :winch_actions), do: 2
  
  
  @doc "Return the atom representation of a MAVLink enumeration value from the enumeration type and encoded integer"
  @spec decode(1 | 2 | 3 | 4 | 5 | 6 | 16777215 | 16777216, :accelcal_vehicle_pos) :: APM.Types.accelcal_vehicle_pos
  @spec decode(0 | 1, :adsb_altitude_type) :: APM.Types.adsb_altitude_type
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19, :adsb_emitter_type) :: APM.Types.adsb_emitter_type
  @spec decode(1 | 2 | 4 | 8 | 16 | 32 | 64 | 128 | 256 | 32768, :adsb_flags) :: APM.Types.adsb_flags
  @spec decode(0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000 | 0b1000000000000, :ais_flags) :: APM.Types.ais_flags
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15, :ais_nav_status) :: APM.Types.ais_nav_status
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 | 30 | 31 | 32 | 33 | 34 | 35 | 36 | 37 | 38 | 39 | 40 | 41 | 42 | 43 | 44 | 45 | 46 | 47 | 48 | 49 | 50 | 51 | 52 | 53 | 54 | 55 | 56 | 57 | 58 | 59 | 60 | 61 | 62 | 63 | 64 | 65 | 66 | 67 | 68 | 69 | 70 | 71 | 72 | 73 | 74 | 75 | 76 | 77 | 78 | 79 | 80 | 81 | 82 | 83 | 84 | 85 | 86 | 87 | 88 | 89 | 90 | 91 | 92 | 93 | 94 | 95 | 96 | 97 | 98 | 99, :ais_type) :: APM.Types.ais_type
  @spec decode(1 | 2 | 4 | 64 | 128, :attitude_target_typemask) :: APM.Types.attitude_target_typemask
  @spec decode(0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000, :camera_cap_flags) :: APM.Types.camera_cap_flags
  @spec decode(0 | 1 | 2 | 3 | 4, :camera_feedback_flags) :: APM.Types.camera_feedback_flags
  @spec decode(0 | 1 | 2, :camera_mode) :: APM.Types.camera_mode
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6, :camera_status_types) :: APM.Types.camera_status_types
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 9 | 11 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26, :copter_mode) :: APM.Types.copter_mode
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6, :deepstall_stage) :: APM.Types.deepstall_stage
  @spec decode(0 | 1, :device_op_bustype) :: APM.Types.device_op_bustype
  @spec decode(0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000, :ekf_status_flags) :: APM.Types.ekf_status_flags
  @spec decode(0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000, :estimator_status_flags) :: APM.Types.estimator_status_flags
  @spec decode(0 | 1 | 2 | 3 | 4, :fence_action) :: APM.Types.fence_action
  @spec decode(0 | 1 | 2 | 3, :fence_breach) :: APM.Types.fence_breach
  @spec decode(0 | 1 | 2, :fence_mitigate) :: APM.Types.fence_mitigate
  @spec decode(0 | 64 | 128 | 192 | 255, :firmware_version_type) :: APM.Types.firmware_version_type
  @spec decode(0 | 1 | 2, :gimbal_axis) :: APM.Types.gimbal_axis
  @spec decode(0 | 1 | 2, :gimbal_axis_calibration_required) :: APM.Types.gimbal_axis_calibration_required
  @spec decode(0 | 1 | 2, :gimbal_axis_calibration_status) :: APM.Types.gimbal_axis_calibration_status
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8, :gopro_burst_rate) :: APM.Types.gopro_burst_rate
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 255, :gopro_capture_mode) :: APM.Types.gopro_capture_mode
  @spec decode(0 | 1, :gopro_charging) :: APM.Types.gopro_charging
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16, :gopro_command) :: APM.Types.gopro_command
  @spec decode(0 | 1 | 2, :gopro_field_of_view) :: APM.Types.gopro_field_of_view
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13, :gopro_frame_rate) :: APM.Types.gopro_frame_rate
  @spec decode(1, :gopro_heartbeat_flags) :: APM.Types.gopro_heartbeat_flags
  @spec decode(0 | 1 | 2 | 3, :gopro_heartbeat_status) :: APM.Types.gopro_heartbeat_status
  @spec decode(0 | 1 | 2 | 3 | 4, :gopro_model) :: APM.Types.gopro_model
  @spec decode(0 | 1 | 2 | 3 | 4, :gopro_photo_resolution) :: APM.Types.gopro_photo_resolution
  @spec decode(0 | 1, :gopro_protune_colour) :: APM.Types.gopro_protune_colour
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20, :gopro_protune_exposure) :: APM.Types.gopro_protune_exposure
  @spec decode(0 | 1 | 2 | 3 | 4, :gopro_protune_gain) :: APM.Types.gopro_protune_gain
  @spec decode(0 | 1 | 2, :gopro_protune_sharpness) :: APM.Types.gopro_protune_sharpness
  @spec decode(0 | 1 | 2 | 3 | 4, :gopro_protune_white_balance) :: APM.Types.gopro_protune_white_balance
  @spec decode(0 | 1, :gopro_request_status) :: APM.Types.gopro_request_status
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13, :gopro_resolution) :: APM.Types.gopro_resolution
  @spec decode(1, :gopro_video_settings_flags) :: APM.Types.gopro_video_settings_flags
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8, :gps_fix_type) :: APM.Types.gps_fix_type
  @spec decode(0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000, :gps_input_ignore_flags) :: APM.Types.gps_input_ignore_flags
  @spec decode(0 | 1, :gripper_actions) :: APM.Types.gripper_actions
  @spec decode(0 | 1, :heading_type) :: APM.Types.heading_type
  @spec decode(0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000 | 0b1000000000000 | 0b10000000000000, :hl_failure_flag) :: APM.Types.hl_failure_flag
  @spec decode(0 | 1 | 2 | 3 | 4 | 5, :icarous_fms_state) :: APM.Types.icarous_fms_state
  @spec decode(0 | 1 | 2, :icarous_track_band_types) :: APM.Types.icarous_track_band_types
  @spec decode(0 | 1 | 2 | 3, :landing_target_type) :: APM.Types.landing_target_type
  @spec decode(0 | 1 | 255, :led_control_pattern) :: APM.Types.led_control_pattern
  @spec decode(0b1 | 0b10 | 0b100, :limit_module) :: APM.Types.limit_module
  @spec decode(0 | 1 | 2 | 3 | 4 | 5, :limits_state) :: APM.Types.limits_state
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7, :mag_cal_status) :: APM.Types.mag_cal_status
  @spec decode(0 | 1 | 2 | 3 | 4 | 5, :mav_arm_auth_denied_reason) :: APM.Types.mav_arm_auth_denied_reason
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19, :mav_autopilot) :: APM.Types.mav_autopilot
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7, :mav_battery_charge_state) :: APM.Types.mav_battery_charge_state
  @spec decode(0 | 1 | 2 | 3 | 4, :mav_battery_function) :: APM.Types.mav_battery_function
  @spec decode(0 | 1 | 2 | 3 | 4, :mav_battery_type) :: APM.Types.mav_battery_type
  @spec decode(16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 30 | 31 | 32 | 33 | 80 | 81 | 82 | 83 | 84 | 85 | 92 | 93 | 94 | 95 | 112 | 113 | 114 | 115 | 159 | 176 | 177 | 178 | 179 | 180 | 181 | 182 | 183 | 184 | 185 | 186 | 189 | 190 | 191 | 192 | 193 | 194 | 195 | 196 | 197 | 198 | 200 | 201 | 202 | 203 | 204 | 205 | 206 | 207 | 208 | 209 | 210 | 211 | 212 | 213 | 214 | 215 | 216 | 217 | 218 | 220 | 221 | 222 | 223 | 224 | 240 | 241 | 242 | 243 | 245 | 246 | 252 | 260 | 300 | 400 | 410 | 500 | 510 | 511 | 512 | 519 | 520 | 521 | 522 | 525 | 526 | 527 | 528 | 529 | 530 | 600 | 601 | 2000 | 2001 | 2003 | 2500 | 2501 | 2502 | 2503 | 2504 | 2505 | 2510 | 2511 | 2520 | 2600 | 2800 | 3000 | 3001 | 4000 | 4001 | 5000 | 5001 | 5002 | 5003 | 5004 | 5100 | 5200 | 30001 | 30002 | 31000 | 31001 | 31002 | 31003 | 31004 | 31005 | 31006 | 31007 | 31008 | 31009 | 31010 | 31011 | 31012 | 31013 | 31014 | 42000 | 42001 | 42002 | 42003 | 42004 | 42005 | 42006 | 42424 | 42425 | 42426 | 42427 | 42428 | 42429 | 42501 | 42502 | 42503 | 42505 | 42600 | 42650 | 42651 | 42700 | 42701 | 43000 | 43001 | 43002, :mav_cmd) :: APM.Types.mav_cmd
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8, :mav_cmd_ack) :: APM.Types.mav_cmd_ack
  @spec decode(0 | 1 | 2, :mav_cmd_do_aux_function_switch_level) :: APM.Types.mav_cmd_do_aux_function_switch_level
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6, :mav_collision_action) :: APM.Types.mav_collision_action
  @spec decode(0 | 1, :mav_collision_src) :: APM.Types.mav_collision_src
  @spec decode(0 | 1 | 2, :mav_collision_threat_level) :: APM.Types.mav_collision_threat_level
  @spec decode(0 | 1 | 25 | 26 | 27 | 28 | 29 | 30 | 31 | 32 | 33 | 34 | 35 | 36 | 37 | 38 | 39 | 40 | 41 | 42 | 43 | 44 | 45 | 46 | 47 | 48 | 49 | 50 | 51 | 52 | 53 | 54 | 55 | 56 | 57 | 58 | 59 | 60 | 61 | 62 | 63 | 64 | 65 | 66 | 67 | 68 | 69 | 70 | 71 | 72 | 73 | 74 | 75 | 76 | 77 | 78 | 79 | 80 | 81 | 82 | 83 | 84 | 85 | 86 | 87 | 88 | 89 | 90 | 91 | 92 | 93 | 94 | 95 | 96 | 97 | 98 | 99 | 100 | 101 | 102 | 103 | 104 | 105 | 140 | 141 | 142 | 143 | 144 | 145 | 146 | 147 | 148 | 149 | 150 | 151 | 152 | 153 | 154 | 155 | 156 | 157 | 158 | 159 | 160 | 171 | 172 | 173 | 174 | 175 | 190 | 191 | 195 | 196 | 197 | 198 | 200 | 201 | 202 | 220 | 221 | 236 | 237 | 238 | 240 | 241 | 242 | 250, :mav_component) :: APM.Types.mav_component
  @spec decode(0 | 1 | 2 | 3 | 4 | 6 | 10 | 11 | 12, :mav_data_stream) :: APM.Types.mav_data_stream
  @spec decode(0 | 1 | 2 | 3 | 4, :mav_distance_sensor) :: APM.Types.mav_distance_sensor
  @spec decode(1, :mav_do_reposition_flags) :: APM.Types.mav_do_reposition_flags
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8, :mav_estimator_type) :: APM.Types.mav_estimator_type
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21, :mav_frame) :: APM.Types.mav_frame
  @spec decode(0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000 | 0b1000000000000 | 0b10000000000000 | 0b100000000000000 | 0b1000000000000000 | 0b10000000000000000 | 0b100000000000000000 | 0b1000000000000000000 | 0b10000000000000000000 | 0b100000000000000000000 | 0b1000000000000000000000 | 0b10000000000000000000000, :mav_generator_status_flag) :: APM.Types.mav_generator_status_flag
  @spec decode(0 | 1 | 2 | 3, :mav_goto) :: APM.Types.mav_goto
  @spec decode(0 | 1 | 2 | 3 | 4, :mav_landed_state) :: APM.Types.mav_landed_state
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15, :mav_mission_result) :: APM.Types.mav_mission_result
  @spec decode(0 | 1 | 2 | 255, :mav_mission_type) :: APM.Types.mav_mission_type
  @spec decode(0 | 80 | 208 | 64 | 192 | 88 | 216 | 92 | 220 | 66 | 194, :mav_mode) :: APM.Types.mav_mode
  @spec decode(0b10000000 | 0b1000000 | 0b100000 | 0b10000 | 0b1000 | 0b100 | 0b10 | 0b1, :mav_mode_flag) :: APM.Types.mav_mode_flag
  @spec decode(0b10000000 | 0b1000000 | 0b100000 | 0b10000 | 0b1000 | 0b100 | 0b10 | 0b1, :mav_mode_flag_decode_position) :: APM.Types.mav_mode_flag_decode_position
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6, :mav_mode_gimbal) :: APM.Types.mav_mode_gimbal
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6, :mav_mount_mode) :: APM.Types.mav_mount_mode
  @spec decode(1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10, :mav_param_type) :: APM.Types.mav_param_type
  @spec decode(0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000, :mav_power_status) :: APM.Types.mav_power_status
  @spec decode(0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000 | 0b1000000000000 | 0b10000000000000 | 0b100000000000000 | 0b1000000000000000 | 0b10000000000000000, :mav_protocol_capability) :: APM.Types.mav_protocol_capability
  @spec decode(2147483645 | 2147483646, :mav_remote_log_data_block_commands) :: APM.Types.mav_remote_log_data_block_commands
  @spec decode(0 | 1, :mav_remote_log_data_block_statuses) :: APM.Types.mav_remote_log_data_block_statuses
  @spec decode(0 | 1 | 2 | 3 | 4 | 5, :mav_result) :: APM.Types.mav_result
  @spec decode(0 | 1 | 2 | 3 | 4, :mav_roi) :: APM.Types.mav_roi
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 | 30 | 31 | 32 | 33 | 34 | 35 | 36 | 37 | 38 | 39 | 40 | 100, :mav_sensor_orientation) :: APM.Types.mav_sensor_orientation
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7, :mav_severity) :: APM.Types.mav_severity
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8, :mav_state) :: APM.Types.mav_state
  @spec decode(0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000 | 0b1000000000000 | 0b10000000000000 | 0b100000000000000 | 0b1000000000000000 | 0b10000000000000000 | 0b100000000000000000 | 0b1000000000000000000 | 0b10000000000000000000 | 0b100000000000000000000 | 0b1000000000000000000000 | 0b10000000000000000000000 | 0b100000000000000000000000 | 0b1000000000000000000000000 | 0b10000000000000000000000000 | 0b100000000000000000000000000 | 0b1000000000000000000000000000 | 0b10000000000000000000000000000 | 0b100000000000000000000000000000 | 0b1000000000000000000000000000000, :mav_sys_status_sensor) :: APM.Types.mav_sys_status_sensor
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24 | 25 | 26 | 27 | 28 | 29 | 30 | 31 | 32 | 33 | 34 | 35, :mav_type) :: APM.Types.mav_type
  @spec decode(0 | 1 | 2 | 3 | 4, :mav_vtol_state) :: APM.Types.mav_vtol_state
  @spec decode(0b1 | 0b10 | 0b100 | 0b1000, :mav_winch_status_flag) :: APM.Types.mav_winch_status_flag
  @spec decode(0 | 1 | 2 | 3 | 4 | 5, :mavlink_data_stream_type) :: APM.Types.mavlink_data_stream_type
  @spec decode(0 | 1 | 2, :motor_test_order) :: APM.Types.motor_test_order
  @spec decode(0 | 1 | 2 | 3, :motor_test_throttle_type) :: APM.Types.motor_test_throttle_type
  @spec decode(0 | 1 | 2 | 3, :osd_param_config_error) :: APM.Types.osd_param_config_error
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8, :osd_param_config_type) :: APM.Types.osd_param_config_type
  @spec decode(0 | 1 | 2, :parachute_action) :: APM.Types.parachute_action
  @spec decode(1 | 2 | 3 | 4 | 5 | 6, :pid_tuning_axis) :: APM.Types.pid_tuning_axis
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 10 | 11 | 12 | 13 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24, :plane_mode) :: APM.Types.plane_mode
  @spec decode(0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000 | 0b100000000 | 0b1000000000 | 0b10000000000 | 0b100000000000, :position_target_typemask) :: APM.Types.position_target_typemask
  @spec decode(0 | 1 | 2, :precision_land_mode) :: APM.Types.precision_land_mode
  @spec decode(1 | 2, :rally_flags) :: APM.Types.rally_flags
  @spec decode(0 | 1, :rc_type) :: APM.Types.rc_type
  @spec decode(0 | 1 | 3 | 4 | 5 | 6 | 7 | 10 | 11 | 12 | 15 | 16, :rover_mode) :: APM.Types.rover_mode
  @spec decode(0 | 1, :rtk_baseline_coordinate_system) :: APM.Types.rtk_baseline_coordinate_system
  @spec decode(0 | 1, :scripting_cmd) :: APM.Types.scripting_cmd
  @spec decode(0 | 1 | 2 | 3 | 10 | 100 | 101 | 102 | 103 | 104 | 105 | 106 | 107 | 108 | 109, :serial_control_dev) :: APM.Types.serial_control_dev
  @spec decode(0b1 | 0b10 | 0b100 | 0b1000 | 0b10000, :serial_control_flag) :: APM.Types.serial_control_flag
  @spec decode(0 | 1, :speed_type) :: APM.Types.speed_type
  @spec decode(0 | 1 | 2 | 3, :storage_status) :: APM.Types.storage_status
  @spec decode(0 | 1 | 2 | 3 | 4 | 7 | 9 | 16 | 19, :sub_mode) :: APM.Types.sub_mode
  @spec decode(0 | 1 | 2 | 3 | 10 | 16, :tracker_mode) :: APM.Types.tracker_mode
  @spec decode(0 | 1 | 2 | 3, :uavcan_node_health) :: APM.Types.uavcan_node_health
  @spec decode(0 | 1 | 2 | 3 | 7, :uavcan_node_mode) :: APM.Types.uavcan_node_mode
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7, :uavionix_adsb_emergency_status) :: APM.Types.uavionix_adsb_emergency_status
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 | 8 | 9 | 10 | 11 | 12 | 13 | 14 | 15, :uavionix_adsb_out_cfg_aircraft_size) :: APM.Types.uavionix_adsb_out_cfg_aircraft_size
  @spec decode(0 | 1 | 2 | 3 | 4 | 5 | 6 | 7, :uavionix_adsb_out_cfg_gps_offset_lat) :: APM.Types.uavionix_adsb_out_cfg_gps_offset_lat
  @spec decode(0 | 1, :uavionix_adsb_out_cfg_gps_offset_lon) :: APM.Types.uavionix_adsb_out_cfg_gps_offset_lon
  @spec decode(0 | 1 | 2 | 3 | 4 | 5, :uavionix_adsb_out_dynamic_gps_fix) :: APM.Types.uavionix_adsb_out_dynamic_gps_fix
  @spec decode(0b1 | 0b10 | 0b100 | 0b1000 | 0b10000, :uavionix_adsb_out_dynamic_state) :: APM.Types.uavionix_adsb_out_dynamic_state
  @spec decode(0 | 1 | 2, :uavionix_adsb_out_rf_select) :: APM.Types.uavionix_adsb_out_rf_select
  @spec decode(0 | 1 | 2 | 16, :uavionix_adsb_rf_health) :: APM.Types.uavionix_adsb_rf_health
  @spec decode(0b1 | 0b10 | 0b100 | 0b1000 | 0b10000 | 0b100000 | 0b1000000 | 0b10000000, :utm_data_avail_flags) :: APM.Types.utm_data_avail_flags
  @spec decode(1 | 2 | 3 | 16 | 32, :utm_flight_state) :: APM.Types.utm_flight_state
  @spec decode(1 | 2, :video_stream_status_flags) :: APM.Types.video_stream_status_flags
  @spec decode(0 | 1 | 2 | 3, :video_stream_type) :: APM.Types.video_stream_type
  @spec decode(0 | 1 | 2 | 3 | 4, :vtol_transition_heading) :: APM.Types.vtol_transition_heading
  @spec decode(0 | 1 | 2, :winch_actions) :: APM.Types.winch_actions
  def decode(1, :accelcal_vehicle_pos), do: :accelcal_vehicle_pos_level
  def decode(2, :accelcal_vehicle_pos), do: :accelcal_vehicle_pos_left
  def decode(3, :accelcal_vehicle_pos), do: :accelcal_vehicle_pos_right
  def decode(4, :accelcal_vehicle_pos), do: :accelcal_vehicle_pos_nosedown
  def decode(5, :accelcal_vehicle_pos), do: :accelcal_vehicle_pos_noseup
  def decode(6, :accelcal_vehicle_pos), do: :accelcal_vehicle_pos_back
  def decode(16777215, :accelcal_vehicle_pos), do: :accelcal_vehicle_pos_success
  def decode(16777216, :accelcal_vehicle_pos), do: :accelcal_vehicle_pos_failed
  def decode(0, :adsb_altitude_type), do: :adsb_altitude_type_pressure_qnh
  def decode(1, :adsb_altitude_type), do: :adsb_altitude_type_geometric
  def decode(0, :adsb_emitter_type), do: :adsb_emitter_type_no_info
  def decode(1, :adsb_emitter_type), do: :adsb_emitter_type_light
  def decode(2, :adsb_emitter_type), do: :adsb_emitter_type_small
  def decode(3, :adsb_emitter_type), do: :adsb_emitter_type_large
  def decode(4, :adsb_emitter_type), do: :adsb_emitter_type_high_vortex_large
  def decode(5, :adsb_emitter_type), do: :adsb_emitter_type_heavy
  def decode(6, :adsb_emitter_type), do: :adsb_emitter_type_highly_manuv
  def decode(7, :adsb_emitter_type), do: :adsb_emitter_type_rotocraft
  def decode(8, :adsb_emitter_type), do: :adsb_emitter_type_unassigned
  def decode(9, :adsb_emitter_type), do: :adsb_emitter_type_glider
  def decode(10, :adsb_emitter_type), do: :adsb_emitter_type_lighter_air
  def decode(11, :adsb_emitter_type), do: :adsb_emitter_type_parachute
  def decode(12, :adsb_emitter_type), do: :adsb_emitter_type_ultra_light
  def decode(13, :adsb_emitter_type), do: :adsb_emitter_type_unassigned2
  def decode(14, :adsb_emitter_type), do: :adsb_emitter_type_uav
  def decode(15, :adsb_emitter_type), do: :adsb_emitter_type_space
  def decode(16, :adsb_emitter_type), do: :adsb_emitter_type_unassgined3
  def decode(17, :adsb_emitter_type), do: :adsb_emitter_type_emergency_surface
  def decode(18, :adsb_emitter_type), do: :adsb_emitter_type_service_surface
  def decode(19, :adsb_emitter_type), do: :adsb_emitter_type_point_obstacle
  def decode(1, :adsb_flags), do: :adsb_flags_valid_coords
  def decode(2, :adsb_flags), do: :adsb_flags_valid_altitude
  def decode(4, :adsb_flags), do: :adsb_flags_valid_heading
  def decode(8, :adsb_flags), do: :adsb_flags_valid_velocity
  def decode(16, :adsb_flags), do: :adsb_flags_valid_callsign
  def decode(32, :adsb_flags), do: :adsb_flags_valid_squawk
  def decode(64, :adsb_flags), do: :adsb_flags_simulated
  def decode(128, :adsb_flags), do: :adsb_flags_vertical_velocity_valid
  def decode(256, :adsb_flags), do: :adsb_flags_baro_valid
  def decode(32768, :adsb_flags), do: :adsb_flags_source_uat
  def decode(0b1, :ais_flags), do: :ais_flags_position_accuracy
  def decode(0b10, :ais_flags), do: :ais_flags_valid_cog
  def decode(0b100, :ais_flags), do: :ais_flags_valid_velocity
  def decode(0b1000, :ais_flags), do: :ais_flags_high_velocity
  def decode(0b10000, :ais_flags), do: :ais_flags_valid_turn_rate
  def decode(0b100000, :ais_flags), do: :ais_flags_turn_rate_sign_only
  def decode(0b1000000, :ais_flags), do: :ais_flags_valid_dimensions
  def decode(0b10000000, :ais_flags), do: :ais_flags_large_bow_dimension
  def decode(0b100000000, :ais_flags), do: :ais_flags_large_stern_dimension
  def decode(0b1000000000, :ais_flags), do: :ais_flags_large_port_dimension
  def decode(0b10000000000, :ais_flags), do: :ais_flags_large_starboard_dimension
  def decode(0b100000000000, :ais_flags), do: :ais_flags_valid_callsign
  def decode(0b1000000000000, :ais_flags), do: :ais_flags_valid_name
  def decode(0, :ais_nav_status), do: :under_way
  def decode(1, :ais_nav_status), do: :ais_nav_anchored
  def decode(2, :ais_nav_status), do: :ais_nav_un_commanded
  def decode(3, :ais_nav_status), do: :ais_nav_restricted_manoeuverability
  def decode(4, :ais_nav_status), do: :ais_nav_draught_constrained
  def decode(5, :ais_nav_status), do: :ais_nav_moored
  def decode(6, :ais_nav_status), do: :ais_nav_aground
  def decode(7, :ais_nav_status), do: :ais_nav_fishing
  def decode(8, :ais_nav_status), do: :ais_nav_sailing
  def decode(9, :ais_nav_status), do: :ais_nav_reserved_hsc
  def decode(10, :ais_nav_status), do: :ais_nav_reserved_wig
  def decode(11, :ais_nav_status), do: :ais_nav_reserved_1
  def decode(12, :ais_nav_status), do: :ais_nav_reserved_2
  def decode(13, :ais_nav_status), do: :ais_nav_reserved_3
  def decode(14, :ais_nav_status), do: :ais_nav_ais_sart
  def decode(15, :ais_nav_status), do: :ais_nav_unknown
  def decode(0, :ais_type), do: :ais_type_unknown
  def decode(1, :ais_type), do: :ais_type_reserved_1
  def decode(2, :ais_type), do: :ais_type_reserved_2
  def decode(3, :ais_type), do: :ais_type_reserved_3
  def decode(4, :ais_type), do: :ais_type_reserved_4
  def decode(5, :ais_type), do: :ais_type_reserved_5
  def decode(6, :ais_type), do: :ais_type_reserved_6
  def decode(7, :ais_type), do: :ais_type_reserved_7
  def decode(8, :ais_type), do: :ais_type_reserved_8
  def decode(9, :ais_type), do: :ais_type_reserved_9
  def decode(10, :ais_type), do: :ais_type_reserved_10
  def decode(11, :ais_type), do: :ais_type_reserved_11
  def decode(12, :ais_type), do: :ais_type_reserved_12
  def decode(13, :ais_type), do: :ais_type_reserved_13
  def decode(14, :ais_type), do: :ais_type_reserved_14
  def decode(15, :ais_type), do: :ais_type_reserved_15
  def decode(16, :ais_type), do: :ais_type_reserved_16
  def decode(17, :ais_type), do: :ais_type_reserved_17
  def decode(18, :ais_type), do: :ais_type_reserved_18
  def decode(19, :ais_type), do: :ais_type_reserved_19
  def decode(20, :ais_type), do: :ais_type_wig
  def decode(21, :ais_type), do: :ais_type_wig_hazardous_a
  def decode(22, :ais_type), do: :ais_type_wig_hazardous_b
  def decode(23, :ais_type), do: :ais_type_wig_hazardous_c
  def decode(24, :ais_type), do: :ais_type_wig_hazardous_d
  def decode(25, :ais_type), do: :ais_type_wig_reserved_1
  def decode(26, :ais_type), do: :ais_type_wig_reserved_2
  def decode(27, :ais_type), do: :ais_type_wig_reserved_3
  def decode(28, :ais_type), do: :ais_type_wig_reserved_4
  def decode(29, :ais_type), do: :ais_type_wig_reserved_5
  def decode(30, :ais_type), do: :ais_type_fishing
  def decode(31, :ais_type), do: :ais_type_towing
  def decode(32, :ais_type), do: :ais_type_towing_large
  def decode(33, :ais_type), do: :ais_type_dredging
  def decode(34, :ais_type), do: :ais_type_diving
  def decode(35, :ais_type), do: :ais_type_military
  def decode(36, :ais_type), do: :ais_type_sailing
  def decode(37, :ais_type), do: :ais_type_pleasure
  def decode(38, :ais_type), do: :ais_type_reserved_20
  def decode(39, :ais_type), do: :ais_type_reserved_21
  def decode(40, :ais_type), do: :ais_type_hsc
  def decode(41, :ais_type), do: :ais_type_hsc_hazardous_a
  def decode(42, :ais_type), do: :ais_type_hsc_hazardous_b
  def decode(43, :ais_type), do: :ais_type_hsc_hazardous_c
  def decode(44, :ais_type), do: :ais_type_hsc_hazardous_d
  def decode(45, :ais_type), do: :ais_type_hsc_reserved_1
  def decode(46, :ais_type), do: :ais_type_hsc_reserved_2
  def decode(47, :ais_type), do: :ais_type_hsc_reserved_3
  def decode(48, :ais_type), do: :ais_type_hsc_reserved_4
  def decode(49, :ais_type), do: :ais_type_hsc_unknown
  def decode(50, :ais_type), do: :ais_type_pilot
  def decode(51, :ais_type), do: :ais_type_sar
  def decode(52, :ais_type), do: :ais_type_tug
  def decode(53, :ais_type), do: :ais_type_port_tender
  def decode(54, :ais_type), do: :ais_type_anti_pollution
  def decode(55, :ais_type), do: :ais_type_law_enforcement
  def decode(56, :ais_type), do: :ais_type_spare_local_1
  def decode(57, :ais_type), do: :ais_type_spare_local_2
  def decode(58, :ais_type), do: :ais_type_medical_transport
  def decode(59, :ais_type), do: :ais_type_nonecombatant
  def decode(60, :ais_type), do: :ais_type_passenger
  def decode(61, :ais_type), do: :ais_type_passenger_hazardous_a
  def decode(62, :ais_type), do: :ais_type_passenger_hazardous_b
  def decode(63, :ais_type), do: :ais_type_ais_type_passenger_hazardous_c
  def decode(64, :ais_type), do: :ais_type_passenger_hazardous_d
  def decode(65, :ais_type), do: :ais_type_passenger_reserved_1
  def decode(66, :ais_type), do: :ais_type_passenger_reserved_2
  def decode(67, :ais_type), do: :ais_type_passenger_reserved_3
  def decode(68, :ais_type), do: :ais_type_ais_type_passenger_reserved_4
  def decode(69, :ais_type), do: :ais_type_passenger_unknown
  def decode(70, :ais_type), do: :ais_type_cargo
  def decode(71, :ais_type), do: :ais_type_cargo_hazardous_a
  def decode(72, :ais_type), do: :ais_type_cargo_hazardous_b
  def decode(73, :ais_type), do: :ais_type_cargo_hazardous_c
  def decode(74, :ais_type), do: :ais_type_cargo_hazardous_d
  def decode(75, :ais_type), do: :ais_type_cargo_reserved_1
  def decode(76, :ais_type), do: :ais_type_cargo_reserved_2
  def decode(77, :ais_type), do: :ais_type_cargo_reserved_3
  def decode(78, :ais_type), do: :ais_type_cargo_reserved_4
  def decode(79, :ais_type), do: :ais_type_cargo_unknown
  def decode(80, :ais_type), do: :ais_type_tanker
  def decode(81, :ais_type), do: :ais_type_tanker_hazardous_a
  def decode(82, :ais_type), do: :ais_type_tanker_hazardous_b
  def decode(83, :ais_type), do: :ais_type_tanker_hazardous_c
  def decode(84, :ais_type), do: :ais_type_tanker_hazardous_d
  def decode(85, :ais_type), do: :ais_type_tanker_reserved_1
  def decode(86, :ais_type), do: :ais_type_tanker_reserved_2
  def decode(87, :ais_type), do: :ais_type_tanker_reserved_3
  def decode(88, :ais_type), do: :ais_type_tanker_reserved_4
  def decode(89, :ais_type), do: :ais_type_tanker_unknown
  def decode(90, :ais_type), do: :ais_type_other
  def decode(91, :ais_type), do: :ais_type_other_hazardous_a
  def decode(92, :ais_type), do: :ais_type_other_hazardous_b
  def decode(93, :ais_type), do: :ais_type_other_hazardous_c
  def decode(94, :ais_type), do: :ais_type_other_hazardous_d
  def decode(95, :ais_type), do: :ais_type_other_reserved_1
  def decode(96, :ais_type), do: :ais_type_other_reserved_2
  def decode(97, :ais_type), do: :ais_type_other_reserved_3
  def decode(98, :ais_type), do: :ais_type_other_reserved_4
  def decode(99, :ais_type), do: :ais_type_other_unknown
  def decode(1, :attitude_target_typemask), do: :attitude_target_typemask_body_roll_rate_ignore
  def decode(2, :attitude_target_typemask), do: :attitude_target_typemask_body_pitch_rate_ignore
  def decode(4, :attitude_target_typemask), do: :attitude_target_typemask_body_yaw_rate_ignore
  def decode(64, :attitude_target_typemask), do: :attitude_target_typemask_throttle_ignore
  def decode(128, :attitude_target_typemask), do: :attitude_target_typemask_attitude_ignore
  def decode(0b1, :camera_cap_flags), do: :camera_cap_flags_capture_video
  def decode(0b10, :camera_cap_flags), do: :camera_cap_flags_capture_image
  def decode(0b100, :camera_cap_flags), do: :camera_cap_flags_has_modes
  def decode(0b1000, :camera_cap_flags), do: :camera_cap_flags_can_capture_image_in_video_mode
  def decode(0b10000, :camera_cap_flags), do: :camera_cap_flags_can_capture_video_in_image_mode
  def decode(0b100000, :camera_cap_flags), do: :camera_cap_flags_has_image_survey_mode
  def decode(0b1000000, :camera_cap_flags), do: :camera_cap_flags_has_basic_zoom
  def decode(0b10000000, :camera_cap_flags), do: :camera_cap_flags_has_basic_focus
  def decode(0b100000000, :camera_cap_flags), do: :camera_cap_flags_has_video_stream
  def decode(0b1000000000, :camera_cap_flags), do: :camera_cap_flags_has_tracking_point
  def decode(0b10000000000, :camera_cap_flags), do: :camera_cap_flags_has_tracking_rectangle
  def decode(0b100000000000, :camera_cap_flags), do: :camera_cap_flags_has_tracking_geo_status
  def decode(0, :camera_feedback_flags), do: :camera_feedback_photo
  def decode(1, :camera_feedback_flags), do: :camera_feedback_video
  def decode(2, :camera_feedback_flags), do: :camera_feedback_badexposure
  def decode(3, :camera_feedback_flags), do: :camera_feedback_closedloop
  def decode(4, :camera_feedback_flags), do: :camera_feedback_openloop
  def decode(0, :camera_mode), do: :camera_mode_image
  def decode(1, :camera_mode), do: :camera_mode_video
  def decode(2, :camera_mode), do: :camera_mode_image_survey
  def decode(0, :camera_status_types), do: :camera_status_type_heartbeat
  def decode(1, :camera_status_types), do: :camera_status_type_trigger
  def decode(2, :camera_status_types), do: :camera_status_type_disconnect
  def decode(3, :camera_status_types), do: :camera_status_type_error
  def decode(4, :camera_status_types), do: :camera_status_type_lowbatt
  def decode(5, :camera_status_types), do: :camera_status_type_lowstore
  def decode(6, :camera_status_types), do: :camera_status_type_lowstorev
  def decode(0, :copter_mode), do: :copter_mode_stabilize
  def decode(1, :copter_mode), do: :copter_mode_acro
  def decode(2, :copter_mode), do: :copter_mode_alt_hold
  def decode(3, :copter_mode), do: :copter_mode_auto
  def decode(4, :copter_mode), do: :copter_mode_guided
  def decode(5, :copter_mode), do: :copter_mode_loiter
  def decode(6, :copter_mode), do: :copter_mode_rtl
  def decode(7, :copter_mode), do: :copter_mode_circle
  def decode(9, :copter_mode), do: :copter_mode_land
  def decode(11, :copter_mode), do: :copter_mode_drift
  def decode(13, :copter_mode), do: :copter_mode_sport
  def decode(14, :copter_mode), do: :copter_mode_flip
  def decode(15, :copter_mode), do: :copter_mode_autotune
  def decode(16, :copter_mode), do: :copter_mode_poshold
  def decode(17, :copter_mode), do: :copter_mode_brake
  def decode(18, :copter_mode), do: :copter_mode_throw
  def decode(19, :copter_mode), do: :copter_mode_avoid_adsb
  def decode(20, :copter_mode), do: :copter_mode_guided_nogps
  def decode(21, :copter_mode), do: :copter_mode_smart_rtl
  def decode(22, :copter_mode), do: :copter_mode_flowhold
  def decode(23, :copter_mode), do: :copter_mode_follow
  def decode(24, :copter_mode), do: :copter_mode_zigzag
  def decode(25, :copter_mode), do: :copter_mode_systemid
  def decode(26, :copter_mode), do: :copter_mode_autorotate
  def decode(0, :deepstall_stage), do: :deepstall_stage_fly_to_landing
  def decode(1, :deepstall_stage), do: :deepstall_stage_estimate_wind
  def decode(2, :deepstall_stage), do: :deepstall_stage_wait_for_breakout
  def decode(3, :deepstall_stage), do: :deepstall_stage_fly_to_arc
  def decode(4, :deepstall_stage), do: :deepstall_stage_arc
  def decode(5, :deepstall_stage), do: :deepstall_stage_approach
  def decode(6, :deepstall_stage), do: :deepstall_stage_land
  def decode(0, :device_op_bustype), do: :device_op_bustype_i2c
  def decode(1, :device_op_bustype), do: :device_op_bustype_spi
  def decode(0b1, :ekf_status_flags), do: :ekf_attitude
  def decode(0b10, :ekf_status_flags), do: :ekf_velocity_horiz
  def decode(0b100, :ekf_status_flags), do: :ekf_velocity_vert
  def decode(0b1000, :ekf_status_flags), do: :ekf_pos_horiz_rel
  def decode(0b10000, :ekf_status_flags), do: :ekf_pos_horiz_abs
  def decode(0b100000, :ekf_status_flags), do: :ekf_pos_vert_abs
  def decode(0b1000000, :ekf_status_flags), do: :ekf_pos_vert_agl
  def decode(0b10000000, :ekf_status_flags), do: :ekf_const_pos_mode
  def decode(0b100000000, :ekf_status_flags), do: :ekf_pred_pos_horiz_rel
  def decode(0b1000000000, :ekf_status_flags), do: :ekf_pred_pos_horiz_abs
  def decode(0b10000000000, :ekf_status_flags), do: :ekf_uninitialized
  def decode(0b1, :estimator_status_flags), do: :estimator_attitude
  def decode(0b10, :estimator_status_flags), do: :estimator_velocity_horiz
  def decode(0b100, :estimator_status_flags), do: :estimator_velocity_vert
  def decode(0b1000, :estimator_status_flags), do: :estimator_pos_horiz_rel
  def decode(0b10000, :estimator_status_flags), do: :estimator_pos_horiz_abs
  def decode(0b100000, :estimator_status_flags), do: :estimator_pos_vert_abs
  def decode(0b1000000, :estimator_status_flags), do: :estimator_pos_vert_agl
  def decode(0b10000000, :estimator_status_flags), do: :estimator_const_pos_mode
  def decode(0b100000000, :estimator_status_flags), do: :estimator_pred_pos_horiz_rel
  def decode(0b1000000000, :estimator_status_flags), do: :estimator_pred_pos_horiz_abs
  def decode(0b10000000000, :estimator_status_flags), do: :estimator_gps_glitch
  def decode(0b100000000000, :estimator_status_flags), do: :estimator_accel_error
  def decode(0, :fence_action), do: :fence_action_none
  def decode(1, :fence_action), do: :fence_action_guided
  def decode(2, :fence_action), do: :fence_action_report
  def decode(3, :fence_action), do: :fence_action_guided_thr_pass
  def decode(4, :fence_action), do: :fence_action_rtl
  def decode(0, :fence_breach), do: :fence_breach_none
  def decode(1, :fence_breach), do: :fence_breach_minalt
  def decode(2, :fence_breach), do: :fence_breach_maxalt
  def decode(3, :fence_breach), do: :fence_breach_boundary
  def decode(0, :fence_mitigate), do: :fence_mitigate_unknown
  def decode(1, :fence_mitigate), do: :fence_mitigate_none
  def decode(2, :fence_mitigate), do: :fence_mitigate_vel_limit
  def decode(0, :firmware_version_type), do: :firmware_version_type_dev
  def decode(64, :firmware_version_type), do: :firmware_version_type_alpha
  def decode(128, :firmware_version_type), do: :firmware_version_type_beta
  def decode(192, :firmware_version_type), do: :firmware_version_type_rc
  def decode(255, :firmware_version_type), do: :firmware_version_type_official
  def decode(0, :gimbal_axis), do: :gimbal_axis_yaw
  def decode(1, :gimbal_axis), do: :gimbal_axis_pitch
  def decode(2, :gimbal_axis), do: :gimbal_axis_roll
  def decode(0, :gimbal_axis_calibration_required), do: :gimbal_axis_calibration_required_unknown
  def decode(1, :gimbal_axis_calibration_required), do: :gimbal_axis_calibration_required_true
  def decode(2, :gimbal_axis_calibration_required), do: :gimbal_axis_calibration_required_false
  def decode(0, :gimbal_axis_calibration_status), do: :gimbal_axis_calibration_status_in_progress
  def decode(1, :gimbal_axis_calibration_status), do: :gimbal_axis_calibration_status_succeeded
  def decode(2, :gimbal_axis_calibration_status), do: :gimbal_axis_calibration_status_failed
  def decode(0, :gopro_burst_rate), do: :gopro_burst_rate_3_in_1_second
  def decode(1, :gopro_burst_rate), do: :gopro_burst_rate_5_in_1_second
  def decode(2, :gopro_burst_rate), do: :gopro_burst_rate_10_in_1_second
  def decode(3, :gopro_burst_rate), do: :gopro_burst_rate_10_in_2_second
  def decode(4, :gopro_burst_rate), do: :gopro_burst_rate_10_in_3_second
  def decode(5, :gopro_burst_rate), do: :gopro_burst_rate_30_in_1_second
  def decode(6, :gopro_burst_rate), do: :gopro_burst_rate_30_in_2_second
  def decode(7, :gopro_burst_rate), do: :gopro_burst_rate_30_in_3_second
  def decode(8, :gopro_burst_rate), do: :gopro_burst_rate_30_in_6_second
  def decode(0, :gopro_capture_mode), do: :gopro_capture_mode_video
  def decode(1, :gopro_capture_mode), do: :gopro_capture_mode_photo
  def decode(2, :gopro_capture_mode), do: :gopro_capture_mode_burst
  def decode(3, :gopro_capture_mode), do: :gopro_capture_mode_time_lapse
  def decode(4, :gopro_capture_mode), do: :gopro_capture_mode_multi_shot
  def decode(5, :gopro_capture_mode), do: :gopro_capture_mode_playback
  def decode(6, :gopro_capture_mode), do: :gopro_capture_mode_setup
  def decode(255, :gopro_capture_mode), do: :gopro_capture_mode_unknown
  def decode(0, :gopro_charging), do: :gopro_charging_disabled
  def decode(1, :gopro_charging), do: :gopro_charging_enabled
  def decode(0, :gopro_command), do: :gopro_command_power
  def decode(1, :gopro_command), do: :gopro_command_capture_mode
  def decode(2, :gopro_command), do: :gopro_command_shutter
  def decode(3, :gopro_command), do: :gopro_command_battery
  def decode(4, :gopro_command), do: :gopro_command_model
  def decode(5, :gopro_command), do: :gopro_command_video_settings
  def decode(6, :gopro_command), do: :gopro_command_low_light
  def decode(7, :gopro_command), do: :gopro_command_photo_resolution
  def decode(8, :gopro_command), do: :gopro_command_photo_burst_rate
  def decode(9, :gopro_command), do: :gopro_command_protune
  def decode(10, :gopro_command), do: :gopro_command_protune_white_balance
  def decode(11, :gopro_command), do: :gopro_command_protune_colour
  def decode(12, :gopro_command), do: :gopro_command_protune_gain
  def decode(13, :gopro_command), do: :gopro_command_protune_sharpness
  def decode(14, :gopro_command), do: :gopro_command_protune_exposure
  def decode(15, :gopro_command), do: :gopro_command_time
  def decode(16, :gopro_command), do: :gopro_command_charging
  def decode(0, :gopro_field_of_view), do: :gopro_field_of_view_wide
  def decode(1, :gopro_field_of_view), do: :gopro_field_of_view_medium
  def decode(2, :gopro_field_of_view), do: :gopro_field_of_view_narrow
  def decode(0, :gopro_frame_rate), do: :gopro_frame_rate_12
  def decode(1, :gopro_frame_rate), do: :gopro_frame_rate_15
  def decode(2, :gopro_frame_rate), do: :gopro_frame_rate_24
  def decode(3, :gopro_frame_rate), do: :gopro_frame_rate_25
  def decode(4, :gopro_frame_rate), do: :gopro_frame_rate_30
  def decode(5, :gopro_frame_rate), do: :gopro_frame_rate_48
  def decode(6, :gopro_frame_rate), do: :gopro_frame_rate_50
  def decode(7, :gopro_frame_rate), do: :gopro_frame_rate_60
  def decode(8, :gopro_frame_rate), do: :gopro_frame_rate_80
  def decode(9, :gopro_frame_rate), do: :gopro_frame_rate_90
  def decode(10, :gopro_frame_rate), do: :gopro_frame_rate_100
  def decode(11, :gopro_frame_rate), do: :gopro_frame_rate_120
  def decode(12, :gopro_frame_rate), do: :gopro_frame_rate_240
  def decode(13, :gopro_frame_rate), do: :gopro_frame_rate_12_5
  def decode(1, :gopro_heartbeat_flags), do: :gopro_flag_recording
  def decode(0, :gopro_heartbeat_status), do: :gopro_heartbeat_status_disconnected
  def decode(1, :gopro_heartbeat_status), do: :gopro_heartbeat_status_incompatible
  def decode(2, :gopro_heartbeat_status), do: :gopro_heartbeat_status_connected
  def decode(3, :gopro_heartbeat_status), do: :gopro_heartbeat_status_error
  def decode(0, :gopro_model), do: :gopro_model_unknown
  def decode(1, :gopro_model), do: :gopro_model_hero_3_plus_silver
  def decode(2, :gopro_model), do: :gopro_model_hero_3_plus_black
  def decode(3, :gopro_model), do: :gopro_model_hero_4_silver
  def decode(4, :gopro_model), do: :gopro_model_hero_4_black
  def decode(0, :gopro_photo_resolution), do: :gopro_photo_resolution_5mp_medium
  def decode(1, :gopro_photo_resolution), do: :gopro_photo_resolution_7mp_medium
  def decode(2, :gopro_photo_resolution), do: :gopro_photo_resolution_7mp_wide
  def decode(3, :gopro_photo_resolution), do: :gopro_photo_resolution_10mp_wide
  def decode(4, :gopro_photo_resolution), do: :gopro_photo_resolution_12mp_wide
  def decode(0, :gopro_protune_colour), do: :gopro_protune_colour_standard
  def decode(1, :gopro_protune_colour), do: :gopro_protune_colour_neutral
  def decode(0, :gopro_protune_exposure), do: :gopro_protune_exposure_neg_5_0
  def decode(1, :gopro_protune_exposure), do: :gopro_protune_exposure_neg_4_5
  def decode(2, :gopro_protune_exposure), do: :gopro_protune_exposure_neg_4_0
  def decode(3, :gopro_protune_exposure), do: :gopro_protune_exposure_neg_3_5
  def decode(4, :gopro_protune_exposure), do: :gopro_protune_exposure_neg_3_0
  def decode(5, :gopro_protune_exposure), do: :gopro_protune_exposure_neg_2_5
  def decode(6, :gopro_protune_exposure), do: :gopro_protune_exposure_neg_2_0
  def decode(7, :gopro_protune_exposure), do: :gopro_protune_exposure_neg_1_5
  def decode(8, :gopro_protune_exposure), do: :gopro_protune_exposure_neg_1_0
  def decode(9, :gopro_protune_exposure), do: :gopro_protune_exposure_neg_0_5
  def decode(10, :gopro_protune_exposure), do: :gopro_protune_exposure_zero
  def decode(11, :gopro_protune_exposure), do: :gopro_protune_exposure_pos_0_5
  def decode(12, :gopro_protune_exposure), do: :gopro_protune_exposure_pos_1_0
  def decode(13, :gopro_protune_exposure), do: :gopro_protune_exposure_pos_1_5
  def decode(14, :gopro_protune_exposure), do: :gopro_protune_exposure_pos_2_0
  def decode(15, :gopro_protune_exposure), do: :gopro_protune_exposure_pos_2_5
  def decode(16, :gopro_protune_exposure), do: :gopro_protune_exposure_pos_3_0
  def decode(17, :gopro_protune_exposure), do: :gopro_protune_exposure_pos_3_5
  def decode(18, :gopro_protune_exposure), do: :gopro_protune_exposure_pos_4_0
  def decode(19, :gopro_protune_exposure), do: :gopro_protune_exposure_pos_4_5
  def decode(20, :gopro_protune_exposure), do: :gopro_protune_exposure_pos_5_0
  def decode(0, :gopro_protune_gain), do: :gopro_protune_gain_400
  def decode(1, :gopro_protune_gain), do: :gopro_protune_gain_800
  def decode(2, :gopro_protune_gain), do: :gopro_protune_gain_1600
  def decode(3, :gopro_protune_gain), do: :gopro_protune_gain_3200
  def decode(4, :gopro_protune_gain), do: :gopro_protune_gain_6400
  def decode(0, :gopro_protune_sharpness), do: :gopro_protune_sharpness_low
  def decode(1, :gopro_protune_sharpness), do: :gopro_protune_sharpness_medium
  def decode(2, :gopro_protune_sharpness), do: :gopro_protune_sharpness_high
  def decode(0, :gopro_protune_white_balance), do: :gopro_protune_white_balance_auto
  def decode(1, :gopro_protune_white_balance), do: :gopro_protune_white_balance_3000k
  def decode(2, :gopro_protune_white_balance), do: :gopro_protune_white_balance_5500k
  def decode(3, :gopro_protune_white_balance), do: :gopro_protune_white_balance_6500k
  def decode(4, :gopro_protune_white_balance), do: :gopro_protune_white_balance_raw
  def decode(0, :gopro_request_status), do: :gopro_request_success
  def decode(1, :gopro_request_status), do: :gopro_request_failed
  def decode(0, :gopro_resolution), do: :gopro_resolution_480p
  def decode(1, :gopro_resolution), do: :gopro_resolution_720p
  def decode(2, :gopro_resolution), do: :gopro_resolution_960p
  def decode(3, :gopro_resolution), do: :gopro_resolution_1080p
  def decode(4, :gopro_resolution), do: :gopro_resolution_1440p
  def decode(5, :gopro_resolution), do: :gopro_resolution_2_7k_17_9
  def decode(6, :gopro_resolution), do: :gopro_resolution_2_7k_16_9
  def decode(7, :gopro_resolution), do: :gopro_resolution_2_7k_4_3
  def decode(8, :gopro_resolution), do: :gopro_resolution_4k_16_9
  def decode(9, :gopro_resolution), do: :gopro_resolution_4k_17_9
  def decode(10, :gopro_resolution), do: :gopro_resolution_720p_superview
  def decode(11, :gopro_resolution), do: :gopro_resolution_1080p_superview
  def decode(12, :gopro_resolution), do: :gopro_resolution_2_7k_superview
  def decode(13, :gopro_resolution), do: :gopro_resolution_4k_superview
  def decode(1, :gopro_video_settings_flags), do: :gopro_video_settings_tv_mode
  def decode(0, :gps_fix_type), do: :gps_fix_type_no_gps
  def decode(1, :gps_fix_type), do: :gps_fix_type_no_fix
  def decode(2, :gps_fix_type), do: :gps_fix_type_2d_fix
  def decode(3, :gps_fix_type), do: :gps_fix_type_3d_fix
  def decode(4, :gps_fix_type), do: :gps_fix_type_dgps
  def decode(5, :gps_fix_type), do: :gps_fix_type_rtk_float
  def decode(6, :gps_fix_type), do: :gps_fix_type_rtk_fixed
  def decode(7, :gps_fix_type), do: :gps_fix_type_static
  def decode(8, :gps_fix_type), do: :gps_fix_type_ppp
  def decode(0b1, :gps_input_ignore_flags), do: :gps_input_ignore_flag_alt
  def decode(0b10, :gps_input_ignore_flags), do: :gps_input_ignore_flag_hdop
  def decode(0b100, :gps_input_ignore_flags), do: :gps_input_ignore_flag_vdop
  def decode(0b1000, :gps_input_ignore_flags), do: :gps_input_ignore_flag_vel_horiz
  def decode(0b10000, :gps_input_ignore_flags), do: :gps_input_ignore_flag_vel_vert
  def decode(0b100000, :gps_input_ignore_flags), do: :gps_input_ignore_flag_speed_accuracy
  def decode(0b1000000, :gps_input_ignore_flags), do: :gps_input_ignore_flag_horizontal_accuracy
  def decode(0b10000000, :gps_input_ignore_flags), do: :gps_input_ignore_flag_vertical_accuracy
  def decode(0, :gripper_actions), do: :gripper_action_release
  def decode(1, :gripper_actions), do: :gripper_action_grab
  def decode(0, :heading_type), do: :heading_type_course_over_ground
  def decode(1, :heading_type), do: :heading_type_heading
  def decode(0b1, :hl_failure_flag), do: :hl_failure_flag_gps
  def decode(0b10, :hl_failure_flag), do: :hl_failure_flag_differential_pressure
  def decode(0b100, :hl_failure_flag), do: :hl_failure_flag_absolute_pressure
  def decode(0b1000, :hl_failure_flag), do: :hl_failure_flag_3d_accel
  def decode(0b10000, :hl_failure_flag), do: :hl_failure_flag_3d_gyro
  def decode(0b100000, :hl_failure_flag), do: :hl_failure_flag_3d_mag
  def decode(0b1000000, :hl_failure_flag), do: :hl_failure_flag_terrain
  def decode(0b10000000, :hl_failure_flag), do: :hl_failure_flag_battery
  def decode(0b100000000, :hl_failure_flag), do: :hl_failure_flag_rc_receiver
  def decode(0b1000000000, :hl_failure_flag), do: :hl_failure_flag_offboard_link
  def decode(0b10000000000, :hl_failure_flag), do: :hl_failure_flag_engine
  def decode(0b100000000000, :hl_failure_flag), do: :hl_failure_flag_geofence
  def decode(0b1000000000000, :hl_failure_flag), do: :hl_failure_flag_estimator
  def decode(0b10000000000000, :hl_failure_flag), do: :hl_failure_flag_mission
  def decode(0, :icarous_fms_state), do: :icarous_fms_state_idle
  def decode(1, :icarous_fms_state), do: :icarous_fms_state_takeoff
  def decode(2, :icarous_fms_state), do: :icarous_fms_state_climb
  def decode(3, :icarous_fms_state), do: :icarous_fms_state_cruise
  def decode(4, :icarous_fms_state), do: :icarous_fms_state_approach
  def decode(5, :icarous_fms_state), do: :icarous_fms_state_land
  def decode(0, :icarous_track_band_types), do: :icarous_track_band_type_none
  def decode(1, :icarous_track_band_types), do: :icarous_track_band_type_near
  def decode(2, :icarous_track_band_types), do: :icarous_track_band_type_recovery
  def decode(0, :landing_target_type), do: :landing_target_type_light_beacon
  def decode(1, :landing_target_type), do: :landing_target_type_radio_beacon
  def decode(2, :landing_target_type), do: :landing_target_type_vision_fiducial
  def decode(3, :landing_target_type), do: :landing_target_type_vision_other
  def decode(0, :led_control_pattern), do: :led_control_pattern_off
  def decode(1, :led_control_pattern), do: :led_control_pattern_firmwareupdate
  def decode(255, :led_control_pattern), do: :led_control_pattern_custom
  def decode(0b1, :limit_module), do: :limit_gpslock
  def decode(0b10, :limit_module), do: :limit_geofence
  def decode(0b100, :limit_module), do: :limit_altitude
  def decode(0, :limits_state), do: :limits_init
  def decode(1, :limits_state), do: :limits_disabled
  def decode(2, :limits_state), do: :limits_enabled
  def decode(3, :limits_state), do: :limits_triggered
  def decode(4, :limits_state), do: :limits_recovering
  def decode(5, :limits_state), do: :limits_recovered
  def decode(0, :mag_cal_status), do: :mag_cal_not_started
  def decode(1, :mag_cal_status), do: :mag_cal_waiting_to_start
  def decode(2, :mag_cal_status), do: :mag_cal_running_step_one
  def decode(3, :mag_cal_status), do: :mag_cal_running_step_two
  def decode(4, :mag_cal_status), do: :mag_cal_success
  def decode(5, :mag_cal_status), do: :mag_cal_failed
  def decode(6, :mag_cal_status), do: :mag_cal_bad_orientation
  def decode(7, :mag_cal_status), do: :mag_cal_bad_radius
  def decode(0, :mav_arm_auth_denied_reason), do: :mav_arm_auth_denied_reason_generic
  def decode(1, :mav_arm_auth_denied_reason), do: :mav_arm_auth_denied_reason_none
  def decode(2, :mav_arm_auth_denied_reason), do: :mav_arm_auth_denied_reason_invalid_waypoint
  def decode(3, :mav_arm_auth_denied_reason), do: :mav_arm_auth_denied_reason_timeout
  def decode(4, :mav_arm_auth_denied_reason), do: :mav_arm_auth_denied_reason_airspace_in_use
  def decode(5, :mav_arm_auth_denied_reason), do: :mav_arm_auth_denied_reason_bad_weather
  def decode(0, :mav_autopilot), do: :mav_autopilot_generic
  def decode(1, :mav_autopilot), do: :mav_autopilot_reserved
  def decode(2, :mav_autopilot), do: :mav_autopilot_slugs
  def decode(3, :mav_autopilot), do: :mav_autopilot_ardupilotmega
  def decode(4, :mav_autopilot), do: :mav_autopilot_openpilot
  def decode(5, :mav_autopilot), do: :mav_autopilot_generic_waypoints_only
  def decode(6, :mav_autopilot), do: :mav_autopilot_generic_waypoints_and_simple_navigation_only
  def decode(7, :mav_autopilot), do: :mav_autopilot_generic_mission_full
  def decode(8, :mav_autopilot), do: :mav_autopilot_invalid
  def decode(9, :mav_autopilot), do: :mav_autopilot_ppz
  def decode(10, :mav_autopilot), do: :mav_autopilot_udb
  def decode(11, :mav_autopilot), do: :mav_autopilot_fp
  def decode(12, :mav_autopilot), do: :mav_autopilot_px4
  def decode(13, :mav_autopilot), do: :mav_autopilot_smaccmpilot
  def decode(14, :mav_autopilot), do: :mav_autopilot_autoquad
  def decode(15, :mav_autopilot), do: :mav_autopilot_armazila
  def decode(16, :mav_autopilot), do: :mav_autopilot_aerob
  def decode(17, :mav_autopilot), do: :mav_autopilot_asluav
  def decode(18, :mav_autopilot), do: :mav_autopilot_smartap
  def decode(19, :mav_autopilot), do: :mav_autopilot_airrails
  def decode(0, :mav_battery_charge_state), do: :mav_battery_charge_state_undefined
  def decode(1, :mav_battery_charge_state), do: :mav_battery_charge_state_ok
  def decode(2, :mav_battery_charge_state), do: :mav_battery_charge_state_low
  def decode(3, :mav_battery_charge_state), do: :mav_battery_charge_state_critical
  def decode(4, :mav_battery_charge_state), do: :mav_battery_charge_state_emergency
  def decode(5, :mav_battery_charge_state), do: :mav_battery_charge_state_failed
  def decode(6, :mav_battery_charge_state), do: :mav_battery_charge_state_unhealthy
  def decode(7, :mav_battery_charge_state), do: :mav_battery_charge_state_charging
  def decode(0, :mav_battery_function), do: :mav_battery_function_unknown
  def decode(1, :mav_battery_function), do: :mav_battery_function_all
  def decode(2, :mav_battery_function), do: :mav_battery_function_propulsion
  def decode(3, :mav_battery_function), do: :mav_battery_function_avionics
  def decode(4, :mav_battery_function), do: :mav_battery_type_payload
  def decode(0, :mav_battery_type), do: :mav_battery_type_unknown
  def decode(1, :mav_battery_type), do: :mav_battery_type_lipo
  def decode(2, :mav_battery_type), do: :mav_battery_type_life
  def decode(3, :mav_battery_type), do: :mav_battery_type_lion
  def decode(4, :mav_battery_type), do: :mav_battery_type_nimh
  def decode(16, :mav_cmd), do: :mav_cmd_nav_waypoint
  def decode(17, :mav_cmd), do: :mav_cmd_nav_loiter_unlim
  def decode(18, :mav_cmd), do: :mav_cmd_nav_loiter_turns
  def decode(19, :mav_cmd), do: :mav_cmd_nav_loiter_time
  def decode(20, :mav_cmd), do: :mav_cmd_nav_return_to_launch
  def decode(21, :mav_cmd), do: :mav_cmd_nav_land
  def decode(22, :mav_cmd), do: :mav_cmd_nav_takeoff
  def decode(23, :mav_cmd), do: :mav_cmd_nav_land_local
  def decode(24, :mav_cmd), do: :mav_cmd_nav_takeoff_local
  def decode(25, :mav_cmd), do: :mav_cmd_nav_follow
  def decode(30, :mav_cmd), do: :mav_cmd_nav_continue_and_change_alt
  def decode(31, :mav_cmd), do: :mav_cmd_nav_loiter_to_alt
  def decode(32, :mav_cmd), do: :mav_cmd_do_follow
  def decode(33, :mav_cmd), do: :mav_cmd_do_follow_reposition
  def decode(80, :mav_cmd), do: :mav_cmd_nav_roi
  def decode(81, :mav_cmd), do: :mav_cmd_nav_pathplanning
  def decode(82, :mav_cmd), do: :mav_cmd_nav_spline_waypoint
  def decode(83, :mav_cmd), do: :mav_cmd_nav_altitude_wait
  def decode(84, :mav_cmd), do: :mav_cmd_nav_vtol_takeoff
  def decode(85, :mav_cmd), do: :mav_cmd_nav_vtol_land
  def decode(92, :mav_cmd), do: :mav_cmd_nav_guided_enable
  def decode(93, :mav_cmd), do: :mav_cmd_nav_delay
  def decode(94, :mav_cmd), do: :mav_cmd_nav_payload_place
  def decode(95, :mav_cmd), do: :mav_cmd_nav_last
  def decode(112, :mav_cmd), do: :mav_cmd_condition_delay
  def decode(113, :mav_cmd), do: :mav_cmd_condition_change_alt
  def decode(114, :mav_cmd), do: :mav_cmd_condition_distance
  def decode(115, :mav_cmd), do: :mav_cmd_condition_yaw
  def decode(159, :mav_cmd), do: :mav_cmd_condition_last
  def decode(176, :mav_cmd), do: :mav_cmd_do_set_mode
  def decode(177, :mav_cmd), do: :mav_cmd_do_jump
  def decode(178, :mav_cmd), do: :mav_cmd_do_change_speed
  def decode(179, :mav_cmd), do: :mav_cmd_do_set_home
  def decode(180, :mav_cmd), do: :mav_cmd_do_set_parameter
  def decode(181, :mav_cmd), do: :mav_cmd_do_set_relay
  def decode(182, :mav_cmd), do: :mav_cmd_do_repeat_relay
  def decode(183, :mav_cmd), do: :mav_cmd_do_set_servo
  def decode(184, :mav_cmd), do: :mav_cmd_do_repeat_servo
  def decode(185, :mav_cmd), do: :mav_cmd_do_flighttermination
  def decode(186, :mav_cmd), do: :mav_cmd_do_change_altitude
  def decode(189, :mav_cmd), do: :mav_cmd_do_land_start
  def decode(190, :mav_cmd), do: :mav_cmd_do_rally_land
  def decode(191, :mav_cmd), do: :mav_cmd_do_go_around
  def decode(192, :mav_cmd), do: :mav_cmd_do_reposition
  def decode(193, :mav_cmd), do: :mav_cmd_do_pause_continue
  def decode(194, :mav_cmd), do: :mav_cmd_do_set_reverse
  def decode(195, :mav_cmd), do: :mav_cmd_do_set_roi_location
  def decode(196, :mav_cmd), do: :mav_cmd_do_set_roi_wpnext_offset
  def decode(197, :mav_cmd), do: :mav_cmd_do_set_roi_none
  def decode(198, :mav_cmd), do: :mav_cmd_do_set_roi_sysid
  def decode(200, :mav_cmd), do: :mav_cmd_do_control_video
  def decode(201, :mav_cmd), do: :mav_cmd_do_set_roi
  def decode(202, :mav_cmd), do: :mav_cmd_do_digicam_configure
  def decode(203, :mav_cmd), do: :mav_cmd_do_digicam_control
  def decode(204, :mav_cmd), do: :mav_cmd_do_mount_configure
  def decode(205, :mav_cmd), do: :mav_cmd_do_mount_control
  def decode(206, :mav_cmd), do: :mav_cmd_do_set_cam_trigg_dist
  def decode(207, :mav_cmd), do: :mav_cmd_do_fence_enable
  def decode(208, :mav_cmd), do: :mav_cmd_do_parachute
  def decode(209, :mav_cmd), do: :mav_cmd_do_motor_test
  def decode(210, :mav_cmd), do: :mav_cmd_do_inverted_flight
  def decode(211, :mav_cmd), do: :mav_cmd_do_gripper
  def decode(212, :mav_cmd), do: :mav_cmd_do_autotune_enable
  def decode(213, :mav_cmd), do: :mav_cmd_nav_set_yaw_speed
  def decode(214, :mav_cmd), do: :mav_cmd_do_set_cam_trigg_interval
  def decode(215, :mav_cmd), do: :mav_cmd_do_set_resume_repeat_dist
  def decode(216, :mav_cmd), do: :mav_cmd_do_sprayer
  def decode(217, :mav_cmd), do: :mav_cmd_do_send_script_message
  def decode(218, :mav_cmd), do: :mav_cmd_do_aux_function
  def decode(220, :mav_cmd), do: :mav_cmd_do_mount_control_quat
  def decode(221, :mav_cmd), do: :mav_cmd_do_guided_master
  def decode(222, :mav_cmd), do: :mav_cmd_do_guided_limits
  def decode(223, :mav_cmd), do: :mav_cmd_do_engine_control
  def decode(224, :mav_cmd), do: :mav_cmd_do_set_mission_current
  def decode(240, :mav_cmd), do: :mav_cmd_do_last
  def decode(241, :mav_cmd), do: :mav_cmd_preflight_calibration
  def decode(242, :mav_cmd), do: :mav_cmd_preflight_set_sensor_offsets
  def decode(243, :mav_cmd), do: :mav_cmd_preflight_uavcan
  def decode(245, :mav_cmd), do: :mav_cmd_preflight_storage
  def decode(246, :mav_cmd), do: :mav_cmd_preflight_reboot_shutdown
  def decode(252, :mav_cmd), do: :mav_cmd_override_goto
  def decode(260, :mav_cmd), do: :mav_cmd_oblique_survey
  def decode(300, :mav_cmd), do: :mav_cmd_mission_start
  def decode(400, :mav_cmd), do: :mav_cmd_component_arm_disarm
  def decode(410, :mav_cmd), do: :mav_cmd_get_home_position
  def decode(500, :mav_cmd), do: :mav_cmd_start_rx_pair
  def decode(510, :mav_cmd), do: :mav_cmd_get_message_interval
  def decode(511, :mav_cmd), do: :mav_cmd_set_message_interval
  def decode(512, :mav_cmd), do: :mav_cmd_request_message
  def decode(519, :mav_cmd), do: :mav_cmd_request_protocol_version
  def decode(520, :mav_cmd), do: :mav_cmd_request_autopilot_capabilities
  def decode(521, :mav_cmd), do: :mav_cmd_request_camera_information
  def decode(522, :mav_cmd), do: :mav_cmd_request_camera_settings
  def decode(525, :mav_cmd), do: :mav_cmd_request_storage_information
  def decode(526, :mav_cmd), do: :mav_cmd_storage_format
  def decode(527, :mav_cmd), do: :mav_cmd_request_camera_capture_status
  def decode(528, :mav_cmd), do: :mav_cmd_request_flight_information
  def decode(529, :mav_cmd), do: :mav_cmd_reset_camera_settings
  def decode(530, :mav_cmd), do: :mav_cmd_set_camera_mode
  def decode(600, :mav_cmd), do: :mav_cmd_jump_tag
  def decode(601, :mav_cmd), do: :mav_cmd_do_jump_tag
  def decode(2000, :mav_cmd), do: :mav_cmd_image_start_capture
  def decode(2001, :mav_cmd), do: :mav_cmd_image_stop_capture
  def decode(2003, :mav_cmd), do: :mav_cmd_do_trigger_control
  def decode(2500, :mav_cmd), do: :mav_cmd_video_start_capture
  def decode(2501, :mav_cmd), do: :mav_cmd_video_stop_capture
  def decode(2502, :mav_cmd), do: :mav_cmd_video_start_streaming
  def decode(2503, :mav_cmd), do: :mav_cmd_video_stop_streaming
  def decode(2504, :mav_cmd), do: :mav_cmd_request_video_stream_information
  def decode(2505, :mav_cmd), do: :mav_cmd_request_video_stream_status
  def decode(2510, :mav_cmd), do: :mav_cmd_logging_start
  def decode(2511, :mav_cmd), do: :mav_cmd_logging_stop
  def decode(2520, :mav_cmd), do: :mav_cmd_airframe_configuration
  def decode(2600, :mav_cmd), do: :mav_cmd_control_high_latency
  def decode(2800, :mav_cmd), do: :mav_cmd_panorama_create
  def decode(3000, :mav_cmd), do: :mav_cmd_do_vtol_transition
  def decode(3001, :mav_cmd), do: :mav_cmd_arm_authorization_request
  def decode(4000, :mav_cmd), do: :mav_cmd_set_guided_submode_standard
  def decode(4001, :mav_cmd), do: :mav_cmd_set_guided_submode_circle
  def decode(5000, :mav_cmd), do: :mav_cmd_nav_fence_return_point
  def decode(5001, :mav_cmd), do: :mav_cmd_nav_fence_polygon_vertex_inclusion
  def decode(5002, :mav_cmd), do: :mav_cmd_nav_fence_polygon_vertex_exclusion
  def decode(5003, :mav_cmd), do: :mav_cmd_nav_fence_circle_inclusion
  def decode(5004, :mav_cmd), do: :mav_cmd_nav_fence_circle_exclusion
  def decode(5100, :mav_cmd), do: :mav_cmd_nav_rally_point
  def decode(5200, :mav_cmd), do: :mav_cmd_uavcan_get_node_info
  def decode(30001, :mav_cmd), do: :mav_cmd_payload_prepare_deploy
  def decode(30002, :mav_cmd), do: :mav_cmd_payload_control_deploy
  def decode(31000, :mav_cmd), do: :mav_cmd_waypoint_user_1
  def decode(31001, :mav_cmd), do: :mav_cmd_waypoint_user_2
  def decode(31002, :mav_cmd), do: :mav_cmd_waypoint_user_3
  def decode(31003, :mav_cmd), do: :mav_cmd_waypoint_user_4
  def decode(31004, :mav_cmd), do: :mav_cmd_waypoint_user_5
  def decode(31005, :mav_cmd), do: :mav_cmd_spatial_user_1
  def decode(31006, :mav_cmd), do: :mav_cmd_spatial_user_2
  def decode(31007, :mav_cmd), do: :mav_cmd_spatial_user_3
  def decode(31008, :mav_cmd), do: :mav_cmd_spatial_user_4
  def decode(31009, :mav_cmd), do: :mav_cmd_spatial_user_5
  def decode(31010, :mav_cmd), do: :mav_cmd_user_1
  def decode(31011, :mav_cmd), do: :mav_cmd_user_2
  def decode(31012, :mav_cmd), do: :mav_cmd_user_3
  def decode(31013, :mav_cmd), do: :mav_cmd_user_4
  def decode(31014, :mav_cmd), do: :mav_cmd_user_5
  def decode(42000, :mav_cmd), do: :mav_cmd_power_off_initiated
  def decode(42001, :mav_cmd), do: :mav_cmd_solo_btn_fly_click
  def decode(42002, :mav_cmd), do: :mav_cmd_solo_btn_fly_hold
  def decode(42003, :mav_cmd), do: :mav_cmd_solo_btn_pause_click
  def decode(42004, :mav_cmd), do: :mav_cmd_fixed_mag_cal
  def decode(42005, :mav_cmd), do: :mav_cmd_fixed_mag_cal_field
  def decode(42006, :mav_cmd), do: :mav_cmd_fixed_mag_cal_yaw
  def decode(42424, :mav_cmd), do: :mav_cmd_do_start_mag_cal
  def decode(42425, :mav_cmd), do: :mav_cmd_do_accept_mag_cal
  def decode(42426, :mav_cmd), do: :mav_cmd_do_cancel_mag_cal
  def decode(42427, :mav_cmd), do: :mav_cmd_set_factory_test_mode
  def decode(42428, :mav_cmd), do: :mav_cmd_do_send_banner
  def decode(42429, :mav_cmd), do: :mav_cmd_accelcal_vehicle_pos
  def decode(42501, :mav_cmd), do: :mav_cmd_gimbal_reset
  def decode(42502, :mav_cmd), do: :mav_cmd_gimbal_axis_calibration_status
  def decode(42503, :mav_cmd), do: :mav_cmd_gimbal_request_axis_calibration
  def decode(42505, :mav_cmd), do: :mav_cmd_gimbal_full_reset
  def decode(42600, :mav_cmd), do: :mav_cmd_do_winch
  def decode(42650, :mav_cmd), do: :mav_cmd_flash_bootloader
  def decode(42651, :mav_cmd), do: :mav_cmd_battery_reset
  def decode(42700, :mav_cmd), do: :mav_cmd_debug_trap
  def decode(42701, :mav_cmd), do: :mav_cmd_scripting
  def decode(43000, :mav_cmd), do: :mav_cmd_guided_change_speed
  def decode(43001, :mav_cmd), do: :mav_cmd_guided_change_altitude
  def decode(43002, :mav_cmd), do: :mav_cmd_guided_change_heading
  def decode(0, :mav_cmd_ack), do: :mav_cmd_ack_ok
  def decode(1, :mav_cmd_ack), do: :mav_cmd_ack_err_fail
  def decode(2, :mav_cmd_ack), do: :mav_cmd_ack_err_access_denied
  def decode(3, :mav_cmd_ack), do: :mav_cmd_ack_err_not_supported
  def decode(4, :mav_cmd_ack), do: :mav_cmd_ack_err_coordinate_frame_not_supported
  def decode(5, :mav_cmd_ack), do: :mav_cmd_ack_err_coordinates_out_of_range
  def decode(6, :mav_cmd_ack), do: :mav_cmd_ack_err_x_lat_out_of_range
  def decode(7, :mav_cmd_ack), do: :mav_cmd_ack_err_y_lon_out_of_range
  def decode(8, :mav_cmd_ack), do: :mav_cmd_ack_err_z_alt_out_of_range
  def decode(0, :mav_cmd_do_aux_function_switch_level), do: :mav_cmd_do_aux_function_switch_level_low
  def decode(1, :mav_cmd_do_aux_function_switch_level), do: :mav_cmd_do_aux_function_switch_level_middle
  def decode(2, :mav_cmd_do_aux_function_switch_level), do: :mav_cmd_do_aux_function_switch_level_high
  def decode(0, :mav_collision_action), do: :mav_collision_action_none
  def decode(1, :mav_collision_action), do: :mav_collision_action_report
  def decode(2, :mav_collision_action), do: :mav_collision_action_ascend_or_descend
  def decode(3, :mav_collision_action), do: :mav_collision_action_move_horizontally
  def decode(4, :mav_collision_action), do: :mav_collision_action_move_perpendicular
  def decode(5, :mav_collision_action), do: :mav_collision_action_rtl
  def decode(6, :mav_collision_action), do: :mav_collision_action_hover
  def decode(0, :mav_collision_src), do: :mav_collision_src_adsb
  def decode(1, :mav_collision_src), do: :mav_collision_src_mavlink_gps_global_int
  def decode(0, :mav_collision_threat_level), do: :mav_collision_threat_level_none
  def decode(1, :mav_collision_threat_level), do: :mav_collision_threat_level_low
  def decode(2, :mav_collision_threat_level), do: :mav_collision_threat_level_high
  def decode(0, :mav_component), do: :mav_comp_id_all
  def decode(1, :mav_component), do: :mav_comp_id_autopilot1
  def decode(25, :mav_component), do: :mav_comp_id_user1
  def decode(26, :mav_component), do: :mav_comp_id_user2
  def decode(27, :mav_component), do: :mav_comp_id_user3
  def decode(28, :mav_component), do: :mav_comp_id_user4
  def decode(29, :mav_component), do: :mav_comp_id_user5
  def decode(30, :mav_component), do: :mav_comp_id_user6
  def decode(31, :mav_component), do: :mav_comp_id_user7
  def decode(32, :mav_component), do: :mav_comp_id_user8
  def decode(33, :mav_component), do: :mav_comp_id_user9
  def decode(34, :mav_component), do: :mav_comp_id_user10
  def decode(35, :mav_component), do: :mav_comp_id_user11
  def decode(36, :mav_component), do: :mav_comp_id_user12
  def decode(37, :mav_component), do: :mav_comp_id_user13
  def decode(38, :mav_component), do: :mav_comp_id_user14
  def decode(39, :mav_component), do: :mav_comp_id_user15
  def decode(40, :mav_component), do: :mav_comp_id_user16
  def decode(41, :mav_component), do: :mav_comp_id_user17
  def decode(42, :mav_component), do: :mav_comp_id_user18
  def decode(43, :mav_component), do: :mav_comp_id_user19
  def decode(44, :mav_component), do: :mav_comp_id_user20
  def decode(45, :mav_component), do: :mav_comp_id_user21
  def decode(46, :mav_component), do: :mav_comp_id_user22
  def decode(47, :mav_component), do: :mav_comp_id_user23
  def decode(48, :mav_component), do: :mav_comp_id_user24
  def decode(49, :mav_component), do: :mav_comp_id_user25
  def decode(50, :mav_component), do: :mav_comp_id_user26
  def decode(51, :mav_component), do: :mav_comp_id_user27
  def decode(52, :mav_component), do: :mav_comp_id_user28
  def decode(53, :mav_component), do: :mav_comp_id_user29
  def decode(54, :mav_component), do: :mav_comp_id_user30
  def decode(55, :mav_component), do: :mav_comp_id_user31
  def decode(56, :mav_component), do: :mav_comp_id_user32
  def decode(57, :mav_component), do: :mav_comp_id_user33
  def decode(58, :mav_component), do: :mav_comp_id_user34
  def decode(59, :mav_component), do: :mav_comp_id_user35
  def decode(60, :mav_component), do: :mav_comp_id_user36
  def decode(61, :mav_component), do: :mav_comp_id_user37
  def decode(62, :mav_component), do: :mav_comp_id_user38
  def decode(63, :mav_component), do: :mav_comp_id_user39
  def decode(64, :mav_component), do: :mav_comp_id_user40
  def decode(65, :mav_component), do: :mav_comp_id_user41
  def decode(66, :mav_component), do: :mav_comp_id_user42
  def decode(67, :mav_component), do: :mav_comp_id_user43
  def decode(68, :mav_component), do: :mav_comp_id_telemetry_radio
  def decode(69, :mav_component), do: :mav_comp_id_user45
  def decode(70, :mav_component), do: :mav_comp_id_user46
  def decode(71, :mav_component), do: :mav_comp_id_user47
  def decode(72, :mav_component), do: :mav_comp_id_user48
  def decode(73, :mav_component), do: :mav_comp_id_user49
  def decode(74, :mav_component), do: :mav_comp_id_user50
  def decode(75, :mav_component), do: :mav_comp_id_user51
  def decode(76, :mav_component), do: :mav_comp_id_user52
  def decode(77, :mav_component), do: :mav_comp_id_user53
  def decode(78, :mav_component), do: :mav_comp_id_user54
  def decode(79, :mav_component), do: :mav_comp_id_user55
  def decode(80, :mav_component), do: :mav_comp_id_user56
  def decode(81, :mav_component), do: :mav_comp_id_user57
  def decode(82, :mav_component), do: :mav_comp_id_user58
  def decode(83, :mav_component), do: :mav_comp_id_user59
  def decode(84, :mav_component), do: :mav_comp_id_user60
  def decode(85, :mav_component), do: :mav_comp_id_user61
  def decode(86, :mav_component), do: :mav_comp_id_user62
  def decode(87, :mav_component), do: :mav_comp_id_user63
  def decode(88, :mav_component), do: :mav_comp_id_user64
  def decode(89, :mav_component), do: :mav_comp_id_user65
  def decode(90, :mav_component), do: :mav_comp_id_user66
  def decode(91, :mav_component), do: :mav_comp_id_user67
  def decode(92, :mav_component), do: :mav_comp_id_user68
  def decode(93, :mav_component), do: :mav_comp_id_user69
  def decode(94, :mav_component), do: :mav_comp_id_user70
  def decode(95, :mav_component), do: :mav_comp_id_user71
  def decode(96, :mav_component), do: :mav_comp_id_user72
  def decode(97, :mav_component), do: :mav_comp_id_user73
  def decode(98, :mav_component), do: :mav_comp_id_user74
  def decode(99, :mav_component), do: :mav_comp_id_user75
  def decode(100, :mav_component), do: :mav_comp_id_camera
  def decode(101, :mav_component), do: :mav_comp_id_camera2
  def decode(102, :mav_component), do: :mav_comp_id_camera3
  def decode(103, :mav_component), do: :mav_comp_id_camera4
  def decode(104, :mav_component), do: :mav_comp_id_camera5
  def decode(105, :mav_component), do: :mav_comp_id_camera6
  def decode(140, :mav_component), do: :mav_comp_id_servo1
  def decode(141, :mav_component), do: :mav_comp_id_servo2
  def decode(142, :mav_component), do: :mav_comp_id_servo3
  def decode(143, :mav_component), do: :mav_comp_id_servo4
  def decode(144, :mav_component), do: :mav_comp_id_servo5
  def decode(145, :mav_component), do: :mav_comp_id_servo6
  def decode(146, :mav_component), do: :mav_comp_id_servo7
  def decode(147, :mav_component), do: :mav_comp_id_servo8
  def decode(148, :mav_component), do: :mav_comp_id_servo9
  def decode(149, :mav_component), do: :mav_comp_id_servo10
  def decode(150, :mav_component), do: :mav_comp_id_servo11
  def decode(151, :mav_component), do: :mav_comp_id_servo12
  def decode(152, :mav_component), do: :mav_comp_id_servo13
  def decode(153, :mav_component), do: :mav_comp_id_servo14
  def decode(154, :mav_component), do: :mav_comp_id_gimbal
  def decode(155, :mav_component), do: :mav_comp_id_log
  def decode(156, :mav_component), do: :mav_comp_id_adsb
  def decode(157, :mav_component), do: :mav_comp_id_osd
  def decode(158, :mav_component), do: :mav_comp_id_peripheral
  def decode(159, :mav_component), do: :mav_comp_id_qx1_gimbal
  def decode(160, :mav_component), do: :mav_comp_id_flarm
  def decode(171, :mav_component), do: :mav_comp_id_gimbal2
  def decode(172, :mav_component), do: :mav_comp_id_gimbal3
  def decode(173, :mav_component), do: :mav_comp_id_gimbal4
  def decode(174, :mav_component), do: :mav_comp_id_gimbal5
  def decode(175, :mav_component), do: :mav_comp_id_gimbal6
  def decode(190, :mav_component), do: :mav_comp_id_missionplanner
  def decode(191, :mav_component), do: :mav_comp_id_onboard_computer
  def decode(195, :mav_component), do: :mav_comp_id_pathplanner
  def decode(196, :mav_component), do: :mav_comp_id_obstacle_avoidance
  def decode(197, :mav_component), do: :mav_comp_id_visual_inertial_odometry
  def decode(198, :mav_component), do: :mav_comp_id_pairing_manager
  def decode(200, :mav_component), do: :mav_comp_id_imu
  def decode(201, :mav_component), do: :mav_comp_id_imu_2
  def decode(202, :mav_component), do: :mav_comp_id_imu_3
  def decode(220, :mav_component), do: :mav_comp_id_gps
  def decode(221, :mav_component), do: :mav_comp_id_gps2
  def decode(236, :mav_component), do: :mav_comp_id_odid_txrx_1
  def decode(237, :mav_component), do: :mav_comp_id_odid_txrx_2
  def decode(238, :mav_component), do: :mav_comp_id_odid_txrx_3
  def decode(240, :mav_component), do: :mav_comp_id_udp_bridge
  def decode(241, :mav_component), do: :mav_comp_id_uart_bridge
  def decode(242, :mav_component), do: :mav_comp_id_tunnel_node
  def decode(250, :mav_component), do: :mav_comp_id_system_control
  def decode(0, :mav_data_stream), do: :mav_data_stream_all
  def decode(1, :mav_data_stream), do: :mav_data_stream_raw_sensors
  def decode(2, :mav_data_stream), do: :mav_data_stream_extended_status
  def decode(3, :mav_data_stream), do: :mav_data_stream_rc_channels
  def decode(4, :mav_data_stream), do: :mav_data_stream_raw_controller
  def decode(6, :mav_data_stream), do: :mav_data_stream_position
  def decode(10, :mav_data_stream), do: :mav_data_stream_extra1
  def decode(11, :mav_data_stream), do: :mav_data_stream_extra2
  def decode(12, :mav_data_stream), do: :mav_data_stream_extra3
  def decode(0, :mav_distance_sensor), do: :mav_distance_sensor_laser
  def decode(1, :mav_distance_sensor), do: :mav_distance_sensor_ultrasound
  def decode(2, :mav_distance_sensor), do: :mav_distance_sensor_infrared
  def decode(3, :mav_distance_sensor), do: :mav_distance_sensor_radar
  def decode(4, :mav_distance_sensor), do: :mav_distance_sensor_unknown
  def decode(1, :mav_do_reposition_flags), do: :mav_do_reposition_flags_change_mode
  def decode(0, :mav_estimator_type), do: :mav_estimator_type_unknown
  def decode(1, :mav_estimator_type), do: :mav_estimator_type_naive
  def decode(2, :mav_estimator_type), do: :mav_estimator_type_vision
  def decode(3, :mav_estimator_type), do: :mav_estimator_type_vio
  def decode(4, :mav_estimator_type), do: :mav_estimator_type_gps
  def decode(5, :mav_estimator_type), do: :mav_estimator_type_gps_ins
  def decode(6, :mav_estimator_type), do: :mav_estimator_type_mocap
  def decode(7, :mav_estimator_type), do: :mav_estimator_type_lidar
  def decode(8, :mav_estimator_type), do: :mav_estimator_type_autopilot
  def decode(0, :mav_frame), do: :mav_frame_global
  def decode(1, :mav_frame), do: :mav_frame_local_ned
  def decode(2, :mav_frame), do: :mav_frame_mission
  def decode(3, :mav_frame), do: :mav_frame_global_relative_alt
  def decode(4, :mav_frame), do: :mav_frame_local_enu
  def decode(5, :mav_frame), do: :mav_frame_global_int
  def decode(6, :mav_frame), do: :mav_frame_global_relative_alt_int
  def decode(7, :mav_frame), do: :mav_frame_local_offset_ned
  def decode(8, :mav_frame), do: :mav_frame_body_ned
  def decode(9, :mav_frame), do: :mav_frame_body_offset_ned
  def decode(10, :mav_frame), do: :mav_frame_global_terrain_alt
  def decode(11, :mav_frame), do: :mav_frame_global_terrain_alt_int
  def decode(12, :mav_frame), do: :mav_frame_body_frd
  def decode(13, :mav_frame), do: :mav_frame_reserved_13
  def decode(14, :mav_frame), do: :mav_frame_reserved_14
  def decode(15, :mav_frame), do: :mav_frame_reserved_15
  def decode(16, :mav_frame), do: :mav_frame_reserved_16
  def decode(17, :mav_frame), do: :mav_frame_reserved_17
  def decode(18, :mav_frame), do: :mav_frame_reserved_18
  def decode(19, :mav_frame), do: :mav_frame_reserved_19
  def decode(20, :mav_frame), do: :mav_frame_local_frd
  def decode(21, :mav_frame), do: :mav_frame_local_flu
  def decode(0b1, :mav_generator_status_flag), do: :mav_generator_status_flag_off
  def decode(0b10, :mav_generator_status_flag), do: :mav_generator_status_flag_ready
  def decode(0b100, :mav_generator_status_flag), do: :mav_generator_status_flag_generating
  def decode(0b1000, :mav_generator_status_flag), do: :mav_generator_status_flag_charging
  def decode(0b10000, :mav_generator_status_flag), do: :mav_generator_status_flag_reduced_power
  def decode(0b100000, :mav_generator_status_flag), do: :mav_generator_status_flag_maxpower
  def decode(0b1000000, :mav_generator_status_flag), do: :mav_generator_status_flag_overtemp_warning
  def decode(0b10000000, :mav_generator_status_flag), do: :mav_generator_status_flag_overtemp_fault
  def decode(0b100000000, :mav_generator_status_flag), do: :mav_generator_status_flag_electronics_overtemp_warning
  def decode(0b1000000000, :mav_generator_status_flag), do: :mav_generator_status_flag_electronics_overtemp_fault
  def decode(0b10000000000, :mav_generator_status_flag), do: :mav_generator_status_flag_electronics_fault
  def decode(0b100000000000, :mav_generator_status_flag), do: :mav_generator_status_flag_powersource_fault
  def decode(0b1000000000000, :mav_generator_status_flag), do: :mav_generator_status_flag_communication_warning
  def decode(0b10000000000000, :mav_generator_status_flag), do: :mav_generator_status_flag_cooling_warning
  def decode(0b100000000000000, :mav_generator_status_flag), do: :mav_generator_status_flag_power_rail_fault
  def decode(0b1000000000000000, :mav_generator_status_flag), do: :mav_generator_status_flag_overcurrent_fault
  def decode(0b10000000000000000, :mav_generator_status_flag), do: :mav_generator_status_flag_battery_overcharge_current_fault
  def decode(0b100000000000000000, :mav_generator_status_flag), do: :mav_generator_status_flag_overvoltage_fault
  def decode(0b1000000000000000000, :mav_generator_status_flag), do: :mav_generator_status_flag_battery_undervolt_fault
  def decode(0b10000000000000000000, :mav_generator_status_flag), do: :mav_generator_status_flag_start_inhibited
  def decode(0b100000000000000000000, :mav_generator_status_flag), do: :mav_generator_status_flag_maintenance_required
  def decode(0b1000000000000000000000, :mav_generator_status_flag), do: :mav_generator_status_flag_warming_up
  def decode(0b10000000000000000000000, :mav_generator_status_flag), do: :mav_generator_status_flag_idle
  def decode(0, :mav_goto), do: :mav_goto_do_hold
  def decode(1, :mav_goto), do: :mav_goto_do_continue
  def decode(2, :mav_goto), do: :mav_goto_hold_at_current_position
  def decode(3, :mav_goto), do: :mav_goto_hold_at_specified_position
  def decode(0, :mav_landed_state), do: :mav_landed_state_undefined
  def decode(1, :mav_landed_state), do: :mav_landed_state_on_ground
  def decode(2, :mav_landed_state), do: :mav_landed_state_in_air
  def decode(3, :mav_landed_state), do: :mav_landed_state_takeoff
  def decode(4, :mav_landed_state), do: :mav_landed_state_landing
  def decode(0, :mav_mission_result), do: :mav_mission_accepted
  def decode(1, :mav_mission_result), do: :mav_mission_error
  def decode(2, :mav_mission_result), do: :mav_mission_unsupported_frame
  def decode(3, :mav_mission_result), do: :mav_mission_unsupported
  def decode(4, :mav_mission_result), do: :mav_mission_no_space
  def decode(5, :mav_mission_result), do: :mav_mission_invalid
  def decode(6, :mav_mission_result), do: :mav_mission_invalid_param1
  def decode(7, :mav_mission_result), do: :mav_mission_invalid_param2
  def decode(8, :mav_mission_result), do: :mav_mission_invalid_param3
  def decode(9, :mav_mission_result), do: :mav_mission_invalid_param4
  def decode(10, :mav_mission_result), do: :mav_mission_invalid_param5_x
  def decode(11, :mav_mission_result), do: :mav_mission_invalid_param6_y
  def decode(12, :mav_mission_result), do: :mav_mission_invalid_param7
  def decode(13, :mav_mission_result), do: :mav_mission_invalid_sequence
  def decode(14, :mav_mission_result), do: :mav_mission_denied
  def decode(15, :mav_mission_result), do: :mav_mission_operation_cancelled
  def decode(0, :mav_mission_type), do: :mav_mission_type_mission
  def decode(1, :mav_mission_type), do: :mav_mission_type_fence
  def decode(2, :mav_mission_type), do: :mav_mission_type_rally
  def decode(255, :mav_mission_type), do: :mav_mission_type_all
  def decode(0, :mav_mode), do: :mav_mode_preflight
  def decode(80, :mav_mode), do: :mav_mode_stabilize_disarmed
  def decode(208, :mav_mode), do: :mav_mode_stabilize_armed
  def decode(64, :mav_mode), do: :mav_mode_manual_disarmed
  def decode(192, :mav_mode), do: :mav_mode_manual_armed
  def decode(88, :mav_mode), do: :mav_mode_guided_disarmed
  def decode(216, :mav_mode), do: :mav_mode_guided_armed
  def decode(92, :mav_mode), do: :mav_mode_auto_disarmed
  def decode(220, :mav_mode), do: :mav_mode_auto_armed
  def decode(66, :mav_mode), do: :mav_mode_test_disarmed
  def decode(194, :mav_mode), do: :mav_mode_test_armed
  def decode(0b10000000, :mav_mode_flag), do: :mav_mode_flag_safety_armed
  def decode(0b1000000, :mav_mode_flag), do: :mav_mode_flag_manual_input_enabled
  def decode(0b100000, :mav_mode_flag), do: :mav_mode_flag_hil_enabled
  def decode(0b10000, :mav_mode_flag), do: :mav_mode_flag_stabilize_enabled
  def decode(0b1000, :mav_mode_flag), do: :mav_mode_flag_guided_enabled
  def decode(0b100, :mav_mode_flag), do: :mav_mode_flag_auto_enabled
  def decode(0b10, :mav_mode_flag), do: :mav_mode_flag_test_enabled
  def decode(0b1, :mav_mode_flag), do: :mav_mode_flag_custom_mode_enabled
  def decode(0b10000000, :mav_mode_flag_decode_position), do: :mav_mode_flag_decode_position_safety
  def decode(0b1000000, :mav_mode_flag_decode_position), do: :mav_mode_flag_decode_position_manual
  def decode(0b100000, :mav_mode_flag_decode_position), do: :mav_mode_flag_decode_position_hil
  def decode(0b10000, :mav_mode_flag_decode_position), do: :mav_mode_flag_decode_position_stabilize
  def decode(0b1000, :mav_mode_flag_decode_position), do: :mav_mode_flag_decode_position_guided
  def decode(0b100, :mav_mode_flag_decode_position), do: :mav_mode_flag_decode_position_auto
  def decode(0b10, :mav_mode_flag_decode_position), do: :mav_mode_flag_decode_position_test
  def decode(0b1, :mav_mode_flag_decode_position), do: :mav_mode_flag_decode_position_custom_mode
  def decode(0, :mav_mode_gimbal), do: :mav_mode_gimbal_uninitialized
  def decode(1, :mav_mode_gimbal), do: :mav_mode_gimbal_calibrating_pitch
  def decode(2, :mav_mode_gimbal), do: :mav_mode_gimbal_calibrating_roll
  def decode(3, :mav_mode_gimbal), do: :mav_mode_gimbal_calibrating_yaw
  def decode(4, :mav_mode_gimbal), do: :mav_mode_gimbal_initialized
  def decode(5, :mav_mode_gimbal), do: :mav_mode_gimbal_active
  def decode(6, :mav_mode_gimbal), do: :mav_mode_gimbal_rate_cmd_timeout
  def decode(0, :mav_mount_mode), do: :mav_mount_mode_retract
  def decode(1, :mav_mount_mode), do: :mav_mount_mode_neutral
  def decode(2, :mav_mount_mode), do: :mav_mount_mode_mavlink_targeting
  def decode(3, :mav_mount_mode), do: :mav_mount_mode_rc_targeting
  def decode(4, :mav_mount_mode), do: :mav_mount_mode_gps_point
  def decode(5, :mav_mount_mode), do: :mav_mount_mode_sysid_target
  def decode(6, :mav_mount_mode), do: :mav_mount_mode_home_location
  def decode(1, :mav_param_type), do: :mav_param_type_uint8
  def decode(2, :mav_param_type), do: :mav_param_type_int8
  def decode(3, :mav_param_type), do: :mav_param_type_uint16
  def decode(4, :mav_param_type), do: :mav_param_type_int16
  def decode(5, :mav_param_type), do: :mav_param_type_uint32
  def decode(6, :mav_param_type), do: :mav_param_type_int32
  def decode(7, :mav_param_type), do: :mav_param_type_uint64
  def decode(8, :mav_param_type), do: :mav_param_type_int64
  def decode(9, :mav_param_type), do: :mav_param_type_real32
  def decode(10, :mav_param_type), do: :mav_param_type_real64
  def decode(0b1, :mav_power_status), do: :mav_power_status_brick_valid
  def decode(0b10, :mav_power_status), do: :mav_power_status_servo_valid
  def decode(0b100, :mav_power_status), do: :mav_power_status_usb_connected
  def decode(0b1000, :mav_power_status), do: :mav_power_status_periph_overcurrent
  def decode(0b10000, :mav_power_status), do: :mav_power_status_periph_hipower_overcurrent
  def decode(0b100000, :mav_power_status), do: :mav_power_status_changed
  def decode(0b1, :mav_protocol_capability), do: :mav_protocol_capability_mission_float
  def decode(0b10, :mav_protocol_capability), do: :mav_protocol_capability_param_float
  def decode(0b100, :mav_protocol_capability), do: :mav_protocol_capability_mission_int
  def decode(0b1000, :mav_protocol_capability), do: :mav_protocol_capability_command_int
  def decode(0b10000, :mav_protocol_capability), do: :mav_protocol_capability_param_union
  def decode(0b100000, :mav_protocol_capability), do: :mav_protocol_capability_ftp
  def decode(0b1000000, :mav_protocol_capability), do: :mav_protocol_capability_set_attitude_target
  def decode(0b10000000, :mav_protocol_capability), do: :mav_protocol_capability_set_position_target_local_ned
  def decode(0b100000000, :mav_protocol_capability), do: :mav_protocol_capability_set_position_target_global_int
  def decode(0b1000000000, :mav_protocol_capability), do: :mav_protocol_capability_terrain
  def decode(0b10000000000, :mav_protocol_capability), do: :mav_protocol_capability_set_actuator_target
  def decode(0b100000000000, :mav_protocol_capability), do: :mav_protocol_capability_flight_termination
  def decode(0b1000000000000, :mav_protocol_capability), do: :mav_protocol_capability_compass_calibration
  def decode(0b10000000000000, :mav_protocol_capability), do: :mav_protocol_capability_mavlink2
  def decode(0b100000000000000, :mav_protocol_capability), do: :mav_protocol_capability_mission_fence
  def decode(0b1000000000000000, :mav_protocol_capability), do: :mav_protocol_capability_mission_rally
  def decode(0b10000000000000000, :mav_protocol_capability), do: :mav_protocol_capability_flight_information
  def decode(2147483645, :mav_remote_log_data_block_commands), do: :mav_remote_log_data_block_stop
  def decode(2147483646, :mav_remote_log_data_block_commands), do: :mav_remote_log_data_block_start
  def decode(0, :mav_remote_log_data_block_statuses), do: :mav_remote_log_data_block_nack
  def decode(1, :mav_remote_log_data_block_statuses), do: :mav_remote_log_data_block_ack
  def decode(0, :mav_result), do: :mav_result_accepted
  def decode(1, :mav_result), do: :mav_result_temporarily_rejected
  def decode(2, :mav_result), do: :mav_result_denied
  def decode(3, :mav_result), do: :mav_result_unsupported
  def decode(4, :mav_result), do: :mav_result_failed
  def decode(5, :mav_result), do: :mav_result_in_progress
  def decode(0, :mav_roi), do: :mav_roi_none
  def decode(1, :mav_roi), do: :mav_roi_wpnext
  def decode(2, :mav_roi), do: :mav_roi_wpindex
  def decode(3, :mav_roi), do: :mav_roi_location
  def decode(4, :mav_roi), do: :mav_roi_target
  def decode(0, :mav_sensor_orientation), do: :mav_sensor_rotation_none
  def decode(1, :mav_sensor_orientation), do: :mav_sensor_rotation_yaw_45
  def decode(2, :mav_sensor_orientation), do: :mav_sensor_rotation_yaw_90
  def decode(3, :mav_sensor_orientation), do: :mav_sensor_rotation_yaw_135
  def decode(4, :mav_sensor_orientation), do: :mav_sensor_rotation_yaw_180
  def decode(5, :mav_sensor_orientation), do: :mav_sensor_rotation_yaw_225
  def decode(6, :mav_sensor_orientation), do: :mav_sensor_rotation_yaw_270
  def decode(7, :mav_sensor_orientation), do: :mav_sensor_rotation_yaw_315
  def decode(8, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_180
  def decode(9, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_180_yaw_45
  def decode(10, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_180_yaw_90
  def decode(11, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_180_yaw_135
  def decode(12, :mav_sensor_orientation), do: :mav_sensor_rotation_pitch_180
  def decode(13, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_180_yaw_225
  def decode(14, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_180_yaw_270
  def decode(15, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_180_yaw_315
  def decode(16, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_90
  def decode(17, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_90_yaw_45
  def decode(18, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_90_yaw_90
  def decode(19, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_90_yaw_135
  def decode(20, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_270
  def decode(21, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_270_yaw_45
  def decode(22, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_270_yaw_90
  def decode(23, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_270_yaw_135
  def decode(24, :mav_sensor_orientation), do: :mav_sensor_rotation_pitch_90
  def decode(25, :mav_sensor_orientation), do: :mav_sensor_rotation_pitch_270
  def decode(26, :mav_sensor_orientation), do: :mav_sensor_rotation_pitch_180_yaw_90
  def decode(27, :mav_sensor_orientation), do: :mav_sensor_rotation_pitch_180_yaw_270
  def decode(28, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_90_pitch_90
  def decode(29, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_180_pitch_90
  def decode(30, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_270_pitch_90
  def decode(31, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_90_pitch_180
  def decode(32, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_270_pitch_180
  def decode(33, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_90_pitch_270
  def decode(34, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_180_pitch_270
  def decode(35, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_270_pitch_270
  def decode(36, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_90_pitch_180_yaw_90
  def decode(37, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_90_yaw_270
  def decode(38, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_90_pitch_68_yaw_293
  def decode(39, :mav_sensor_orientation), do: :mav_sensor_rotation_pitch_315
  def decode(40, :mav_sensor_orientation), do: :mav_sensor_rotation_roll_90_pitch_315
  def decode(100, :mav_sensor_orientation), do: :mav_sensor_rotation_custom
  def decode(0, :mav_severity), do: :mav_severity_emergency
  def decode(1, :mav_severity), do: :mav_severity_alert
  def decode(2, :mav_severity), do: :mav_severity_critical
  def decode(3, :mav_severity), do: :mav_severity_error
  def decode(4, :mav_severity), do: :mav_severity_warning
  def decode(5, :mav_severity), do: :mav_severity_notice
  def decode(6, :mav_severity), do: :mav_severity_info
  def decode(7, :mav_severity), do: :mav_severity_debug
  def decode(0, :mav_state), do: :mav_state_uninit
  def decode(1, :mav_state), do: :mav_state_boot
  def decode(2, :mav_state), do: :mav_state_calibrating
  def decode(3, :mav_state), do: :mav_state_standby
  def decode(4, :mav_state), do: :mav_state_active
  def decode(5, :mav_state), do: :mav_state_critical
  def decode(6, :mav_state), do: :mav_state_emergency
  def decode(7, :mav_state), do: :mav_state_poweroff
  def decode(8, :mav_state), do: :mav_state_flight_termination
  def decode(0b1, :mav_sys_status_sensor), do: :mav_sys_status_sensor_3d_gyro
  def decode(0b10, :mav_sys_status_sensor), do: :mav_sys_status_sensor_3d_accel
  def decode(0b100, :mav_sys_status_sensor), do: :mav_sys_status_sensor_3d_mag
  def decode(0b1000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_absolute_pressure
  def decode(0b10000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_differential_pressure
  def decode(0b100000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_gps
  def decode(0b1000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_optical_flow
  def decode(0b10000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_vision_position
  def decode(0b100000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_laser_position
  def decode(0b1000000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_external_ground_truth
  def decode(0b10000000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_angular_rate_control
  def decode(0b100000000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_attitude_stabilization
  def decode(0b1000000000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_yaw_position
  def decode(0b10000000000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_z_altitude_control
  def decode(0b100000000000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_xy_position_control
  def decode(0b1000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_motor_outputs
  def decode(0b10000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_rc_receiver
  def decode(0b100000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_3d_gyro2
  def decode(0b1000000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_3d_accel2
  def decode(0b10000000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_3d_mag2
  def decode(0b100000000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_geofence
  def decode(0b1000000000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_ahrs
  def decode(0b10000000000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_terrain
  def decode(0b100000000000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_reverse_motor
  def decode(0b1000000000000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_logging
  def decode(0b10000000000000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_battery
  def decode(0b100000000000000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_proximity
  def decode(0b1000000000000000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_satcom
  def decode(0b10000000000000000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_prearm_check
  def decode(0b100000000000000000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_obstacle_avoidance
  def decode(0b1000000000000000000000000000000, :mav_sys_status_sensor), do: :mav_sys_status_sensor_propulsion
  def decode(0, :mav_type), do: :mav_type_generic
  def decode(1, :mav_type), do: :mav_type_fixed_wing
  def decode(2, :mav_type), do: :mav_type_quadrotor
  def decode(3, :mav_type), do: :mav_type_coaxial
  def decode(4, :mav_type), do: :mav_type_helicopter
  def decode(5, :mav_type), do: :mav_type_antenna_tracker
  def decode(6, :mav_type), do: :mav_type_gcs
  def decode(7, :mav_type), do: :mav_type_airship
  def decode(8, :mav_type), do: :mav_type_free_balloon
  def decode(9, :mav_type), do: :mav_type_rocket
  def decode(10, :mav_type), do: :mav_type_ground_rover
  def decode(11, :mav_type), do: :mav_type_surface_boat
  def decode(12, :mav_type), do: :mav_type_submarine
  def decode(13, :mav_type), do: :mav_type_hexarotor
  def decode(14, :mav_type), do: :mav_type_octorotor
  def decode(15, :mav_type), do: :mav_type_tricopter
  def decode(16, :mav_type), do: :mav_type_flapping_wing
  def decode(17, :mav_type), do: :mav_type_kite
  def decode(18, :mav_type), do: :mav_type_onboard_controller
  def decode(19, :mav_type), do: :mav_type_vtol_duorotor
  def decode(20, :mav_type), do: :mav_type_vtol_quadrotor
  def decode(21, :mav_type), do: :mav_type_vtol_tiltrotor
  def decode(22, :mav_type), do: :mav_type_vtol_reserved2
  def decode(23, :mav_type), do: :mav_type_vtol_reserved3
  def decode(24, :mav_type), do: :mav_type_vtol_reserved4
  def decode(25, :mav_type), do: :mav_type_vtol_reserved5
  def decode(26, :mav_type), do: :mav_type_gimbal
  def decode(27, :mav_type), do: :mav_type_adsb
  def decode(28, :mav_type), do: :mav_type_parafoil
  def decode(29, :mav_type), do: :mav_type_dodecarotor
  def decode(30, :mav_type), do: :mav_type_camera
  def decode(31, :mav_type), do: :mav_type_charging_station
  def decode(32, :mav_type), do: :mav_type_flarm
  def decode(33, :mav_type), do: :mav_type_servo
  def decode(34, :mav_type), do: :mav_type_odid
  def decode(35, :mav_type), do: :mav_type_decarotor
  def decode(0, :mav_vtol_state), do: :mav_vtol_state_undefined
  def decode(1, :mav_vtol_state), do: :mav_vtol_state_transition_to_fw
  def decode(2, :mav_vtol_state), do: :mav_vtol_state_transition_to_mc
  def decode(3, :mav_vtol_state), do: :mav_vtol_state_mc
  def decode(4, :mav_vtol_state), do: :mav_vtol_state_fw
  def decode(0b1, :mav_winch_status_flag), do: :mav_winch_status_healthy
  def decode(0b10, :mav_winch_status_flag), do: :mav_winch_status_fully_retracted
  def decode(0b100, :mav_winch_status_flag), do: :mav_winch_status_moving
  def decode(0b1000, :mav_winch_status_flag), do: :mav_winch_status_clutch_engaged
  def decode(0, :mavlink_data_stream_type), do: :mavlink_data_stream_img_jpeg
  def decode(1, :mavlink_data_stream_type), do: :mavlink_data_stream_img_bmp
  def decode(2, :mavlink_data_stream_type), do: :mavlink_data_stream_img_raw8u
  def decode(3, :mavlink_data_stream_type), do: :mavlink_data_stream_img_raw32u
  def decode(4, :mavlink_data_stream_type), do: :mavlink_data_stream_img_pgm
  def decode(5, :mavlink_data_stream_type), do: :mavlink_data_stream_img_png
  def decode(0, :motor_test_order), do: :motor_test_order_default
  def decode(1, :motor_test_order), do: :motor_test_order_sequence
  def decode(2, :motor_test_order), do: :motor_test_order_board
  def decode(0, :motor_test_throttle_type), do: :motor_test_throttle_percent
  def decode(1, :motor_test_throttle_type), do: :motor_test_throttle_pwm
  def decode(2, :motor_test_throttle_type), do: :motor_test_throttle_pilot
  def decode(3, :motor_test_throttle_type), do: :motor_test_compass_cal
  def decode(0, :osd_param_config_error), do: :osd_param_success
  def decode(1, :osd_param_config_error), do: :osd_param_invalid_screen
  def decode(2, :osd_param_config_error), do: :osd_param_invalid_parameter_index
  def decode(3, :osd_param_config_error), do: :osd_param_invalid_parameter
  def decode(0, :osd_param_config_type), do: :osd_param_none
  def decode(1, :osd_param_config_type), do: :osd_param_serial_protocol
  def decode(2, :osd_param_config_type), do: :osd_param_servo_function
  def decode(3, :osd_param_config_type), do: :osd_param_aux_function
  def decode(4, :osd_param_config_type), do: :osd_param_flight_mode
  def decode(5, :osd_param_config_type), do: :osd_param_failsafe_action
  def decode(6, :osd_param_config_type), do: :osd_param_failsafe_action_1
  def decode(7, :osd_param_config_type), do: :osd_param_failsafe_action_2
  def decode(8, :osd_param_config_type), do: :osd_param_num_types
  def decode(0, :parachute_action), do: :parachute_disable
  def decode(1, :parachute_action), do: :parachute_enable
  def decode(2, :parachute_action), do: :parachute_release
  def decode(1, :pid_tuning_axis), do: :pid_tuning_roll
  def decode(2, :pid_tuning_axis), do: :pid_tuning_pitch
  def decode(3, :pid_tuning_axis), do: :pid_tuning_yaw
  def decode(4, :pid_tuning_axis), do: :pid_tuning_accz
  def decode(5, :pid_tuning_axis), do: :pid_tuning_steer
  def decode(6, :pid_tuning_axis), do: :pid_tuning_landing
  def decode(0, :plane_mode), do: :plane_mode_manual
  def decode(1, :plane_mode), do: :plane_mode_circle
  def decode(2, :plane_mode), do: :plane_mode_stabilize
  def decode(3, :plane_mode), do: :plane_mode_training
  def decode(4, :plane_mode), do: :plane_mode_acro
  def decode(5, :plane_mode), do: :plane_mode_fly_by_wire_a
  def decode(6, :plane_mode), do: :plane_mode_fly_by_wire_b
  def decode(7, :plane_mode), do: :plane_mode_cruise
  def decode(8, :plane_mode), do: :plane_mode_autotune
  def decode(10, :plane_mode), do: :plane_mode_auto
  def decode(11, :plane_mode), do: :plane_mode_rtl
  def decode(12, :plane_mode), do: :plane_mode_loiter
  def decode(13, :plane_mode), do: :plane_mode_takeoff
  def decode(14, :plane_mode), do: :plane_mode_avoid_adsb
  def decode(15, :plane_mode), do: :plane_mode_guided
  def decode(16, :plane_mode), do: :plane_mode_initializing
  def decode(17, :plane_mode), do: :plane_mode_qstabilize
  def decode(18, :plane_mode), do: :plane_mode_qhover
  def decode(19, :plane_mode), do: :plane_mode_qloiter
  def decode(20, :plane_mode), do: :plane_mode_qland
  def decode(21, :plane_mode), do: :plane_mode_qrtl
  def decode(22, :plane_mode), do: :plane_mode_qautotune
  def decode(23, :plane_mode), do: :plane_mode_qacro
  def decode(24, :plane_mode), do: :plane_mode_thermal
  def decode(0b1, :position_target_typemask), do: :position_target_typemask_x_ignore
  def decode(0b10, :position_target_typemask), do: :position_target_typemask_y_ignore
  def decode(0b100, :position_target_typemask), do: :position_target_typemask_z_ignore
  def decode(0b1000, :position_target_typemask), do: :position_target_typemask_vx_ignore
  def decode(0b10000, :position_target_typemask), do: :position_target_typemask_vy_ignore
  def decode(0b100000, :position_target_typemask), do: :position_target_typemask_vz_ignore
  def decode(0b1000000, :position_target_typemask), do: :position_target_typemask_ax_ignore
  def decode(0b10000000, :position_target_typemask), do: :position_target_typemask_ay_ignore
  def decode(0b100000000, :position_target_typemask), do: :position_target_typemask_az_ignore
  def decode(0b1000000000, :position_target_typemask), do: :position_target_typemask_force_set
  def decode(0b10000000000, :position_target_typemask), do: :position_target_typemask_yaw_ignore
  def decode(0b100000000000, :position_target_typemask), do: :position_target_typemask_yaw_rate_ignore
  def decode(0, :precision_land_mode), do: :precision_land_mode_disabled
  def decode(1, :precision_land_mode), do: :precision_land_mode_opportunistic
  def decode(2, :precision_land_mode), do: :precision_land_mode_required
  def decode(1, :rally_flags), do: :favorable_wind
  def decode(2, :rally_flags), do: :land_immediately
  def decode(0, :rc_type), do: :rc_type_spektrum_dsm2
  def decode(1, :rc_type), do: :rc_type_spektrum_dsmx
  def decode(0, :rover_mode), do: :rover_mode_manual
  def decode(1, :rover_mode), do: :rover_mode_acro
  def decode(3, :rover_mode), do: :rover_mode_steering
  def decode(4, :rover_mode), do: :rover_mode_hold
  def decode(5, :rover_mode), do: :rover_mode_loiter
  def decode(6, :rover_mode), do: :rover_mode_follow
  def decode(7, :rover_mode), do: :rover_mode_simple
  def decode(10, :rover_mode), do: :rover_mode_auto
  def decode(11, :rover_mode), do: :rover_mode_rtl
  def decode(12, :rover_mode), do: :rover_mode_smart_rtl
  def decode(15, :rover_mode), do: :rover_mode_guided
  def decode(16, :rover_mode), do: :rover_mode_initializing
  def decode(0, :rtk_baseline_coordinate_system), do: :rtk_baseline_coordinate_system_ecef
  def decode(1, :rtk_baseline_coordinate_system), do: :rtk_baseline_coordinate_system_ned
  def decode(0, :scripting_cmd), do: :scripting_cmd_repl_start
  def decode(1, :scripting_cmd), do: :scripting_cmd_repl_stop
  def decode(0, :serial_control_dev), do: :serial_control_dev_telem1
  def decode(1, :serial_control_dev), do: :serial_control_dev_telem2
  def decode(2, :serial_control_dev), do: :serial_control_dev_gps1
  def decode(3, :serial_control_dev), do: :serial_control_dev_gps2
  def decode(10, :serial_control_dev), do: :serial_control_dev_shell
  def decode(100, :serial_control_dev), do: :serial_control_serial0
  def decode(101, :serial_control_dev), do: :serial_control_serial1
  def decode(102, :serial_control_dev), do: :serial_control_serial2
  def decode(103, :serial_control_dev), do: :serial_control_serial3
  def decode(104, :serial_control_dev), do: :serial_control_serial4
  def decode(105, :serial_control_dev), do: :serial_control_serial5
  def decode(106, :serial_control_dev), do: :serial_control_serial6
  def decode(107, :serial_control_dev), do: :serial_control_serial7
  def decode(108, :serial_control_dev), do: :serial_control_serial8
  def decode(109, :serial_control_dev), do: :serial_control_serial9
  def decode(0b1, :serial_control_flag), do: :serial_control_flag_reply
  def decode(0b10, :serial_control_flag), do: :serial_control_flag_respond
  def decode(0b100, :serial_control_flag), do: :serial_control_flag_exclusive
  def decode(0b1000, :serial_control_flag), do: :serial_control_flag_blocking
  def decode(0b10000, :serial_control_flag), do: :serial_control_flag_multi
  def decode(0, :speed_type), do: :speed_type_airspeed
  def decode(1, :speed_type), do: :speed_type_groundspeed
  def decode(0, :storage_status), do: :storage_status_empty
  def decode(1, :storage_status), do: :storage_status_unformatted
  def decode(2, :storage_status), do: :storage_status_ready
  def decode(3, :storage_status), do: :storage_status_not_supported
  def decode(0, :sub_mode), do: :sub_mode_stabilize
  def decode(1, :sub_mode), do: :sub_mode_acro
  def decode(2, :sub_mode), do: :sub_mode_alt_hold
  def decode(3, :sub_mode), do: :sub_mode_auto
  def decode(4, :sub_mode), do: :sub_mode_guided
  def decode(7, :sub_mode), do: :sub_mode_circle
  def decode(9, :sub_mode), do: :sub_mode_surface
  def decode(16, :sub_mode), do: :sub_mode_poshold
  def decode(19, :sub_mode), do: :sub_mode_manual
  def decode(0, :tracker_mode), do: :tracker_mode_manual
  def decode(1, :tracker_mode), do: :tracker_mode_stop
  def decode(2, :tracker_mode), do: :tracker_mode_scan
  def decode(3, :tracker_mode), do: :tracker_mode_servo_test
  def decode(10, :tracker_mode), do: :tracker_mode_auto
  def decode(16, :tracker_mode), do: :tracker_mode_initializing
  def decode(0, :uavcan_node_health), do: :uavcan_node_health_ok
  def decode(1, :uavcan_node_health), do: :uavcan_node_health_warning
  def decode(2, :uavcan_node_health), do: :uavcan_node_health_error
  def decode(3, :uavcan_node_health), do: :uavcan_node_health_critical
  def decode(0, :uavcan_node_mode), do: :uavcan_node_mode_operational
  def decode(1, :uavcan_node_mode), do: :uavcan_node_mode_initialization
  def decode(2, :uavcan_node_mode), do: :uavcan_node_mode_maintenance
  def decode(3, :uavcan_node_mode), do: :uavcan_node_mode_software_update
  def decode(7, :uavcan_node_mode), do: :uavcan_node_mode_offline
  def decode(0, :uavionix_adsb_emergency_status), do: :uavionix_adsb_out_no_emergency
  def decode(1, :uavionix_adsb_emergency_status), do: :uavionix_adsb_out_general_emergency
  def decode(2, :uavionix_adsb_emergency_status), do: :uavionix_adsb_out_lifeguard_emergency
  def decode(3, :uavionix_adsb_emergency_status), do: :uavionix_adsb_out_minimum_fuel_emergency
  def decode(4, :uavionix_adsb_emergency_status), do: :uavionix_adsb_out_no_comm_emergency
  def decode(5, :uavionix_adsb_emergency_status), do: :uavionix_adsb_out_unlawful_interferance_emergency
  def decode(6, :uavionix_adsb_emergency_status), do: :uavionix_adsb_out_downed_aircraft_emergency
  def decode(7, :uavionix_adsb_emergency_status), do: :uavionix_adsb_out_reserved
  def decode(0, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_no_data
  def decode(1, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_l15m_w23m
  def decode(2, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_l25m_w28p5m
  def decode(3, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_l25_34m
  def decode(4, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_l35_33m
  def decode(5, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_l35_38m
  def decode(6, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_l45_39p5m
  def decode(7, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_l45_45m
  def decode(8, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_l55_45m
  def decode(9, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_l55_52m
  def decode(10, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_l65_59p5m
  def decode(11, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_l65_67m
  def decode(12, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_l75_w72p5m
  def decode(13, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_l75_w80m
  def decode(14, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_l85_w80m
  def decode(15, :uavionix_adsb_out_cfg_aircraft_size), do: :uavionix_adsb_out_cfg_aircraft_size_l85_w90m
  def decode(0, :uavionix_adsb_out_cfg_gps_offset_lat), do: :uavionix_adsb_out_cfg_gps_offset_lat_no_data
  def decode(1, :uavionix_adsb_out_cfg_gps_offset_lat), do: :uavionix_adsb_out_cfg_gps_offset_lat_left_2m
  def decode(2, :uavionix_adsb_out_cfg_gps_offset_lat), do: :uavionix_adsb_out_cfg_gps_offset_lat_left_4m
  def decode(3, :uavionix_adsb_out_cfg_gps_offset_lat), do: :uavionix_adsb_out_cfg_gps_offset_lat_left_6m
  def decode(4, :uavionix_adsb_out_cfg_gps_offset_lat), do: :uavionix_adsb_out_cfg_gps_offset_lat_right_0m
  def decode(5, :uavionix_adsb_out_cfg_gps_offset_lat), do: :uavionix_adsb_out_cfg_gps_offset_lat_right_2m
  def decode(6, :uavionix_adsb_out_cfg_gps_offset_lat), do: :uavionix_adsb_out_cfg_gps_offset_lat_right_4m
  def decode(7, :uavionix_adsb_out_cfg_gps_offset_lat), do: :uavionix_adsb_out_cfg_gps_offset_lat_right_6m
  def decode(0, :uavionix_adsb_out_cfg_gps_offset_lon), do: :uavionix_adsb_out_cfg_gps_offset_lon_no_data
  def decode(1, :uavionix_adsb_out_cfg_gps_offset_lon), do: :uavionix_adsb_out_cfg_gps_offset_lon_applied_by_sensor
  def decode(0, :uavionix_adsb_out_dynamic_gps_fix), do: :uavionix_adsb_out_dynamic_gps_fix_none_0
  def decode(1, :uavionix_adsb_out_dynamic_gps_fix), do: :uavionix_adsb_out_dynamic_gps_fix_none_1
  def decode(2, :uavionix_adsb_out_dynamic_gps_fix), do: :uavionix_adsb_out_dynamic_gps_fix_2d
  def decode(3, :uavionix_adsb_out_dynamic_gps_fix), do: :uavionix_adsb_out_dynamic_gps_fix_3d
  def decode(4, :uavionix_adsb_out_dynamic_gps_fix), do: :uavionix_adsb_out_dynamic_gps_fix_dgps
  def decode(5, :uavionix_adsb_out_dynamic_gps_fix), do: :uavionix_adsb_out_dynamic_gps_fix_rtk
  def decode(0b1, :uavionix_adsb_out_dynamic_state), do: :uavionix_adsb_out_dynamic_state_intent_change
  def decode(0b10, :uavionix_adsb_out_dynamic_state), do: :uavionix_adsb_out_dynamic_state_autopilot_enabled
  def decode(0b100, :uavionix_adsb_out_dynamic_state), do: :uavionix_adsb_out_dynamic_state_nicbaro_crosschecked
  def decode(0b1000, :uavionix_adsb_out_dynamic_state), do: :uavionix_adsb_out_dynamic_state_on_ground
  def decode(0b10000, :uavionix_adsb_out_dynamic_state), do: :uavionix_adsb_out_dynamic_state_ident
  def decode(0, :uavionix_adsb_out_rf_select), do: :uavionix_adsb_out_rf_select_standby
  def decode(1, :uavionix_adsb_out_rf_select), do: :uavionix_adsb_out_rf_select_rx_enabled
  def decode(2, :uavionix_adsb_out_rf_select), do: :uavionix_adsb_out_rf_select_tx_enabled
  def decode(0, :uavionix_adsb_rf_health), do: :uavionix_adsb_rf_health_initializing
  def decode(1, :uavionix_adsb_rf_health), do: :uavionix_adsb_rf_health_ok
  def decode(2, :uavionix_adsb_rf_health), do: :uavionix_adsb_rf_health_fail_tx
  def decode(16, :uavionix_adsb_rf_health), do: :uavionix_adsb_rf_health_fail_rx
  def decode(0b1, :utm_data_avail_flags), do: :utm_data_avail_flags_time_valid
  def decode(0b10, :utm_data_avail_flags), do: :utm_data_avail_flags_uas_id_available
  def decode(0b100, :utm_data_avail_flags), do: :utm_data_avail_flags_position_available
  def decode(0b1000, :utm_data_avail_flags), do: :utm_data_avail_flags_altitude_available
  def decode(0b10000, :utm_data_avail_flags), do: :utm_data_avail_flags_relative_altitude_available
  def decode(0b100000, :utm_data_avail_flags), do: :utm_data_avail_flags_horizontal_velo_available
  def decode(0b1000000, :utm_data_avail_flags), do: :utm_data_avail_flags_vertical_velo_available
  def decode(0b10000000, :utm_data_avail_flags), do: :utm_data_avail_flags_next_waypoint_available
  def decode(1, :utm_flight_state), do: :utm_flight_state_unknown
  def decode(2, :utm_flight_state), do: :utm_flight_state_ground
  def decode(3, :utm_flight_state), do: :utm_flight_state_airborne
  def decode(16, :utm_flight_state), do: :utm_flight_state_emergency
  def decode(32, :utm_flight_state), do: :utm_flight_state_noctrl
  def decode(1, :video_stream_status_flags), do: :video_stream_status_flags_running
  def decode(2, :video_stream_status_flags), do: :video_stream_status_flags_thermal
  def decode(0, :video_stream_type), do: :video_stream_type_rtsp
  def decode(1, :video_stream_type), do: :video_stream_type_rtpudp
  def decode(2, :video_stream_type), do: :video_stream_type_tcp_mpeg
  def decode(3, :video_stream_type), do: :video_stream_type_mpeg_ts_h264
  def decode(0, :vtol_transition_heading), do: :vtol_transition_heading_vehicle_default
  def decode(1, :vtol_transition_heading), do: :vtol_transition_heading_next_waypoint
  def decode(2, :vtol_transition_heading), do: :vtol_transition_heading_takeoff
  def decode(3, :vtol_transition_heading), do: :vtol_transition_heading_specified
  def decode(4, :vtol_transition_heading), do: :vtol_transition_heading_any
  def decode(0, :winch_actions), do: :winch_relaxed
  def decode(1, :winch_actions), do: :winch_relative_length_control
  def decode(2, :winch_actions), do: :winch_rate_control
  def decode(value, _enum), do: value
  
  
  @doc "Return the message checksum and size in bytes for a message with a specified id"
  @typep target_type :: :broadcast | :system | :system_component | :component
  @spec msg_attributes(MAVLink.Types.message_id) :: {:ok, MAVLink.Types.crc_extra, pos_integer, target_type} | {:error, :unknown_message_id}
  def msg_attributes(0), do: {:ok, 50, 9, :broadcast}
  def msg_attributes(1), do: {:ok, 124, 31, :broadcast}
  def msg_attributes(2), do: {:ok, 137, 12, :broadcast}
  def msg_attributes(4), do: {:ok, 237, 14, :system_component}
  def msg_attributes(5), do: {:ok, 217, 28, :system}
  def msg_attributes(6), do: {:ok, 104, 3, :broadcast}
  def msg_attributes(7), do: {:ok, 119, 32, :broadcast}
  def msg_attributes(11), do: {:ok, 89, 6, :system}
  def msg_attributes(20), do: {:ok, 214, 20, :system_component}
  def msg_attributes(21), do: {:ok, 159, 2, :system_component}
  def msg_attributes(22), do: {:ok, 220, 25, :broadcast}
  def msg_attributes(23), do: {:ok, 168, 23, :system_component}
  def msg_attributes(24), do: {:ok, 24, 52, :broadcast}
  def msg_attributes(25), do: {:ok, 23, 101, :broadcast}
  def msg_attributes(26), do: {:ok, 170, 24, :broadcast}
  def msg_attributes(27), do: {:ok, 144, 29, :broadcast}
  def msg_attributes(28), do: {:ok, 67, 16, :broadcast}
  def msg_attributes(29), do: {:ok, 115, 16, :broadcast}
  def msg_attributes(30), do: {:ok, 39, 28, :broadcast}
  def msg_attributes(31), do: {:ok, 246, 48, :broadcast}
  def msg_attributes(32), do: {:ok, 185, 28, :broadcast}
  def msg_attributes(33), do: {:ok, 104, 28, :broadcast}
  def msg_attributes(34), do: {:ok, 237, 22, :broadcast}
  def msg_attributes(35), do: {:ok, 244, 22, :broadcast}
  def msg_attributes(36), do: {:ok, 222, 37, :broadcast}
  def msg_attributes(37), do: {:ok, 212, 7, :system_component}
  def msg_attributes(38), do: {:ok, 9, 7, :system_component}
  def msg_attributes(39), do: {:ok, 254, 38, :system_component}
  def msg_attributes(40), do: {:ok, 230, 5, :system_component}
  def msg_attributes(41), do: {:ok, 28, 4, :system_component}
  def msg_attributes(42), do: {:ok, 28, 2, :broadcast}
  def msg_attributes(43), do: {:ok, 132, 3, :system_component}
  def msg_attributes(44), do: {:ok, 221, 5, :system_component}
  def msg_attributes(45), do: {:ok, 232, 3, :system_component}
  def msg_attributes(46), do: {:ok, 11, 2, :broadcast}
  def msg_attributes(47), do: {:ok, 153, 4, :system_component}
  def msg_attributes(48), do: {:ok, 41, 21, :system}
  def msg_attributes(49), do: {:ok, 39, 20, :broadcast}
  def msg_attributes(50), do: {:ok, 78, 37, :system_component}
  def msg_attributes(51), do: {:ok, 196, 5, :system_component}
  def msg_attributes(54), do: {:ok, 15, 27, :system_component}
  def msg_attributes(55), do: {:ok, 3, 25, :broadcast}
  def msg_attributes(61), do: {:ok, 167, 72, :broadcast}
  def msg_attributes(62), do: {:ok, 183, 26, :broadcast}
  def msg_attributes(63), do: {:ok, 119, 181, :broadcast}
  def msg_attributes(64), do: {:ok, 191, 225, :broadcast}
  def msg_attributes(65), do: {:ok, 118, 42, :broadcast}
  def msg_attributes(66), do: {:ok, 148, 6, :system_component}
  def msg_attributes(67), do: {:ok, 21, 4, :broadcast}
  def msg_attributes(69), do: {:ok, 243, 11, :broadcast}
  def msg_attributes(70), do: {:ok, 124, 38, :system_component}
  def msg_attributes(73), do: {:ok, 38, 38, :system_component}
  def msg_attributes(74), do: {:ok, 20, 20, :broadcast}
  def msg_attributes(75), do: {:ok, 158, 35, :system_component}
  def msg_attributes(76), do: {:ok, 152, 33, :system_component}
  def msg_attributes(77), do: {:ok, 143, 3, :broadcast}
  def msg_attributes(81), do: {:ok, 106, 22, :broadcast}
  def msg_attributes(82), do: {:ok, 49, 39, :system_component}
  def msg_attributes(83), do: {:ok, 22, 37, :broadcast}
  def msg_attributes(84), do: {:ok, 143, 53, :system_component}
  def msg_attributes(85), do: {:ok, 140, 51, :broadcast}
  def msg_attributes(86), do: {:ok, 5, 53, :system_component}
  def msg_attributes(87), do: {:ok, 150, 51, :broadcast}
  def msg_attributes(89), do: {:ok, 231, 28, :broadcast}
  def msg_attributes(90), do: {:ok, 183, 56, :broadcast}
  def msg_attributes(91), do: {:ok, 63, 42, :broadcast}
  def msg_attributes(92), do: {:ok, 54, 33, :broadcast}
  def msg_attributes(93), do: {:ok, 47, 81, :broadcast}
  def msg_attributes(100), do: {:ok, 175, 34, :broadcast}
  def msg_attributes(101), do: {:ok, 102, 117, :broadcast}
  def msg_attributes(102), do: {:ok, 158, 117, :broadcast}
  def msg_attributes(103), do: {:ok, 208, 57, :broadcast}
  def msg_attributes(104), do: {:ok, 56, 116, :broadcast}
  def msg_attributes(105), do: {:ok, 93, 63, :broadcast}
  def msg_attributes(106), do: {:ok, 138, 44, :broadcast}
  def msg_attributes(107), do: {:ok, 108, 65, :broadcast}
  def msg_attributes(108), do: {:ok, 32, 84, :broadcast}
  def msg_attributes(109), do: {:ok, 185, 9, :broadcast}
  def msg_attributes(110), do: {:ok, 84, 254, :system_component}
  def msg_attributes(111), do: {:ok, 34, 16, :broadcast}
  def msg_attributes(112), do: {:ok, 174, 12, :broadcast}
  def msg_attributes(113), do: {:ok, 124, 39, :broadcast}
  def msg_attributes(114), do: {:ok, 237, 44, :broadcast}
  def msg_attributes(115), do: {:ok, 4, 64, :broadcast}
  def msg_attributes(116), do: {:ok, 76, 24, :broadcast}
  def msg_attributes(117), do: {:ok, 128, 6, :system_component}
  def msg_attributes(118), do: {:ok, 56, 14, :broadcast}
  def msg_attributes(119), do: {:ok, 116, 12, :system_component}
  def msg_attributes(120), do: {:ok, 134, 97, :broadcast}
  def msg_attributes(121), do: {:ok, 237, 2, :system_component}
  def msg_attributes(122), do: {:ok, 203, 2, :system_component}
  def msg_attributes(123), do: {:ok, 250, 113, :system_component}
  def msg_attributes(124), do: {:ok, 87, 57, :broadcast}
  def msg_attributes(125), do: {:ok, 203, 6, :broadcast}
  def msg_attributes(126), do: {:ok, 220, 79, :broadcast}
  def msg_attributes(127), do: {:ok, 25, 35, :broadcast}
  def msg_attributes(128), do: {:ok, 226, 35, :broadcast}
  def msg_attributes(129), do: {:ok, 46, 24, :broadcast}
  def msg_attributes(130), do: {:ok, 29, 13, :broadcast}
  def msg_attributes(131), do: {:ok, 223, 255, :broadcast}
  def msg_attributes(132), do: {:ok, 85, 39, :broadcast}
  def msg_attributes(133), do: {:ok, 6, 18, :broadcast}
  def msg_attributes(134), do: {:ok, 229, 43, :broadcast}
  def msg_attributes(135), do: {:ok, 203, 8, :broadcast}
  def msg_attributes(136), do: {:ok, 1, 22, :broadcast}
  def msg_attributes(137), do: {:ok, 195, 16, :broadcast}
  def msg_attributes(138), do: {:ok, 109, 120, :broadcast}
  def msg_attributes(139), do: {:ok, 168, 43, :system_component}
  def msg_attributes(140), do: {:ok, 181, 41, :broadcast}
  def msg_attributes(141), do: {:ok, 47, 32, :broadcast}
  def msg_attributes(142), do: {:ok, 72, 243, :broadcast}
  def msg_attributes(143), do: {:ok, 131, 16, :broadcast}
  def msg_attributes(144), do: {:ok, 127, 93, :broadcast}
  def msg_attributes(146), do: {:ok, 103, 100, :broadcast}
  def msg_attributes(147), do: {:ok, 154, 49, :broadcast}
  def msg_attributes(148), do: {:ok, 178, 78, :broadcast}
  def msg_attributes(149), do: {:ok, 200, 60, :broadcast}
  def msg_attributes(150), do: {:ok, 134, 42, :broadcast}
  def msg_attributes(151), do: {:ok, 219, 8, :system_component}
  def msg_attributes(152), do: {:ok, 208, 8, :broadcast}
  def msg_attributes(153), do: {:ok, 188, 12, :broadcast}
  def msg_attributes(154), do: {:ok, 84, 15, :system_component}
  def msg_attributes(155), do: {:ok, 22, 13, :system_component}
  def msg_attributes(156), do: {:ok, 19, 6, :system_component}
  def msg_attributes(157), do: {:ok, 21, 15, :system_component}
  def msg_attributes(158), do: {:ok, 134, 14, :system_component}
  def msg_attributes(160), do: {:ok, 78, 12, :system_component}
  def msg_attributes(161), do: {:ok, 68, 3, :system_component}
  def msg_attributes(162), do: {:ok, 189, 9, :broadcast}
  def msg_attributes(163), do: {:ok, 127, 28, :broadcast}
  def msg_attributes(164), do: {:ok, 154, 44, :broadcast}
  def msg_attributes(165), do: {:ok, 21, 3, :broadcast}
  def msg_attributes(166), do: {:ok, 21, 9, :broadcast}
  def msg_attributes(167), do: {:ok, 144, 22, :broadcast}
  def msg_attributes(168), do: {:ok, 1, 12, :broadcast}
  def msg_attributes(169), do: {:ok, 234, 18, :broadcast}
  def msg_attributes(170), do: {:ok, 73, 34, :broadcast}
  def msg_attributes(171), do: {:ok, 181, 66, :broadcast}
  def msg_attributes(172), do: {:ok, 22, 98, :broadcast}
  def msg_attributes(173), do: {:ok, 83, 8, :broadcast}
  def msg_attributes(174), do: {:ok, 167, 48, :broadcast}
  def msg_attributes(175), do: {:ok, 138, 19, :system_component}
  def msg_attributes(176), do: {:ok, 234, 3, :system_component}
  def msg_attributes(177), do: {:ok, 240, 20, :broadcast}
  def msg_attributes(178), do: {:ok, 47, 24, :broadcast}
  def msg_attributes(179), do: {:ok, 189, 29, :system}
  def msg_attributes(180), do: {:ok, 52, 47, :system}
  def msg_attributes(181), do: {:ok, 174, 4, :broadcast}
  def msg_attributes(182), do: {:ok, 229, 40, :broadcast}
  def msg_attributes(183), do: {:ok, 85, 2, :system_component}
  def msg_attributes(184), do: {:ok, 159, 206, :system_component}
  def msg_attributes(185), do: {:ok, 186, 7, :system_component}
  def msg_attributes(186), do: {:ok, 72, 29, :system_component}
  def msg_attributes(191), do: {:ok, 92, 27, :broadcast}
  def msg_attributes(192), do: {:ok, 36, 54, :broadcast}
  def msg_attributes(193), do: {:ok, 71, 26, :broadcast}
  def msg_attributes(194), do: {:ok, 98, 25, :broadcast}
  def msg_attributes(195), do: {:ok, 120, 37, :broadcast}
  def msg_attributes(200), do: {:ok, 134, 42, :system_component}
  def msg_attributes(201), do: {:ok, 205, 14, :system_component}
  def msg_attributes(214), do: {:ok, 69, 8, :system_component}
  def msg_attributes(215), do: {:ok, 101, 3, :broadcast}
  def msg_attributes(216), do: {:ok, 50, 3, :system_component}
  def msg_attributes(217), do: {:ok, 202, 6, :broadcast}
  def msg_attributes(218), do: {:ok, 17, 7, :system_component}
  def msg_attributes(219), do: {:ok, 162, 2, :broadcast}
  def msg_attributes(225), do: {:ok, 208, 65, :broadcast}
  def msg_attributes(226), do: {:ok, 207, 8, :broadcast}
  def msg_attributes(230), do: {:ok, 163, 42, :broadcast}
  def msg_attributes(231), do: {:ok, 105, 40, :broadcast}
  def msg_attributes(232), do: {:ok, 151, 65, :broadcast}
  def msg_attributes(233), do: {:ok, 35, 182, :broadcast}
  def msg_attributes(234), do: {:ok, 150, 40, :broadcast}
  def msg_attributes(235), do: {:ok, 179, 42, :broadcast}
  def msg_attributes(241), do: {:ok, 90, 32, :broadcast}
  def msg_attributes(242), do: {:ok, 104, 60, :broadcast}
  def msg_attributes(243), do: {:ok, 85, 61, :system}
  def msg_attributes(244), do: {:ok, 95, 6, :broadcast}
  def msg_attributes(245), do: {:ok, 130, 2, :broadcast}
  def msg_attributes(246), do: {:ok, 184, 38, :broadcast}
  def msg_attributes(247), do: {:ok, 81, 19, :broadcast}
  def msg_attributes(248), do: {:ok, 8, 254, :system_component}
  def msg_attributes(249), do: {:ok, 204, 36, :broadcast}
  def msg_attributes(250), do: {:ok, 49, 30, :broadcast}
  def msg_attributes(251), do: {:ok, 170, 18, :broadcast}
  def msg_attributes(252), do: {:ok, 44, 18, :broadcast}
  def msg_attributes(253), do: {:ok, 83, 54, :broadcast}
  def msg_attributes(254), do: {:ok, 46, 9, :broadcast}
  def msg_attributes(256), do: {:ok, 71, 42, :system_component}
  def msg_attributes(257), do: {:ok, 131, 9, :broadcast}
  def msg_attributes(258), do: {:ok, 187, 232, :system_component}
  def msg_attributes(259), do: {:ok, 92, 235, :broadcast}
  def msg_attributes(260), do: {:ok, 146, 13, :broadcast}
  def msg_attributes(261), do: {:ok, 179, 27, :broadcast}
  def msg_attributes(262), do: {:ok, 12, 22, :broadcast}
  def msg_attributes(263), do: {:ok, 133, 255, :broadcast}
  def msg_attributes(264), do: {:ok, 49, 28, :broadcast}
  def msg_attributes(265), do: {:ok, 26, 20, :broadcast}
  def msg_attributes(266), do: {:ok, 193, 255, :system_component}
  def msg_attributes(267), do: {:ok, 35, 255, :system_component}
  def msg_attributes(268), do: {:ok, 14, 4, :system_component}
  def msg_attributes(269), do: {:ok, 109, 213, :broadcast}
  def msg_attributes(270), do: {:ok, 59, 19, :broadcast}
  def msg_attributes(299), do: {:ok, 19, 96, :broadcast}
  def msg_attributes(301), do: {:ok, 243, 58, :broadcast}
  def msg_attributes(310), do: {:ok, 28, 17, :broadcast}
  def msg_attributes(311), do: {:ok, 95, 116, :broadcast}
  def msg_attributes(330), do: {:ok, 23, 167, :broadcast}
  def msg_attributes(331), do: {:ok, 91, 232, :broadcast}
  def msg_attributes(335), do: {:ok, 225, 24, :broadcast}
  def msg_attributes(339), do: {:ok, 199, 5, :broadcast}
  def msg_attributes(340), do: {:ok, 99, 70, :broadcast}
  def msg_attributes(350), do: {:ok, 232, 252, :broadcast}
  def msg_attributes(373), do: {:ok, 117, 42, :broadcast}
  def msg_attributes(375), do: {:ok, 251, 140, :broadcast}
  def msg_attributes(9000), do: {:ok, 113, 137, :broadcast}
  def msg_attributes(9005), do: {:ok, 117, 34, :broadcast}
  def msg_attributes(10001), do: {:ok, 209, 20, :broadcast}
  def msg_attributes(10002), do: {:ok, 186, 41, :broadcast}
  def msg_attributes(10003), do: {:ok, 4, 1, :broadcast}
  def msg_attributes(11000), do: {:ok, 134, 52, :system_component}
  def msg_attributes(11001), do: {:ok, 15, 136, :broadcast}
  def msg_attributes(11002), do: {:ok, 234, 180, :system_component}
  def msg_attributes(11003), do: {:ok, 64, 5, :broadcast}
  def msg_attributes(11010), do: {:ok, 46, 49, :broadcast}
  def msg_attributes(11011), do: {:ok, 106, 44, :broadcast}
  def msg_attributes(11020), do: {:ok, 205, 16, :broadcast}
  def msg_attributes(11030), do: {:ok, 144, 44, :broadcast}
  def msg_attributes(11031), do: {:ok, 133, 44, :broadcast}
  def msg_attributes(11032), do: {:ok, 85, 44, :broadcast}
  def msg_attributes(11033), do: {:ok, 195, 37, :system_component}
  def msg_attributes(11034), do: {:ok, 79, 5, :broadcast}
  def msg_attributes(11035), do: {:ok, 128, 8, :system_component}
  def msg_attributes(11036), do: {:ok, 177, 34, :broadcast}
  def msg_attributes(11037), do: {:ok, 130, 28, :broadcast}
  def msg_attributes(42000), do: {:ok, 227, 1, :broadcast}
  def msg_attributes(42001), do: {:ok, 239, 46, :broadcast}
  def msg_attributes(_), do: {:error, :unknown_message_id}


  @doc "Helper function for messages to pack bitmask fields"
  @spec pack_bitmask(MapSet.t(APM.Types.enum_value), APM.Types.enum_type, (APM.Types.enum_value, APM.Types.enum_type -> integer)) :: integer
  def pack_bitmask(flag_set, enum, encode), do: Enum.reduce(flag_set, 0, & &2 ^^^ encode.(&1, enum))


  @doc "Helper function for decode() to unpack bitmask fields"
  @spec unpack_bitmask(integer, APM.Types.enum_type, (integer, APM.Types.enum_type -> APM.Types.enum_value), MapSet.t, integer) :: MapSet.t(APM.Types.enum_value)
  def unpack_bitmask(value, enum, decode, acc \\ MapSet.new(), pos \\ 1) do
    case {decode.(pos, enum), (value &&& pos) != 0} do
      {not_atom, _} when not is_atom(not_atom) ->
        acc
      {entry, true} ->
        unpack_bitmask(value, enum, decode, MapSet.put(acc, entry), pos <<< 1)
      {_, false} ->
        unpack_bitmask(value, enum, decode, acc, pos <<< 1)
    end
  end


  @doc "Unpack a MAVLink message given a MAVLink frame's message id and payload"
  @spec unpack(MAVLink.Types.message_id, binary) :: APM.Types.message | {:error, :unknown_message}
  def unpack(0, _, <<custom_mode_f::little-integer-size(32),type_f::integer-size(8),autopilot_f::integer-size(8),base_mode_f::integer-size(8),system_status_f::integer-size(8),mavlink_version_f::integer-size(8)>>), do: {:ok, %APM.Message.Heartbeat{custom_mode: custom_mode_f, type: decode(type_f, :mav_type), autopilot: decode(autopilot_f, :mav_autopilot), base_mode: unpack_bitmask(base_mode_f, :mav_mode_flag, &decode/2), system_status: decode(system_status_f, :mav_state), mavlink_version: mavlink_version_f}}
  def unpack(1, _, <<onboard_control_sensors_present_f::little-integer-size(32),onboard_control_sensors_enabled_f::little-integer-size(32),onboard_control_sensors_health_f::little-integer-size(32),load_f::little-integer-size(16),voltage_battery_f::little-integer-size(16),current_battery_f::little-signed-integer-size(16),drop_rate_comm_f::little-integer-size(16),errors_comm_f::little-integer-size(16),errors_count1_f::little-integer-size(16),errors_count2_f::little-integer-size(16),errors_count3_f::little-integer-size(16),errors_count4_f::little-integer-size(16),battery_remaining_f::signed-integer-size(8)>>), do: {:ok, %APM.Message.SysStatus{onboard_control_sensors_present: unpack_bitmask(onboard_control_sensors_present_f, :mav_sys_status_sensor, &decode/2), onboard_control_sensors_enabled: unpack_bitmask(onboard_control_sensors_enabled_f, :mav_sys_status_sensor, &decode/2), onboard_control_sensors_health: unpack_bitmask(onboard_control_sensors_health_f, :mav_sys_status_sensor, &decode/2), load: load_f, voltage_battery: voltage_battery_f, current_battery: current_battery_f, drop_rate_comm: drop_rate_comm_f, errors_comm: errors_comm_f, errors_count1: errors_count1_f, errors_count2: errors_count2_f, errors_count3: errors_count3_f, errors_count4: errors_count4_f, battery_remaining: battery_remaining_f}}
  def unpack(2, _, <<time_unix_usec_f::little-integer-size(64),time_boot_ms_f::little-integer-size(32)>>), do: {:ok, %APM.Message.SystemTime{time_unix_usec: time_unix_usec_f, time_boot_ms: time_boot_ms_f}}
  def unpack(4, _, <<time_usec_f::little-integer-size(64),seq_f::little-integer-size(32),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.Ping{time_usec: time_usec_f, seq: seq_f, target_system: target_system_f, target_component: target_component_f}}
  def unpack(5, _, <<target_system_f::integer-size(8),control_request_f::integer-size(8),version_f::integer-size(8),passkey_f::binary-size(25)>>), do: {:ok, %APM.Message.ChangeOperatorControl{target_system: target_system_f, control_request: control_request_f, version: version_f, passkey: replace_trailing(passkey_f, <<0>>, "")}}
  def unpack(6, _, <<gcs_system_id_f::integer-size(8),control_request_f::integer-size(8),ack_f::integer-size(8)>>), do: {:ok, %APM.Message.ChangeOperatorControlAck{gcs_system_id: gcs_system_id_f, control_request: control_request_f, ack: ack_f}}
  def unpack(7, _, <<key_f::binary-size(32)>>), do: {:ok, %APM.Message.AuthKey{key: replace_trailing(key_f, <<0>>, "")}}
  def unpack(11, _, <<custom_mode_f::little-integer-size(32),target_system_f::integer-size(8),base_mode_f::integer-size(8)>>), do: {:ok, %APM.Message.SetMode{custom_mode: custom_mode_f, target_system: target_system_f, base_mode: decode(base_mode_f, :mav_mode)}}
  def unpack(20, _, <<param_index_f::little-signed-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),param_id_f::binary-size(16)>>), do: {:ok, %APM.Message.ParamRequestRead{param_index: param_index_f, target_system: target_system_f, target_component: target_component_f, param_id: replace_trailing(param_id_f, <<0>>, "")}}
  def unpack(21, _, <<target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.ParamRequestList{target_system: target_system_f, target_component: target_component_f}}
  def unpack(22, _, <<param_value_f::binary-size(4),param_count_f::little-integer-size(16),param_index_f::little-integer-size(16),param_id_f::binary-size(16),param_type_f::integer-size(8)>>), do: {:ok, %APM.Message.ParamValue{param_value: unpack_float(param_value_f), param_count: param_count_f, param_index: param_index_f, param_id: replace_trailing(param_id_f, <<0>>, ""), param_type: decode(param_type_f, :mav_param_type)}}
  def unpack(23, _, <<param_value_f::binary-size(4),target_system_f::integer-size(8),target_component_f::integer-size(8),param_id_f::binary-size(16),param_type_f::integer-size(8)>>), do: {:ok, %APM.Message.ParamSet{param_value: unpack_float(param_value_f), target_system: target_system_f, target_component: target_component_f, param_id: replace_trailing(param_id_f, <<0>>, ""), param_type: decode(param_type_f, :mav_param_type)}}
  def unpack(24, 1, <<time_usec_f::little-integer-size(64),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),alt_f::little-signed-integer-size(32),eph_f::little-integer-size(16),epv_f::little-integer-size(16),vel_f::little-integer-size(16),cog_f::little-integer-size(16),fix_type_f::integer-size(8),satellites_visible_f::integer-size(8)>>), do: {:ok, %APM.Message.GpsRawInt{time_usec: time_usec_f, lat: lat_f, lon: lon_f, alt: alt_f, eph: eph_f, epv: epv_f, vel: vel_f, cog: cog_f, fix_type: decode(fix_type_f, :gps_fix_type), satellites_visible: satellites_visible_f}}
  def unpack(24, 2, <<time_usec_f::little-integer-size(64),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),alt_f::little-signed-integer-size(32),eph_f::little-integer-size(16),epv_f::little-integer-size(16),vel_f::little-integer-size(16),cog_f::little-integer-size(16),fix_type_f::integer-size(8),satellites_visible_f::integer-size(8),alt_ellipsoid_f::little-signed-integer-size(32),h_acc_f::little-integer-size(32),v_acc_f::little-integer-size(32),vel_acc_f::little-integer-size(32),hdg_acc_f::little-integer-size(32),yaw_f::little-integer-size(16)>>), do: {:ok, %APM.Message.GpsRawInt{time_usec: time_usec_f, lat: lat_f, lon: lon_f, alt: alt_f, eph: eph_f, epv: epv_f, vel: vel_f, cog: cog_f, fix_type: decode(fix_type_f, :gps_fix_type), satellites_visible: satellites_visible_f,alt_ellipsoid: alt_ellipsoid_f, h_acc: h_acc_f, v_acc: v_acc_f, vel_acc: vel_acc_f, hdg_acc: hdg_acc_f, yaw: yaw_f}}
  def unpack(25, _, <<satellites_visible_f::integer-size(8),satellite_prn_f::binary-size(20),satellite_used_f::binary-size(20),satellite_elevation_f::binary-size(20),satellite_azimuth_f::binary-size(20),satellite_snr_f::binary-size(20)>>), do: {:ok, %APM.Message.GpsStatus{satellites_visible: satellites_visible_f, satellite_prn: unpack_array(satellite_prn_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end), satellite_used: unpack_array(satellite_used_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end), satellite_elevation: unpack_array(satellite_elevation_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end), satellite_azimuth: unpack_array(satellite_azimuth_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end), satellite_snr: unpack_array(satellite_snr_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(26, 1, <<time_boot_ms_f::little-integer-size(32),xacc_f::little-signed-integer-size(16),yacc_f::little-signed-integer-size(16),zacc_f::little-signed-integer-size(16),xgyro_f::little-signed-integer-size(16),ygyro_f::little-signed-integer-size(16),zgyro_f::little-signed-integer-size(16),xmag_f::little-signed-integer-size(16),ymag_f::little-signed-integer-size(16),zmag_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.ScaledImu{time_boot_ms: time_boot_ms_f, xacc: xacc_f, yacc: yacc_f, zacc: zacc_f, xgyro: xgyro_f, ygyro: ygyro_f, zgyro: zgyro_f, xmag: xmag_f, ymag: ymag_f, zmag: zmag_f}}
  def unpack(26, 2, <<time_boot_ms_f::little-integer-size(32),xacc_f::little-signed-integer-size(16),yacc_f::little-signed-integer-size(16),zacc_f::little-signed-integer-size(16),xgyro_f::little-signed-integer-size(16),ygyro_f::little-signed-integer-size(16),zgyro_f::little-signed-integer-size(16),xmag_f::little-signed-integer-size(16),ymag_f::little-signed-integer-size(16),zmag_f::little-signed-integer-size(16),temperature_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.ScaledImu{time_boot_ms: time_boot_ms_f, xacc: xacc_f, yacc: yacc_f, zacc: zacc_f, xgyro: xgyro_f, ygyro: ygyro_f, zgyro: zgyro_f, xmag: xmag_f, ymag: ymag_f, zmag: zmag_f,temperature: temperature_f}}
  def unpack(27, 1, <<time_usec_f::little-integer-size(64),xacc_f::little-signed-integer-size(16),yacc_f::little-signed-integer-size(16),zacc_f::little-signed-integer-size(16),xgyro_f::little-signed-integer-size(16),ygyro_f::little-signed-integer-size(16),zgyro_f::little-signed-integer-size(16),xmag_f::little-signed-integer-size(16),ymag_f::little-signed-integer-size(16),zmag_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.RawImu{time_usec: time_usec_f, xacc: xacc_f, yacc: yacc_f, zacc: zacc_f, xgyro: xgyro_f, ygyro: ygyro_f, zgyro: zgyro_f, xmag: xmag_f, ymag: ymag_f, zmag: zmag_f}}
  def unpack(27, 2, <<time_usec_f::little-integer-size(64),xacc_f::little-signed-integer-size(16),yacc_f::little-signed-integer-size(16),zacc_f::little-signed-integer-size(16),xgyro_f::little-signed-integer-size(16),ygyro_f::little-signed-integer-size(16),zgyro_f::little-signed-integer-size(16),xmag_f::little-signed-integer-size(16),ymag_f::little-signed-integer-size(16),zmag_f::little-signed-integer-size(16),id_f::integer-size(8),temperature_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.RawImu{time_usec: time_usec_f, xacc: xacc_f, yacc: yacc_f, zacc: zacc_f, xgyro: xgyro_f, ygyro: ygyro_f, zgyro: zgyro_f, xmag: xmag_f, ymag: ymag_f, zmag: zmag_f,id: id_f, temperature: temperature_f}}
  def unpack(28, _, <<time_usec_f::little-integer-size(64),press_abs_f::little-signed-integer-size(16),press_diff1_f::little-signed-integer-size(16),press_diff2_f::little-signed-integer-size(16),temperature_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.RawPressure{time_usec: time_usec_f, press_abs: press_abs_f, press_diff1: press_diff1_f, press_diff2: press_diff2_f, temperature: temperature_f}}
  def unpack(29, 1, <<time_boot_ms_f::little-integer-size(32),press_abs_f::binary-size(4),press_diff_f::binary-size(4),temperature_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.ScaledPressure{time_boot_ms: time_boot_ms_f, press_abs: unpack_float(press_abs_f), press_diff: unpack_float(press_diff_f), temperature: temperature_f}}
  def unpack(29, 2, <<time_boot_ms_f::little-integer-size(32),press_abs_f::binary-size(4),press_diff_f::binary-size(4),temperature_f::little-signed-integer-size(16),temperature_press_diff_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.ScaledPressure{time_boot_ms: time_boot_ms_f, press_abs: unpack_float(press_abs_f), press_diff: unpack_float(press_diff_f), temperature: temperature_f,temperature_press_diff: temperature_press_diff_f}}
  def unpack(30, _, <<time_boot_ms_f::little-integer-size(32),roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4),rollspeed_f::binary-size(4),pitchspeed_f::binary-size(4),yawspeed_f::binary-size(4)>>), do: {:ok, %APM.Message.Attitude{time_boot_ms: time_boot_ms_f, roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f), rollspeed: unpack_float(rollspeed_f), pitchspeed: unpack_float(pitchspeed_f), yawspeed: unpack_float(yawspeed_f)}}
  def unpack(31, 1, <<time_boot_ms_f::little-integer-size(32),q1_f::binary-size(4),q2_f::binary-size(4),q3_f::binary-size(4),q4_f::binary-size(4),rollspeed_f::binary-size(4),pitchspeed_f::binary-size(4),yawspeed_f::binary-size(4)>>), do: {:ok, %APM.Message.AttitudeQuaternion{time_boot_ms: time_boot_ms_f, q1: unpack_float(q1_f), q2: unpack_float(q2_f), q3: unpack_float(q3_f), q4: unpack_float(q4_f), rollspeed: unpack_float(rollspeed_f), pitchspeed: unpack_float(pitchspeed_f), yawspeed: unpack_float(yawspeed_f)}}
  def unpack(31, 2, <<time_boot_ms_f::little-integer-size(32),q1_f::binary-size(4),q2_f::binary-size(4),q3_f::binary-size(4),q4_f::binary-size(4),rollspeed_f::binary-size(4),pitchspeed_f::binary-size(4),yawspeed_f::binary-size(4),repr_offset_q_f::binary-size(16)>>), do: {:ok, %APM.Message.AttitudeQuaternion{time_boot_ms: time_boot_ms_f, q1: unpack_float(q1_f), q2: unpack_float(q2_f), q3: unpack_float(q3_f), q4: unpack_float(q4_f), rollspeed: unpack_float(rollspeed_f), pitchspeed: unpack_float(pitchspeed_f), yawspeed: unpack_float(yawspeed_f),repr_offset_q: unpack_array(repr_offset_q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(32, _, <<time_boot_ms_f::little-integer-size(32),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),vx_f::binary-size(4),vy_f::binary-size(4),vz_f::binary-size(4)>>), do: {:ok, %APM.Message.LocalPositionNed{time_boot_ms: time_boot_ms_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), vx: unpack_float(vx_f), vy: unpack_float(vy_f), vz: unpack_float(vz_f)}}
  def unpack(33, _, <<time_boot_ms_f::little-integer-size(32),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),alt_f::little-signed-integer-size(32),relative_alt_f::little-signed-integer-size(32),vx_f::little-signed-integer-size(16),vy_f::little-signed-integer-size(16),vz_f::little-signed-integer-size(16),hdg_f::little-integer-size(16)>>), do: {:ok, %APM.Message.GlobalPositionInt{time_boot_ms: time_boot_ms_f, lat: lat_f, lon: lon_f, alt: alt_f, relative_alt: relative_alt_f, vx: vx_f, vy: vy_f, vz: vz_f, hdg: hdg_f}}
  def unpack(34, _, <<time_boot_ms_f::little-integer-size(32),chan1_scaled_f::little-signed-integer-size(16),chan2_scaled_f::little-signed-integer-size(16),chan3_scaled_f::little-signed-integer-size(16),chan4_scaled_f::little-signed-integer-size(16),chan5_scaled_f::little-signed-integer-size(16),chan6_scaled_f::little-signed-integer-size(16),chan7_scaled_f::little-signed-integer-size(16),chan8_scaled_f::little-signed-integer-size(16),port_f::integer-size(8),rssi_f::integer-size(8)>>), do: {:ok, %APM.Message.RcChannelsScaled{time_boot_ms: time_boot_ms_f, chan1_scaled: chan1_scaled_f, chan2_scaled: chan2_scaled_f, chan3_scaled: chan3_scaled_f, chan4_scaled: chan4_scaled_f, chan5_scaled: chan5_scaled_f, chan6_scaled: chan6_scaled_f, chan7_scaled: chan7_scaled_f, chan8_scaled: chan8_scaled_f, port: port_f, rssi: rssi_f}}
  def unpack(35, _, <<time_boot_ms_f::little-integer-size(32),chan1_raw_f::little-integer-size(16),chan2_raw_f::little-integer-size(16),chan3_raw_f::little-integer-size(16),chan4_raw_f::little-integer-size(16),chan5_raw_f::little-integer-size(16),chan6_raw_f::little-integer-size(16),chan7_raw_f::little-integer-size(16),chan8_raw_f::little-integer-size(16),port_f::integer-size(8),rssi_f::integer-size(8)>>), do: {:ok, %APM.Message.RcChannelsRaw{time_boot_ms: time_boot_ms_f, chan1_raw: chan1_raw_f, chan2_raw: chan2_raw_f, chan3_raw: chan3_raw_f, chan4_raw: chan4_raw_f, chan5_raw: chan5_raw_f, chan6_raw: chan6_raw_f, chan7_raw: chan7_raw_f, chan8_raw: chan8_raw_f, port: port_f, rssi: rssi_f}}
  def unpack(36, 1, <<time_usec_f::little-integer-size(32),servo1_raw_f::little-integer-size(16),servo2_raw_f::little-integer-size(16),servo3_raw_f::little-integer-size(16),servo4_raw_f::little-integer-size(16),servo5_raw_f::little-integer-size(16),servo6_raw_f::little-integer-size(16),servo7_raw_f::little-integer-size(16),servo8_raw_f::little-integer-size(16),port_f::integer-size(8)>>), do: {:ok, %APM.Message.ServoOutputRaw{time_usec: time_usec_f, servo1_raw: servo1_raw_f, servo2_raw: servo2_raw_f, servo3_raw: servo3_raw_f, servo4_raw: servo4_raw_f, servo5_raw: servo5_raw_f, servo6_raw: servo6_raw_f, servo7_raw: servo7_raw_f, servo8_raw: servo8_raw_f, port: port_f}}
  def unpack(36, 2, <<time_usec_f::little-integer-size(32),servo1_raw_f::little-integer-size(16),servo2_raw_f::little-integer-size(16),servo3_raw_f::little-integer-size(16),servo4_raw_f::little-integer-size(16),servo5_raw_f::little-integer-size(16),servo6_raw_f::little-integer-size(16),servo7_raw_f::little-integer-size(16),servo8_raw_f::little-integer-size(16),port_f::integer-size(8),servo9_raw_f::little-integer-size(16),servo10_raw_f::little-integer-size(16),servo11_raw_f::little-integer-size(16),servo12_raw_f::little-integer-size(16),servo13_raw_f::little-integer-size(16),servo14_raw_f::little-integer-size(16),servo15_raw_f::little-integer-size(16),servo16_raw_f::little-integer-size(16)>>), do: {:ok, %APM.Message.ServoOutputRaw{time_usec: time_usec_f, servo1_raw: servo1_raw_f, servo2_raw: servo2_raw_f, servo3_raw: servo3_raw_f, servo4_raw: servo4_raw_f, servo5_raw: servo5_raw_f, servo6_raw: servo6_raw_f, servo7_raw: servo7_raw_f, servo8_raw: servo8_raw_f, port: port_f,servo9_raw: servo9_raw_f, servo10_raw: servo10_raw_f, servo11_raw: servo11_raw_f, servo12_raw: servo12_raw_f, servo13_raw: servo13_raw_f, servo14_raw: servo14_raw_f, servo15_raw: servo15_raw_f, servo16_raw: servo16_raw_f}}
  def unpack(37, 1, <<start_index_f::little-signed-integer-size(16),end_index_f::little-signed-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionRequestPartialList{start_index: start_index_f, end_index: end_index_f, target_system: target_system_f, target_component: target_component_f}}
  def unpack(37, 2, <<start_index_f::little-signed-integer-size(16),end_index_f::little-signed-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),mission_type_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionRequestPartialList{start_index: start_index_f, end_index: end_index_f, target_system: target_system_f, target_component: target_component_f,mission_type: decode(mission_type_f, :mav_mission_type)}}
  def unpack(38, 1, <<start_index_f::little-signed-integer-size(16),end_index_f::little-signed-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionWritePartialList{start_index: start_index_f, end_index: end_index_f, target_system: target_system_f, target_component: target_component_f}}
  def unpack(38, 2, <<start_index_f::little-signed-integer-size(16),end_index_f::little-signed-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),mission_type_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionWritePartialList{start_index: start_index_f, end_index: end_index_f, target_system: target_system_f, target_component: target_component_f,mission_type: decode(mission_type_f, :mav_mission_type)}}
  def unpack(39, 1, <<param1_f::binary-size(4),param2_f::binary-size(4),param3_f::binary-size(4),param4_f::binary-size(4),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),seq_f::little-integer-size(16),command_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),frame_f::integer-size(8),current_f::integer-size(8),autocontinue_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionItem{param1: unpack_float(param1_f), param2: unpack_float(param2_f), param3: unpack_float(param3_f), param4: unpack_float(param4_f), x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), seq: seq_f, command: decode(command_f, :mav_cmd), target_system: target_system_f, target_component: target_component_f, frame: decode(frame_f, :mav_frame), current: current_f, autocontinue: autocontinue_f}}
  def unpack(39, 2, <<param1_f::binary-size(4),param2_f::binary-size(4),param3_f::binary-size(4),param4_f::binary-size(4),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),seq_f::little-integer-size(16),command_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),frame_f::integer-size(8),current_f::integer-size(8),autocontinue_f::integer-size(8),mission_type_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionItem{param1: unpack_float(param1_f), param2: unpack_float(param2_f), param3: unpack_float(param3_f), param4: unpack_float(param4_f), x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), seq: seq_f, command: decode(command_f, :mav_cmd), target_system: target_system_f, target_component: target_component_f, frame: decode(frame_f, :mav_frame), current: current_f, autocontinue: autocontinue_f,mission_type: decode(mission_type_f, :mav_mission_type)}}
  def unpack(40, 1, <<seq_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionRequest{seq: seq_f, target_system: target_system_f, target_component: target_component_f}}
  def unpack(40, 2, <<seq_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),mission_type_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionRequest{seq: seq_f, target_system: target_system_f, target_component: target_component_f,mission_type: decode(mission_type_f, :mav_mission_type)}}
  def unpack(41, _, <<seq_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionSetCurrent{seq: seq_f, target_system: target_system_f, target_component: target_component_f}}
  def unpack(42, _, <<seq_f::little-integer-size(16)>>), do: {:ok, %APM.Message.MissionCurrent{seq: seq_f}}
  def unpack(43, 1, <<target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionRequestList{target_system: target_system_f, target_component: target_component_f}}
  def unpack(43, 2, <<target_system_f::integer-size(8),target_component_f::integer-size(8),mission_type_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionRequestList{target_system: target_system_f, target_component: target_component_f,mission_type: decode(mission_type_f, :mav_mission_type)}}
  def unpack(44, 1, <<count_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionCount{count: count_f, target_system: target_system_f, target_component: target_component_f}}
  def unpack(44, 2, <<count_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),mission_type_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionCount{count: count_f, target_system: target_system_f, target_component: target_component_f,mission_type: decode(mission_type_f, :mav_mission_type)}}
  def unpack(45, 1, <<target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionClearAll{target_system: target_system_f, target_component: target_component_f}}
  def unpack(45, 2, <<target_system_f::integer-size(8),target_component_f::integer-size(8),mission_type_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionClearAll{target_system: target_system_f, target_component: target_component_f,mission_type: decode(mission_type_f, :mav_mission_type)}}
  def unpack(46, _, <<seq_f::little-integer-size(16)>>), do: {:ok, %APM.Message.MissionItemReached{seq: seq_f}}
  def unpack(47, 1, <<target_system_f::integer-size(8),target_component_f::integer-size(8),type_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionAck{target_system: target_system_f, target_component: target_component_f, type: decode(type_f, :mav_mission_result)}}
  def unpack(47, 2, <<target_system_f::integer-size(8),target_component_f::integer-size(8),type_f::integer-size(8),mission_type_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionAck{target_system: target_system_f, target_component: target_component_f, type: decode(type_f, :mav_mission_result),mission_type: decode(mission_type_f, :mav_mission_type)}}
  def unpack(48, 1, <<latitude_f::little-signed-integer-size(32),longitude_f::little-signed-integer-size(32),altitude_f::little-signed-integer-size(32),target_system_f::integer-size(8)>>), do: {:ok, %APM.Message.SetGpsGlobalOrigin{latitude: latitude_f, longitude: longitude_f, altitude: altitude_f, target_system: target_system_f}}
  def unpack(48, 2, <<latitude_f::little-signed-integer-size(32),longitude_f::little-signed-integer-size(32),altitude_f::little-signed-integer-size(32),target_system_f::integer-size(8),time_usec_f::little-integer-size(64)>>), do: {:ok, %APM.Message.SetGpsGlobalOrigin{latitude: latitude_f, longitude: longitude_f, altitude: altitude_f, target_system: target_system_f,time_usec: time_usec_f}}
  def unpack(49, 1, <<latitude_f::little-signed-integer-size(32),longitude_f::little-signed-integer-size(32),altitude_f::little-signed-integer-size(32)>>), do: {:ok, %APM.Message.GpsGlobalOrigin{latitude: latitude_f, longitude: longitude_f, altitude: altitude_f}}
  def unpack(49, 2, <<latitude_f::little-signed-integer-size(32),longitude_f::little-signed-integer-size(32),altitude_f::little-signed-integer-size(32),time_usec_f::little-integer-size(64)>>), do: {:ok, %APM.Message.GpsGlobalOrigin{latitude: latitude_f, longitude: longitude_f, altitude: altitude_f,time_usec: time_usec_f}}
  def unpack(50, _, <<param_value0_f::binary-size(4),scale_f::binary-size(4),param_value_min_f::binary-size(4),param_value_max_f::binary-size(4),param_index_f::little-signed-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),param_id_f::binary-size(16),parameter_rc_channel_index_f::integer-size(8)>>), do: {:ok, %APM.Message.ParamMapRc{param_value0: unpack_float(param_value0_f), scale: unpack_float(scale_f), param_value_min: unpack_float(param_value_min_f), param_value_max: unpack_float(param_value_max_f), param_index: param_index_f, target_system: target_system_f, target_component: target_component_f, param_id: replace_trailing(param_id_f, <<0>>, ""), parameter_rc_channel_index: parameter_rc_channel_index_f}}
  def unpack(51, 1, <<seq_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionRequestInt{seq: seq_f, target_system: target_system_f, target_component: target_component_f}}
  def unpack(51, 2, <<seq_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),mission_type_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionRequestInt{seq: seq_f, target_system: target_system_f, target_component: target_component_f,mission_type: decode(mission_type_f, :mav_mission_type)}}
  def unpack(54, _, <<p1x_f::binary-size(4),p1y_f::binary-size(4),p1z_f::binary-size(4),p2x_f::binary-size(4),p2y_f::binary-size(4),p2z_f::binary-size(4),target_system_f::integer-size(8),target_component_f::integer-size(8),frame_f::integer-size(8)>>), do: {:ok, %APM.Message.SafetySetAllowedArea{p1x: unpack_float(p1x_f), p1y: unpack_float(p1y_f), p1z: unpack_float(p1z_f), p2x: unpack_float(p2x_f), p2y: unpack_float(p2y_f), p2z: unpack_float(p2z_f), target_system: target_system_f, target_component: target_component_f, frame: decode(frame_f, :mav_frame)}}
  def unpack(55, _, <<p1x_f::binary-size(4),p1y_f::binary-size(4),p1z_f::binary-size(4),p2x_f::binary-size(4),p2y_f::binary-size(4),p2z_f::binary-size(4),frame_f::integer-size(8)>>), do: {:ok, %APM.Message.SafetyAllowedArea{p1x: unpack_float(p1x_f), p1y: unpack_float(p1y_f), p1z: unpack_float(p1z_f), p2x: unpack_float(p2x_f), p2y: unpack_float(p2y_f), p2z: unpack_float(p2z_f), frame: decode(frame_f, :mav_frame)}}
  def unpack(61, _, <<time_usec_f::little-integer-size(64),q_f::binary-size(16),rollspeed_f::binary-size(4),pitchspeed_f::binary-size(4),yawspeed_f::binary-size(4),covariance_f::binary-size(36)>>), do: {:ok, %APM.Message.AttitudeQuaternionCov{time_usec: time_usec_f, q: unpack_array(q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), rollspeed: unpack_float(rollspeed_f), pitchspeed: unpack_float(pitchspeed_f), yawspeed: unpack_float(yawspeed_f), covariance: unpack_array(covariance_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(62, _, <<nav_roll_f::binary-size(4),nav_pitch_f::binary-size(4),alt_error_f::binary-size(4),aspd_error_f::binary-size(4),xtrack_error_f::binary-size(4),nav_bearing_f::little-signed-integer-size(16),target_bearing_f::little-signed-integer-size(16),wp_dist_f::little-integer-size(16)>>), do: {:ok, %APM.Message.NavControllerOutput{nav_roll: unpack_float(nav_roll_f), nav_pitch: unpack_float(nav_pitch_f), alt_error: unpack_float(alt_error_f), aspd_error: unpack_float(aspd_error_f), xtrack_error: unpack_float(xtrack_error_f), nav_bearing: nav_bearing_f, target_bearing: target_bearing_f, wp_dist: wp_dist_f}}
  def unpack(63, _, <<time_usec_f::little-integer-size(64),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),alt_f::little-signed-integer-size(32),relative_alt_f::little-signed-integer-size(32),vx_f::binary-size(4),vy_f::binary-size(4),vz_f::binary-size(4),covariance_f::binary-size(144),estimator_type_f::integer-size(8)>>), do: {:ok, %APM.Message.GlobalPositionIntCov{time_usec: time_usec_f, lat: lat_f, lon: lon_f, alt: alt_f, relative_alt: relative_alt_f, vx: unpack_float(vx_f), vy: unpack_float(vy_f), vz: unpack_float(vz_f), covariance: unpack_array(covariance_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), estimator_type: decode(estimator_type_f, :mav_estimator_type)}}
  def unpack(64, _, <<time_usec_f::little-integer-size(64),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),vx_f::binary-size(4),vy_f::binary-size(4),vz_f::binary-size(4),ax_f::binary-size(4),ay_f::binary-size(4),az_f::binary-size(4),covariance_f::binary-size(180),estimator_type_f::integer-size(8)>>), do: {:ok, %APM.Message.LocalPositionNedCov{time_usec: time_usec_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), vx: unpack_float(vx_f), vy: unpack_float(vy_f), vz: unpack_float(vz_f), ax: unpack_float(ax_f), ay: unpack_float(ay_f), az: unpack_float(az_f), covariance: unpack_array(covariance_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), estimator_type: decode(estimator_type_f, :mav_estimator_type)}}
  def unpack(65, _, <<time_boot_ms_f::little-integer-size(32),chan1_raw_f::little-integer-size(16),chan2_raw_f::little-integer-size(16),chan3_raw_f::little-integer-size(16),chan4_raw_f::little-integer-size(16),chan5_raw_f::little-integer-size(16),chan6_raw_f::little-integer-size(16),chan7_raw_f::little-integer-size(16),chan8_raw_f::little-integer-size(16),chan9_raw_f::little-integer-size(16),chan10_raw_f::little-integer-size(16),chan11_raw_f::little-integer-size(16),chan12_raw_f::little-integer-size(16),chan13_raw_f::little-integer-size(16),chan14_raw_f::little-integer-size(16),chan15_raw_f::little-integer-size(16),chan16_raw_f::little-integer-size(16),chan17_raw_f::little-integer-size(16),chan18_raw_f::little-integer-size(16),chancount_f::integer-size(8),rssi_f::integer-size(8)>>), do: {:ok, %APM.Message.RcChannels{time_boot_ms: time_boot_ms_f, chan1_raw: chan1_raw_f, chan2_raw: chan2_raw_f, chan3_raw: chan3_raw_f, chan4_raw: chan4_raw_f, chan5_raw: chan5_raw_f, chan6_raw: chan6_raw_f, chan7_raw: chan7_raw_f, chan8_raw: chan8_raw_f, chan9_raw: chan9_raw_f, chan10_raw: chan10_raw_f, chan11_raw: chan11_raw_f, chan12_raw: chan12_raw_f, chan13_raw: chan13_raw_f, chan14_raw: chan14_raw_f, chan15_raw: chan15_raw_f, chan16_raw: chan16_raw_f, chan17_raw: chan17_raw_f, chan18_raw: chan18_raw_f, chancount: chancount_f, rssi: rssi_f}}
  def unpack(66, _, <<req_message_rate_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),req_stream_id_f::integer-size(8),start_stop_f::integer-size(8)>>), do: {:ok, %APM.Message.RequestDataStream{req_message_rate: req_message_rate_f, target_system: target_system_f, target_component: target_component_f, req_stream_id: req_stream_id_f, start_stop: start_stop_f}}
  def unpack(67, _, <<message_rate_f::little-integer-size(16),stream_id_f::integer-size(8),on_off_f::integer-size(8)>>), do: {:ok, %APM.Message.DataStream{message_rate: message_rate_f, stream_id: stream_id_f, on_off: on_off_f}}
  def unpack(69, _, <<x_f::little-signed-integer-size(16),y_f::little-signed-integer-size(16),z_f::little-signed-integer-size(16),r_f::little-signed-integer-size(16),buttons_f::little-integer-size(16),target_f::integer-size(8)>>), do: {:ok, %APM.Message.ManualControl{x: x_f, y: y_f, z: z_f, r: r_f, buttons: buttons_f, target: target_f}}
  def unpack(70, 1, <<chan1_raw_f::little-integer-size(16),chan2_raw_f::little-integer-size(16),chan3_raw_f::little-integer-size(16),chan4_raw_f::little-integer-size(16),chan5_raw_f::little-integer-size(16),chan6_raw_f::little-integer-size(16),chan7_raw_f::little-integer-size(16),chan8_raw_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.RcChannelsOverride{chan1_raw: chan1_raw_f, chan2_raw: chan2_raw_f, chan3_raw: chan3_raw_f, chan4_raw: chan4_raw_f, chan5_raw: chan5_raw_f, chan6_raw: chan6_raw_f, chan7_raw: chan7_raw_f, chan8_raw: chan8_raw_f, target_system: target_system_f, target_component: target_component_f}}
  def unpack(70, 2, <<chan1_raw_f::little-integer-size(16),chan2_raw_f::little-integer-size(16),chan3_raw_f::little-integer-size(16),chan4_raw_f::little-integer-size(16),chan5_raw_f::little-integer-size(16),chan6_raw_f::little-integer-size(16),chan7_raw_f::little-integer-size(16),chan8_raw_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),chan9_raw_f::little-integer-size(16),chan10_raw_f::little-integer-size(16),chan11_raw_f::little-integer-size(16),chan12_raw_f::little-integer-size(16),chan13_raw_f::little-integer-size(16),chan14_raw_f::little-integer-size(16),chan15_raw_f::little-integer-size(16),chan16_raw_f::little-integer-size(16),chan17_raw_f::little-integer-size(16),chan18_raw_f::little-integer-size(16)>>), do: {:ok, %APM.Message.RcChannelsOverride{chan1_raw: chan1_raw_f, chan2_raw: chan2_raw_f, chan3_raw: chan3_raw_f, chan4_raw: chan4_raw_f, chan5_raw: chan5_raw_f, chan6_raw: chan6_raw_f, chan7_raw: chan7_raw_f, chan8_raw: chan8_raw_f, target_system: target_system_f, target_component: target_component_f,chan9_raw: chan9_raw_f, chan10_raw: chan10_raw_f, chan11_raw: chan11_raw_f, chan12_raw: chan12_raw_f, chan13_raw: chan13_raw_f, chan14_raw: chan14_raw_f, chan15_raw: chan15_raw_f, chan16_raw: chan16_raw_f, chan17_raw: chan17_raw_f, chan18_raw: chan18_raw_f}}
  def unpack(73, 1, <<param1_f::binary-size(4),param2_f::binary-size(4),param3_f::binary-size(4),param4_f::binary-size(4),x_f::little-signed-integer-size(32),y_f::little-signed-integer-size(32),z_f::binary-size(4),seq_f::little-integer-size(16),command_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),frame_f::integer-size(8),current_f::integer-size(8),autocontinue_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionItemInt{param1: unpack_float(param1_f), param2: unpack_float(param2_f), param3: unpack_float(param3_f), param4: unpack_float(param4_f), x: x_f, y: y_f, z: unpack_float(z_f), seq: seq_f, command: decode(command_f, :mav_cmd), target_system: target_system_f, target_component: target_component_f, frame: decode(frame_f, :mav_frame), current: current_f, autocontinue: autocontinue_f}}
  def unpack(73, 2, <<param1_f::binary-size(4),param2_f::binary-size(4),param3_f::binary-size(4),param4_f::binary-size(4),x_f::little-signed-integer-size(32),y_f::little-signed-integer-size(32),z_f::binary-size(4),seq_f::little-integer-size(16),command_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),frame_f::integer-size(8),current_f::integer-size(8),autocontinue_f::integer-size(8),mission_type_f::integer-size(8)>>), do: {:ok, %APM.Message.MissionItemInt{param1: unpack_float(param1_f), param2: unpack_float(param2_f), param3: unpack_float(param3_f), param4: unpack_float(param4_f), x: x_f, y: y_f, z: unpack_float(z_f), seq: seq_f, command: decode(command_f, :mav_cmd), target_system: target_system_f, target_component: target_component_f, frame: decode(frame_f, :mav_frame), current: current_f, autocontinue: autocontinue_f,mission_type: decode(mission_type_f, :mav_mission_type)}}
  def unpack(74, _, <<airspeed_f::binary-size(4),groundspeed_f::binary-size(4),alt_f::binary-size(4),climb_f::binary-size(4),heading_f::little-signed-integer-size(16),throttle_f::little-integer-size(16)>>), do: {:ok, %APM.Message.VfrHud{airspeed: unpack_float(airspeed_f), groundspeed: unpack_float(groundspeed_f), alt: unpack_float(alt_f), climb: unpack_float(climb_f), heading: heading_f, throttle: throttle_f}}
  def unpack(75, _, <<param1_f::binary-size(4),param2_f::binary-size(4),param3_f::binary-size(4),param4_f::binary-size(4),x_f::little-signed-integer-size(32),y_f::little-signed-integer-size(32),z_f::binary-size(4),command_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),frame_f::integer-size(8),current_f::integer-size(8),autocontinue_f::integer-size(8)>>), do: {:ok, %APM.Message.CommandInt{param1: unpack_float(param1_f), param2: unpack_float(param2_f), param3: unpack_float(param3_f), param4: unpack_float(param4_f), x: x_f, y: y_f, z: unpack_float(z_f), command: decode(command_f, :mav_cmd), target_system: target_system_f, target_component: target_component_f, frame: decode(frame_f, :mav_frame), current: current_f, autocontinue: autocontinue_f}}
  def unpack(76, _, <<param1_f::binary-size(4),param2_f::binary-size(4),param3_f::binary-size(4),param4_f::binary-size(4),param5_f::binary-size(4),param6_f::binary-size(4),param7_f::binary-size(4),command_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),confirmation_f::integer-size(8)>>), do: {:ok, %APM.Message.CommandLong{param1: unpack_float(param1_f), param2: unpack_float(param2_f), param3: unpack_float(param3_f), param4: unpack_float(param4_f), param5: unpack_float(param5_f), param6: unpack_float(param6_f), param7: unpack_float(param7_f), command: decode(command_f, :mav_cmd), target_system: target_system_f, target_component: target_component_f, confirmation: confirmation_f}}
  def unpack(77, _, <<command_f::little-integer-size(16),result_f::integer-size(8)>>), do: {:ok, %APM.Message.CommandAck{command: decode(command_f, :mav_cmd), result: decode(result_f, :mav_result)}}
  def unpack(81, _, <<time_boot_ms_f::little-integer-size(32),roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4),thrust_f::binary-size(4),mode_switch_f::integer-size(8),manual_override_switch_f::integer-size(8)>>), do: {:ok, %APM.Message.ManualSetpoint{time_boot_ms: time_boot_ms_f, roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f), thrust: unpack_float(thrust_f), mode_switch: mode_switch_f, manual_override_switch: manual_override_switch_f}}
  def unpack(82, _, <<time_boot_ms_f::little-integer-size(32),q_f::binary-size(16),body_roll_rate_f::binary-size(4),body_pitch_rate_f::binary-size(4),body_yaw_rate_f::binary-size(4),thrust_f::binary-size(4),target_system_f::integer-size(8),target_component_f::integer-size(8),type_mask_f::integer-size(8)>>), do: {:ok, %APM.Message.SetAttitudeTarget{time_boot_ms: time_boot_ms_f, q: unpack_array(q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), body_roll_rate: unpack_float(body_roll_rate_f), body_pitch_rate: unpack_float(body_pitch_rate_f), body_yaw_rate: unpack_float(body_yaw_rate_f), thrust: unpack_float(thrust_f), target_system: target_system_f, target_component: target_component_f, type_mask: unpack_bitmask(type_mask_f, :attitude_target_typemask, &decode/2)}}
  def unpack(83, _, <<time_boot_ms_f::little-integer-size(32),q_f::binary-size(16),body_roll_rate_f::binary-size(4),body_pitch_rate_f::binary-size(4),body_yaw_rate_f::binary-size(4),thrust_f::binary-size(4),type_mask_f::integer-size(8)>>), do: {:ok, %APM.Message.AttitudeTarget{time_boot_ms: time_boot_ms_f, q: unpack_array(q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), body_roll_rate: unpack_float(body_roll_rate_f), body_pitch_rate: unpack_float(body_pitch_rate_f), body_yaw_rate: unpack_float(body_yaw_rate_f), thrust: unpack_float(thrust_f), type_mask: unpack_bitmask(type_mask_f, :attitude_target_typemask, &decode/2)}}
  def unpack(84, _, <<time_boot_ms_f::little-integer-size(32),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),vx_f::binary-size(4),vy_f::binary-size(4),vz_f::binary-size(4),afx_f::binary-size(4),afy_f::binary-size(4),afz_f::binary-size(4),yaw_f::binary-size(4),yaw_rate_f::binary-size(4),type_mask_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),coordinate_frame_f::integer-size(8)>>), do: {:ok, %APM.Message.SetPositionTargetLocalNed{time_boot_ms: time_boot_ms_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), vx: unpack_float(vx_f), vy: unpack_float(vy_f), vz: unpack_float(vz_f), afx: unpack_float(afx_f), afy: unpack_float(afy_f), afz: unpack_float(afz_f), yaw: unpack_float(yaw_f), yaw_rate: unpack_float(yaw_rate_f), type_mask: unpack_bitmask(type_mask_f, :position_target_typemask, &decode/2), target_system: target_system_f, target_component: target_component_f, coordinate_frame: decode(coordinate_frame_f, :mav_frame)}}
  def unpack(85, _, <<time_boot_ms_f::little-integer-size(32),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),vx_f::binary-size(4),vy_f::binary-size(4),vz_f::binary-size(4),afx_f::binary-size(4),afy_f::binary-size(4),afz_f::binary-size(4),yaw_f::binary-size(4),yaw_rate_f::binary-size(4),type_mask_f::little-integer-size(16),coordinate_frame_f::integer-size(8)>>), do: {:ok, %APM.Message.PositionTargetLocalNed{time_boot_ms: time_boot_ms_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), vx: unpack_float(vx_f), vy: unpack_float(vy_f), vz: unpack_float(vz_f), afx: unpack_float(afx_f), afy: unpack_float(afy_f), afz: unpack_float(afz_f), yaw: unpack_float(yaw_f), yaw_rate: unpack_float(yaw_rate_f), type_mask: unpack_bitmask(type_mask_f, :position_target_typemask, &decode/2), coordinate_frame: decode(coordinate_frame_f, :mav_frame)}}
  def unpack(86, _, <<time_boot_ms_f::little-integer-size(32),lat_int_f::little-signed-integer-size(32),lon_int_f::little-signed-integer-size(32),alt_f::binary-size(4),vx_f::binary-size(4),vy_f::binary-size(4),vz_f::binary-size(4),afx_f::binary-size(4),afy_f::binary-size(4),afz_f::binary-size(4),yaw_f::binary-size(4),yaw_rate_f::binary-size(4),type_mask_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),coordinate_frame_f::integer-size(8)>>), do: {:ok, %APM.Message.SetPositionTargetGlobalInt{time_boot_ms: time_boot_ms_f, lat_int: lat_int_f, lon_int: lon_int_f, alt: unpack_float(alt_f), vx: unpack_float(vx_f), vy: unpack_float(vy_f), vz: unpack_float(vz_f), afx: unpack_float(afx_f), afy: unpack_float(afy_f), afz: unpack_float(afz_f), yaw: unpack_float(yaw_f), yaw_rate: unpack_float(yaw_rate_f), type_mask: unpack_bitmask(type_mask_f, :position_target_typemask, &decode/2), target_system: target_system_f, target_component: target_component_f, coordinate_frame: decode(coordinate_frame_f, :mav_frame)}}
  def unpack(87, _, <<time_boot_ms_f::little-integer-size(32),lat_int_f::little-signed-integer-size(32),lon_int_f::little-signed-integer-size(32),alt_f::binary-size(4),vx_f::binary-size(4),vy_f::binary-size(4),vz_f::binary-size(4),afx_f::binary-size(4),afy_f::binary-size(4),afz_f::binary-size(4),yaw_f::binary-size(4),yaw_rate_f::binary-size(4),type_mask_f::little-integer-size(16),coordinate_frame_f::integer-size(8)>>), do: {:ok, %APM.Message.PositionTargetGlobalInt{time_boot_ms: time_boot_ms_f, lat_int: lat_int_f, lon_int: lon_int_f, alt: unpack_float(alt_f), vx: unpack_float(vx_f), vy: unpack_float(vy_f), vz: unpack_float(vz_f), afx: unpack_float(afx_f), afy: unpack_float(afy_f), afz: unpack_float(afz_f), yaw: unpack_float(yaw_f), yaw_rate: unpack_float(yaw_rate_f), type_mask: unpack_bitmask(type_mask_f, :position_target_typemask, &decode/2), coordinate_frame: decode(coordinate_frame_f, :mav_frame)}}
  def unpack(89, _, <<time_boot_ms_f::little-integer-size(32),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4)>>), do: {:ok, %APM.Message.LocalPositionNedSystemGlobalOffset{time_boot_ms: time_boot_ms_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f)}}
  def unpack(90, _, <<time_usec_f::little-integer-size(64),roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4),rollspeed_f::binary-size(4),pitchspeed_f::binary-size(4),yawspeed_f::binary-size(4),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),alt_f::little-signed-integer-size(32),vx_f::little-signed-integer-size(16),vy_f::little-signed-integer-size(16),vz_f::little-signed-integer-size(16),xacc_f::little-signed-integer-size(16),yacc_f::little-signed-integer-size(16),zacc_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.HilState{time_usec: time_usec_f, roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f), rollspeed: unpack_float(rollspeed_f), pitchspeed: unpack_float(pitchspeed_f), yawspeed: unpack_float(yawspeed_f), lat: lat_f, lon: lon_f, alt: alt_f, vx: vx_f, vy: vy_f, vz: vz_f, xacc: xacc_f, yacc: yacc_f, zacc: zacc_f}}
  def unpack(91, _, <<time_usec_f::little-integer-size(64),roll_ailerons_f::binary-size(4),pitch_elevator_f::binary-size(4),yaw_rudder_f::binary-size(4),throttle_f::binary-size(4),aux1_f::binary-size(4),aux2_f::binary-size(4),aux3_f::binary-size(4),aux4_f::binary-size(4),mode_f::integer-size(8),nav_mode_f::integer-size(8)>>), do: {:ok, %APM.Message.HilControls{time_usec: time_usec_f, roll_ailerons: unpack_float(roll_ailerons_f), pitch_elevator: unpack_float(pitch_elevator_f), yaw_rudder: unpack_float(yaw_rudder_f), throttle: unpack_float(throttle_f), aux1: unpack_float(aux1_f), aux2: unpack_float(aux2_f), aux3: unpack_float(aux3_f), aux4: unpack_float(aux4_f), mode: decode(mode_f, :mav_mode), nav_mode: nav_mode_f}}
  def unpack(92, _, <<time_usec_f::little-integer-size(64),chan1_raw_f::little-integer-size(16),chan2_raw_f::little-integer-size(16),chan3_raw_f::little-integer-size(16),chan4_raw_f::little-integer-size(16),chan5_raw_f::little-integer-size(16),chan6_raw_f::little-integer-size(16),chan7_raw_f::little-integer-size(16),chan8_raw_f::little-integer-size(16),chan9_raw_f::little-integer-size(16),chan10_raw_f::little-integer-size(16),chan11_raw_f::little-integer-size(16),chan12_raw_f::little-integer-size(16),rssi_f::integer-size(8)>>), do: {:ok, %APM.Message.HilRcInputsRaw{time_usec: time_usec_f, chan1_raw: chan1_raw_f, chan2_raw: chan2_raw_f, chan3_raw: chan3_raw_f, chan4_raw: chan4_raw_f, chan5_raw: chan5_raw_f, chan6_raw: chan6_raw_f, chan7_raw: chan7_raw_f, chan8_raw: chan8_raw_f, chan9_raw: chan9_raw_f, chan10_raw: chan10_raw_f, chan11_raw: chan11_raw_f, chan12_raw: chan12_raw_f, rssi: rssi_f}}
  def unpack(93, _, <<time_usec_f::little-integer-size(64),flags_f::little-integer-size(64),controls_f::binary-size(64),mode_f::integer-size(8)>>), do: {:ok, %APM.Message.HilActuatorControls{time_usec: time_usec_f, flags: flags_f, controls: unpack_array(controls_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), mode: unpack_bitmask(mode_f, :mav_mode_flag, &decode/2)}}
  def unpack(100, 1, <<time_usec_f::little-integer-size(64),flow_comp_m_x_f::binary-size(4),flow_comp_m_y_f::binary-size(4),ground_distance_f::binary-size(4),flow_x_f::little-signed-integer-size(16),flow_y_f::little-signed-integer-size(16),sensor_id_f::integer-size(8),quality_f::integer-size(8)>>), do: {:ok, %APM.Message.OpticalFlow{time_usec: time_usec_f, flow_comp_m_x: unpack_float(flow_comp_m_x_f), flow_comp_m_y: unpack_float(flow_comp_m_y_f), ground_distance: unpack_float(ground_distance_f), flow_x: flow_x_f, flow_y: flow_y_f, sensor_id: sensor_id_f, quality: quality_f}}
  def unpack(100, 2, <<time_usec_f::little-integer-size(64),flow_comp_m_x_f::binary-size(4),flow_comp_m_y_f::binary-size(4),ground_distance_f::binary-size(4),flow_x_f::little-signed-integer-size(16),flow_y_f::little-signed-integer-size(16),sensor_id_f::integer-size(8),quality_f::integer-size(8),flow_rate_x_f::binary-size(4),flow_rate_y_f::binary-size(4)>>), do: {:ok, %APM.Message.OpticalFlow{time_usec: time_usec_f, flow_comp_m_x: unpack_float(flow_comp_m_x_f), flow_comp_m_y: unpack_float(flow_comp_m_y_f), ground_distance: unpack_float(ground_distance_f), flow_x: flow_x_f, flow_y: flow_y_f, sensor_id: sensor_id_f, quality: quality_f,flow_rate_x: unpack_float(flow_rate_x_f), flow_rate_y: unpack_float(flow_rate_y_f)}}
  def unpack(101, 1, <<usec_f::little-integer-size(64),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4)>>), do: {:ok, %APM.Message.GlobalVisionPositionEstimate{usec: usec_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f)}}
  def unpack(101, 2, <<usec_f::little-integer-size(64),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4),covariance_f::binary-size(84),reset_counter_f::integer-size(8)>>), do: {:ok, %APM.Message.GlobalVisionPositionEstimate{usec: usec_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f),covariance: unpack_array(covariance_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), reset_counter: reset_counter_f}}
  def unpack(102, 1, <<usec_f::little-integer-size(64),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4)>>), do: {:ok, %APM.Message.VisionPositionEstimate{usec: usec_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f)}}
  def unpack(102, 2, <<usec_f::little-integer-size(64),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4),covariance_f::binary-size(84),reset_counter_f::integer-size(8)>>), do: {:ok, %APM.Message.VisionPositionEstimate{usec: usec_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f),covariance: unpack_array(covariance_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), reset_counter: reset_counter_f}}
  def unpack(103, 1, <<usec_f::little-integer-size(64),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4)>>), do: {:ok, %APM.Message.VisionSpeedEstimate{usec: usec_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f)}}
  def unpack(103, 2, <<usec_f::little-integer-size(64),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),covariance_f::binary-size(36),reset_counter_f::integer-size(8)>>), do: {:ok, %APM.Message.VisionSpeedEstimate{usec: usec_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f),covariance: unpack_array(covariance_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), reset_counter: reset_counter_f}}
  def unpack(104, 1, <<usec_f::little-integer-size(64),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4)>>), do: {:ok, %APM.Message.ViconPositionEstimate{usec: usec_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f)}}
  def unpack(104, 2, <<usec_f::little-integer-size(64),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4),covariance_f::binary-size(84)>>), do: {:ok, %APM.Message.ViconPositionEstimate{usec: usec_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f),covariance: unpack_array(covariance_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(105, 1, <<time_usec_f::little-integer-size(64),xacc_f::binary-size(4),yacc_f::binary-size(4),zacc_f::binary-size(4),xgyro_f::binary-size(4),ygyro_f::binary-size(4),zgyro_f::binary-size(4),xmag_f::binary-size(4),ymag_f::binary-size(4),zmag_f::binary-size(4),abs_pressure_f::binary-size(4),diff_pressure_f::binary-size(4),pressure_alt_f::binary-size(4),temperature_f::binary-size(4),fields_updated_f::little-integer-size(16)>>), do: {:ok, %APM.Message.HighresImu{time_usec: time_usec_f, xacc: unpack_float(xacc_f), yacc: unpack_float(yacc_f), zacc: unpack_float(zacc_f), xgyro: unpack_float(xgyro_f), ygyro: unpack_float(ygyro_f), zgyro: unpack_float(zgyro_f), xmag: unpack_float(xmag_f), ymag: unpack_float(ymag_f), zmag: unpack_float(zmag_f), abs_pressure: unpack_float(abs_pressure_f), diff_pressure: unpack_float(diff_pressure_f), pressure_alt: unpack_float(pressure_alt_f), temperature: unpack_float(temperature_f), fields_updated: fields_updated_f}}
  def unpack(105, 2, <<time_usec_f::little-integer-size(64),xacc_f::binary-size(4),yacc_f::binary-size(4),zacc_f::binary-size(4),xgyro_f::binary-size(4),ygyro_f::binary-size(4),zgyro_f::binary-size(4),xmag_f::binary-size(4),ymag_f::binary-size(4),zmag_f::binary-size(4),abs_pressure_f::binary-size(4),diff_pressure_f::binary-size(4),pressure_alt_f::binary-size(4),temperature_f::binary-size(4),fields_updated_f::little-integer-size(16),id_f::integer-size(8)>>), do: {:ok, %APM.Message.HighresImu{time_usec: time_usec_f, xacc: unpack_float(xacc_f), yacc: unpack_float(yacc_f), zacc: unpack_float(zacc_f), xgyro: unpack_float(xgyro_f), ygyro: unpack_float(ygyro_f), zgyro: unpack_float(zgyro_f), xmag: unpack_float(xmag_f), ymag: unpack_float(ymag_f), zmag: unpack_float(zmag_f), abs_pressure: unpack_float(abs_pressure_f), diff_pressure: unpack_float(diff_pressure_f), pressure_alt: unpack_float(pressure_alt_f), temperature: unpack_float(temperature_f), fields_updated: fields_updated_f,id: id_f}}
  def unpack(106, _, <<time_usec_f::little-integer-size(64),integration_time_us_f::little-integer-size(32),integrated_x_f::binary-size(4),integrated_y_f::binary-size(4),integrated_xgyro_f::binary-size(4),integrated_ygyro_f::binary-size(4),integrated_zgyro_f::binary-size(4),time_delta_distance_us_f::little-integer-size(32),distance_f::binary-size(4),temperature_f::little-signed-integer-size(16),sensor_id_f::integer-size(8),quality_f::integer-size(8)>>), do: {:ok, %APM.Message.OpticalFlowRad{time_usec: time_usec_f, integration_time_us: integration_time_us_f, integrated_x: unpack_float(integrated_x_f), integrated_y: unpack_float(integrated_y_f), integrated_xgyro: unpack_float(integrated_xgyro_f), integrated_ygyro: unpack_float(integrated_ygyro_f), integrated_zgyro: unpack_float(integrated_zgyro_f), time_delta_distance_us: time_delta_distance_us_f, distance: unpack_float(distance_f), temperature: temperature_f, sensor_id: sensor_id_f, quality: quality_f}}
  def unpack(107, 1, <<time_usec_f::little-integer-size(64),xacc_f::binary-size(4),yacc_f::binary-size(4),zacc_f::binary-size(4),xgyro_f::binary-size(4),ygyro_f::binary-size(4),zgyro_f::binary-size(4),xmag_f::binary-size(4),ymag_f::binary-size(4),zmag_f::binary-size(4),abs_pressure_f::binary-size(4),diff_pressure_f::binary-size(4),pressure_alt_f::binary-size(4),temperature_f::binary-size(4),fields_updated_f::little-integer-size(32)>>), do: {:ok, %APM.Message.HilSensor{time_usec: time_usec_f, xacc: unpack_float(xacc_f), yacc: unpack_float(yacc_f), zacc: unpack_float(zacc_f), xgyro: unpack_float(xgyro_f), ygyro: unpack_float(ygyro_f), zgyro: unpack_float(zgyro_f), xmag: unpack_float(xmag_f), ymag: unpack_float(ymag_f), zmag: unpack_float(zmag_f), abs_pressure: unpack_float(abs_pressure_f), diff_pressure: unpack_float(diff_pressure_f), pressure_alt: unpack_float(pressure_alt_f), temperature: unpack_float(temperature_f), fields_updated: fields_updated_f}}
  def unpack(107, 2, <<time_usec_f::little-integer-size(64),xacc_f::binary-size(4),yacc_f::binary-size(4),zacc_f::binary-size(4),xgyro_f::binary-size(4),ygyro_f::binary-size(4),zgyro_f::binary-size(4),xmag_f::binary-size(4),ymag_f::binary-size(4),zmag_f::binary-size(4),abs_pressure_f::binary-size(4),diff_pressure_f::binary-size(4),pressure_alt_f::binary-size(4),temperature_f::binary-size(4),fields_updated_f::little-integer-size(32),id_f::integer-size(8)>>), do: {:ok, %APM.Message.HilSensor{time_usec: time_usec_f, xacc: unpack_float(xacc_f), yacc: unpack_float(yacc_f), zacc: unpack_float(zacc_f), xgyro: unpack_float(xgyro_f), ygyro: unpack_float(ygyro_f), zgyro: unpack_float(zgyro_f), xmag: unpack_float(xmag_f), ymag: unpack_float(ymag_f), zmag: unpack_float(zmag_f), abs_pressure: unpack_float(abs_pressure_f), diff_pressure: unpack_float(diff_pressure_f), pressure_alt: unpack_float(pressure_alt_f), temperature: unpack_float(temperature_f), fields_updated: fields_updated_f,id: id_f}}
  def unpack(108, _, <<q1_f::binary-size(4),q2_f::binary-size(4),q3_f::binary-size(4),q4_f::binary-size(4),roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4),xacc_f::binary-size(4),yacc_f::binary-size(4),zacc_f::binary-size(4),xgyro_f::binary-size(4),ygyro_f::binary-size(4),zgyro_f::binary-size(4),lat_f::binary-size(4),lon_f::binary-size(4),alt_f::binary-size(4),std_dev_horz_f::binary-size(4),std_dev_vert_f::binary-size(4),vn_f::binary-size(4),ve_f::binary-size(4),vd_f::binary-size(4)>>), do: {:ok, %APM.Message.SimState{q1: unpack_float(q1_f), q2: unpack_float(q2_f), q3: unpack_float(q3_f), q4: unpack_float(q4_f), roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f), xacc: unpack_float(xacc_f), yacc: unpack_float(yacc_f), zacc: unpack_float(zacc_f), xgyro: unpack_float(xgyro_f), ygyro: unpack_float(ygyro_f), zgyro: unpack_float(zgyro_f), lat: unpack_float(lat_f), lon: unpack_float(lon_f), alt: unpack_float(alt_f), std_dev_horz: unpack_float(std_dev_horz_f), std_dev_vert: unpack_float(std_dev_vert_f), vn: unpack_float(vn_f), ve: unpack_float(ve_f), vd: unpack_float(vd_f)}}
  def unpack(109, _, <<rxerrors_f::little-integer-size(16),fixed_f::little-integer-size(16),rssi_f::integer-size(8),remrssi_f::integer-size(8),txbuf_f::integer-size(8),noise_f::integer-size(8),remnoise_f::integer-size(8)>>), do: {:ok, %APM.Message.RadioStatus{rxerrors: rxerrors_f, fixed: fixed_f, rssi: rssi_f, remrssi: remrssi_f, txbuf: txbuf_f, noise: noise_f, remnoise: remnoise_f}}
  def unpack(110, _, <<target_network_f::integer-size(8),target_system_f::integer-size(8),target_component_f::integer-size(8),payload_f::binary-size(251)>>), do: {:ok, %APM.Message.FileTransferProtocol{target_network: target_network_f, target_system: target_system_f, target_component: target_component_f, payload: unpack_array(payload_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(111, _, <<tc1_f::little-signed-integer-size(64),ts1_f::little-signed-integer-size(64)>>), do: {:ok, %APM.Message.Timesync{tc1: tc1_f, ts1: ts1_f}}
  def unpack(112, _, <<time_usec_f::little-integer-size(64),seq_f::little-integer-size(32)>>), do: {:ok, %APM.Message.CameraTrigger{time_usec: time_usec_f, seq: seq_f}}
  def unpack(113, 1, <<time_usec_f::little-integer-size(64),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),alt_f::little-signed-integer-size(32),eph_f::little-integer-size(16),epv_f::little-integer-size(16),vel_f::little-integer-size(16),vn_f::little-signed-integer-size(16),ve_f::little-signed-integer-size(16),vd_f::little-signed-integer-size(16),cog_f::little-integer-size(16),fix_type_f::integer-size(8),satellites_visible_f::integer-size(8)>>), do: {:ok, %APM.Message.HilGps{time_usec: time_usec_f, lat: lat_f, lon: lon_f, alt: alt_f, eph: eph_f, epv: epv_f, vel: vel_f, vn: vn_f, ve: ve_f, vd: vd_f, cog: cog_f, fix_type: fix_type_f, satellites_visible: satellites_visible_f}}
  def unpack(113, 2, <<time_usec_f::little-integer-size(64),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),alt_f::little-signed-integer-size(32),eph_f::little-integer-size(16),epv_f::little-integer-size(16),vel_f::little-integer-size(16),vn_f::little-signed-integer-size(16),ve_f::little-signed-integer-size(16),vd_f::little-signed-integer-size(16),cog_f::little-integer-size(16),fix_type_f::integer-size(8),satellites_visible_f::integer-size(8),id_f::integer-size(8),yaw_f::little-integer-size(16)>>), do: {:ok, %APM.Message.HilGps{time_usec: time_usec_f, lat: lat_f, lon: lon_f, alt: alt_f, eph: eph_f, epv: epv_f, vel: vel_f, vn: vn_f, ve: ve_f, vd: vd_f, cog: cog_f, fix_type: fix_type_f, satellites_visible: satellites_visible_f,id: id_f, yaw: yaw_f}}
  def unpack(114, _, <<time_usec_f::little-integer-size(64),integration_time_us_f::little-integer-size(32),integrated_x_f::binary-size(4),integrated_y_f::binary-size(4),integrated_xgyro_f::binary-size(4),integrated_ygyro_f::binary-size(4),integrated_zgyro_f::binary-size(4),time_delta_distance_us_f::little-integer-size(32),distance_f::binary-size(4),temperature_f::little-signed-integer-size(16),sensor_id_f::integer-size(8),quality_f::integer-size(8)>>), do: {:ok, %APM.Message.HilOpticalFlow{time_usec: time_usec_f, integration_time_us: integration_time_us_f, integrated_x: unpack_float(integrated_x_f), integrated_y: unpack_float(integrated_y_f), integrated_xgyro: unpack_float(integrated_xgyro_f), integrated_ygyro: unpack_float(integrated_ygyro_f), integrated_zgyro: unpack_float(integrated_zgyro_f), time_delta_distance_us: time_delta_distance_us_f, distance: unpack_float(distance_f), temperature: temperature_f, sensor_id: sensor_id_f, quality: quality_f}}
  def unpack(115, _, <<time_usec_f::little-integer-size(64),attitude_quaternion_f::binary-size(16),rollspeed_f::binary-size(4),pitchspeed_f::binary-size(4),yawspeed_f::binary-size(4),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),alt_f::little-signed-integer-size(32),vx_f::little-signed-integer-size(16),vy_f::little-signed-integer-size(16),vz_f::little-signed-integer-size(16),ind_airspeed_f::little-integer-size(16),true_airspeed_f::little-integer-size(16),xacc_f::little-signed-integer-size(16),yacc_f::little-signed-integer-size(16),zacc_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.HilStateQuaternion{time_usec: time_usec_f, attitude_quaternion: unpack_array(attitude_quaternion_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), rollspeed: unpack_float(rollspeed_f), pitchspeed: unpack_float(pitchspeed_f), yawspeed: unpack_float(yawspeed_f), lat: lat_f, lon: lon_f, alt: alt_f, vx: vx_f, vy: vy_f, vz: vz_f, ind_airspeed: ind_airspeed_f, true_airspeed: true_airspeed_f, xacc: xacc_f, yacc: yacc_f, zacc: zacc_f}}
  def unpack(116, 1, <<time_boot_ms_f::little-integer-size(32),xacc_f::little-signed-integer-size(16),yacc_f::little-signed-integer-size(16),zacc_f::little-signed-integer-size(16),xgyro_f::little-signed-integer-size(16),ygyro_f::little-signed-integer-size(16),zgyro_f::little-signed-integer-size(16),xmag_f::little-signed-integer-size(16),ymag_f::little-signed-integer-size(16),zmag_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.ScaledImu2{time_boot_ms: time_boot_ms_f, xacc: xacc_f, yacc: yacc_f, zacc: zacc_f, xgyro: xgyro_f, ygyro: ygyro_f, zgyro: zgyro_f, xmag: xmag_f, ymag: ymag_f, zmag: zmag_f}}
  def unpack(116, 2, <<time_boot_ms_f::little-integer-size(32),xacc_f::little-signed-integer-size(16),yacc_f::little-signed-integer-size(16),zacc_f::little-signed-integer-size(16),xgyro_f::little-signed-integer-size(16),ygyro_f::little-signed-integer-size(16),zgyro_f::little-signed-integer-size(16),xmag_f::little-signed-integer-size(16),ymag_f::little-signed-integer-size(16),zmag_f::little-signed-integer-size(16),temperature_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.ScaledImu2{time_boot_ms: time_boot_ms_f, xacc: xacc_f, yacc: yacc_f, zacc: zacc_f, xgyro: xgyro_f, ygyro: ygyro_f, zgyro: zgyro_f, xmag: xmag_f, ymag: ymag_f, zmag: zmag_f,temperature: temperature_f}}
  def unpack(117, _, <<start_f::little-integer-size(16),end_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.LogRequestList{start: start_f, end: end_f, target_system: target_system_f, target_component: target_component_f}}
  def unpack(118, _, <<time_utc_f::little-integer-size(32),size_f::little-integer-size(32),id_f::little-integer-size(16),num_logs_f::little-integer-size(16),last_log_num_f::little-integer-size(16)>>), do: {:ok, %APM.Message.LogEntry{time_utc: time_utc_f, size: size_f, id: id_f, num_logs: num_logs_f, last_log_num: last_log_num_f}}
  def unpack(119, _, <<ofs_f::little-integer-size(32),count_f::little-integer-size(32),id_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.LogRequestData{ofs: ofs_f, count: count_f, id: id_f, target_system: target_system_f, target_component: target_component_f}}
  def unpack(120, _, <<ofs_f::little-integer-size(32),id_f::little-integer-size(16),count_f::integer-size(8),data_f::binary-size(90)>>), do: {:ok, %APM.Message.LogData{ofs: ofs_f, id: id_f, count: count_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(121, _, <<target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.LogErase{target_system: target_system_f, target_component: target_component_f}}
  def unpack(122, _, <<target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.LogRequestEnd{target_system: target_system_f, target_component: target_component_f}}
  def unpack(123, _, <<target_system_f::integer-size(8),target_component_f::integer-size(8),len_f::integer-size(8),data_f::binary-size(110)>>), do: {:ok, %APM.Message.GpsInjectData{target_system: target_system_f, target_component: target_component_f, len: len_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(124, 1, <<time_usec_f::little-integer-size(64),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),alt_f::little-signed-integer-size(32),dgps_age_f::little-integer-size(32),eph_f::little-integer-size(16),epv_f::little-integer-size(16),vel_f::little-integer-size(16),cog_f::little-integer-size(16),fix_type_f::integer-size(8),satellites_visible_f::integer-size(8),dgps_numch_f::integer-size(8)>>), do: {:ok, %APM.Message.Gps2Raw{time_usec: time_usec_f, lat: lat_f, lon: lon_f, alt: alt_f, dgps_age: dgps_age_f, eph: eph_f, epv: epv_f, vel: vel_f, cog: cog_f, fix_type: decode(fix_type_f, :gps_fix_type), satellites_visible: satellites_visible_f, dgps_numch: dgps_numch_f}}
  def unpack(124, 2, <<time_usec_f::little-integer-size(64),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),alt_f::little-signed-integer-size(32),dgps_age_f::little-integer-size(32),eph_f::little-integer-size(16),epv_f::little-integer-size(16),vel_f::little-integer-size(16),cog_f::little-integer-size(16),fix_type_f::integer-size(8),satellites_visible_f::integer-size(8),dgps_numch_f::integer-size(8),yaw_f::little-integer-size(16),alt_ellipsoid_f::little-signed-integer-size(32),h_acc_f::little-integer-size(32),v_acc_f::little-integer-size(32),vel_acc_f::little-integer-size(32),hdg_acc_f::little-integer-size(32)>>), do: {:ok, %APM.Message.Gps2Raw{time_usec: time_usec_f, lat: lat_f, lon: lon_f, alt: alt_f, dgps_age: dgps_age_f, eph: eph_f, epv: epv_f, vel: vel_f, cog: cog_f, fix_type: decode(fix_type_f, :gps_fix_type), satellites_visible: satellites_visible_f, dgps_numch: dgps_numch_f,yaw: yaw_f, alt_ellipsoid: alt_ellipsoid_f, h_acc: h_acc_f, v_acc: v_acc_f, vel_acc: vel_acc_f, hdg_acc: hdg_acc_f}}
  def unpack(125, _, <<vcc_f::little-integer-size(16),vservo_f::little-integer-size(16),flags_f::little-integer-size(16)>>), do: {:ok, %APM.Message.PowerStatus{vcc: vcc_f, vservo: vservo_f, flags: unpack_bitmask(flags_f, :mav_power_status, &decode/2)}}
  def unpack(126, _, <<baudrate_f::little-integer-size(32),timeout_f::little-integer-size(16),device_f::integer-size(8),flags_f::integer-size(8),count_f::integer-size(8),data_f::binary-size(70)>>), do: {:ok, %APM.Message.SerialControl{baudrate: baudrate_f, timeout: timeout_f, device: decode(device_f, :serial_control_dev), flags: unpack_bitmask(flags_f, :serial_control_flag, &decode/2), count: count_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(127, _, <<time_last_baseline_ms_f::little-integer-size(32),tow_f::little-integer-size(32),baseline_a_mm_f::little-signed-integer-size(32),baseline_b_mm_f::little-signed-integer-size(32),baseline_c_mm_f::little-signed-integer-size(32),accuracy_f::little-integer-size(32),iar_num_hypotheses_f::little-signed-integer-size(32),wn_f::little-integer-size(16),rtk_receiver_id_f::integer-size(8),rtk_health_f::integer-size(8),rtk_rate_f::integer-size(8),nsats_f::integer-size(8),baseline_coords_type_f::integer-size(8)>>), do: {:ok, %APM.Message.GpsRtk{time_last_baseline_ms: time_last_baseline_ms_f, tow: tow_f, baseline_a_mm: baseline_a_mm_f, baseline_b_mm: baseline_b_mm_f, baseline_c_mm: baseline_c_mm_f, accuracy: accuracy_f, iar_num_hypotheses: iar_num_hypotheses_f, wn: wn_f, rtk_receiver_id: rtk_receiver_id_f, rtk_health: rtk_health_f, rtk_rate: rtk_rate_f, nsats: nsats_f, baseline_coords_type: decode(baseline_coords_type_f, :rtk_baseline_coordinate_system)}}
  def unpack(128, _, <<time_last_baseline_ms_f::little-integer-size(32),tow_f::little-integer-size(32),baseline_a_mm_f::little-signed-integer-size(32),baseline_b_mm_f::little-signed-integer-size(32),baseline_c_mm_f::little-signed-integer-size(32),accuracy_f::little-integer-size(32),iar_num_hypotheses_f::little-signed-integer-size(32),wn_f::little-integer-size(16),rtk_receiver_id_f::integer-size(8),rtk_health_f::integer-size(8),rtk_rate_f::integer-size(8),nsats_f::integer-size(8),baseline_coords_type_f::integer-size(8)>>), do: {:ok, %APM.Message.Gps2Rtk{time_last_baseline_ms: time_last_baseline_ms_f, tow: tow_f, baseline_a_mm: baseline_a_mm_f, baseline_b_mm: baseline_b_mm_f, baseline_c_mm: baseline_c_mm_f, accuracy: accuracy_f, iar_num_hypotheses: iar_num_hypotheses_f, wn: wn_f, rtk_receiver_id: rtk_receiver_id_f, rtk_health: rtk_health_f, rtk_rate: rtk_rate_f, nsats: nsats_f, baseline_coords_type: decode(baseline_coords_type_f, :rtk_baseline_coordinate_system)}}
  def unpack(129, 1, <<time_boot_ms_f::little-integer-size(32),xacc_f::little-signed-integer-size(16),yacc_f::little-signed-integer-size(16),zacc_f::little-signed-integer-size(16),xgyro_f::little-signed-integer-size(16),ygyro_f::little-signed-integer-size(16),zgyro_f::little-signed-integer-size(16),xmag_f::little-signed-integer-size(16),ymag_f::little-signed-integer-size(16),zmag_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.ScaledImu3{time_boot_ms: time_boot_ms_f, xacc: xacc_f, yacc: yacc_f, zacc: zacc_f, xgyro: xgyro_f, ygyro: ygyro_f, zgyro: zgyro_f, xmag: xmag_f, ymag: ymag_f, zmag: zmag_f}}
  def unpack(129, 2, <<time_boot_ms_f::little-integer-size(32),xacc_f::little-signed-integer-size(16),yacc_f::little-signed-integer-size(16),zacc_f::little-signed-integer-size(16),xgyro_f::little-signed-integer-size(16),ygyro_f::little-signed-integer-size(16),zgyro_f::little-signed-integer-size(16),xmag_f::little-signed-integer-size(16),ymag_f::little-signed-integer-size(16),zmag_f::little-signed-integer-size(16),temperature_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.ScaledImu3{time_boot_ms: time_boot_ms_f, xacc: xacc_f, yacc: yacc_f, zacc: zacc_f, xgyro: xgyro_f, ygyro: ygyro_f, zgyro: zgyro_f, xmag: xmag_f, ymag: ymag_f, zmag: zmag_f,temperature: temperature_f}}
  def unpack(130, _, <<size_f::little-integer-size(32),width_f::little-integer-size(16),height_f::little-integer-size(16),packets_f::little-integer-size(16),type_f::integer-size(8),payload_f::integer-size(8),jpg_quality_f::integer-size(8)>>), do: {:ok, %APM.Message.DataTransmissionHandshake{size: size_f, width: width_f, height: height_f, packets: packets_f, type: decode(type_f, :mavlink_data_stream_type), payload: payload_f, jpg_quality: jpg_quality_f}}
  def unpack(131, _, <<seqnr_f::little-integer-size(16),data_f::binary-size(253)>>), do: {:ok, %APM.Message.EncapsulatedData{seqnr: seqnr_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(132, 1, <<time_boot_ms_f::little-integer-size(32),min_distance_f::little-integer-size(16),max_distance_f::little-integer-size(16),current_distance_f::little-integer-size(16),type_f::integer-size(8),id_f::integer-size(8),orientation_f::integer-size(8),covariance_f::integer-size(8)>>), do: {:ok, %APM.Message.DistanceSensor{time_boot_ms: time_boot_ms_f, min_distance: min_distance_f, max_distance: max_distance_f, current_distance: current_distance_f, type: decode(type_f, :mav_distance_sensor), id: id_f, orientation: decode(orientation_f, :mav_sensor_orientation), covariance: covariance_f}}
  def unpack(132, 2, <<time_boot_ms_f::little-integer-size(32),min_distance_f::little-integer-size(16),max_distance_f::little-integer-size(16),current_distance_f::little-integer-size(16),type_f::integer-size(8),id_f::integer-size(8),orientation_f::integer-size(8),covariance_f::integer-size(8),horizontal_fov_f::binary-size(4),vertical_fov_f::binary-size(4),quaternion_f::binary-size(16),signal_quality_f::integer-size(8)>>), do: {:ok, %APM.Message.DistanceSensor{time_boot_ms: time_boot_ms_f, min_distance: min_distance_f, max_distance: max_distance_f, current_distance: current_distance_f, type: decode(type_f, :mav_distance_sensor), id: id_f, orientation: decode(orientation_f, :mav_sensor_orientation), covariance: covariance_f,horizontal_fov: unpack_float(horizontal_fov_f), vertical_fov: unpack_float(vertical_fov_f), quaternion: unpack_array(quaternion_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), signal_quality: signal_quality_f}}
  def unpack(133, _, <<mask_f::little-integer-size(64),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),grid_spacing_f::little-integer-size(16)>>), do: {:ok, %APM.Message.TerrainRequest{mask: mask_f, lat: lat_f, lon: lon_f, grid_spacing: grid_spacing_f}}
  def unpack(134, _, <<lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),grid_spacing_f::little-integer-size(16),data_f::binary-size(32),gridbit_f::integer-size(8)>>), do: {:ok, %APM.Message.TerrainData{lat: lat_f, lon: lon_f, grid_spacing: grid_spacing_f, data: unpack_array(data_f, fn(<<elem::little-signed-integer-size(16),rest::binary>>) ->  {elem, rest} end), gridbit: gridbit_f}}
  def unpack(135, _, <<lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32)>>), do: {:ok, %APM.Message.TerrainCheck{lat: lat_f, lon: lon_f}}
  def unpack(136, _, <<lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),terrain_height_f::binary-size(4),current_height_f::binary-size(4),spacing_f::little-integer-size(16),pending_f::little-integer-size(16),loaded_f::little-integer-size(16)>>), do: {:ok, %APM.Message.TerrainReport{lat: lat_f, lon: lon_f, terrain_height: unpack_float(terrain_height_f), current_height: unpack_float(current_height_f), spacing: spacing_f, pending: pending_f, loaded: loaded_f}}
  def unpack(137, 1, <<time_boot_ms_f::little-integer-size(32),press_abs_f::binary-size(4),press_diff_f::binary-size(4),temperature_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.ScaledPressure2{time_boot_ms: time_boot_ms_f, press_abs: unpack_float(press_abs_f), press_diff: unpack_float(press_diff_f), temperature: temperature_f}}
  def unpack(137, 2, <<time_boot_ms_f::little-integer-size(32),press_abs_f::binary-size(4),press_diff_f::binary-size(4),temperature_f::little-signed-integer-size(16),temperature_press_diff_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.ScaledPressure2{time_boot_ms: time_boot_ms_f, press_abs: unpack_float(press_abs_f), press_diff: unpack_float(press_diff_f), temperature: temperature_f,temperature_press_diff: temperature_press_diff_f}}
  def unpack(138, 1, <<time_usec_f::little-integer-size(64),q_f::binary-size(16),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4)>>), do: {:ok, %APM.Message.AttPosMocap{time_usec: time_usec_f, q: unpack_array(q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f)}}
  def unpack(138, 2, <<time_usec_f::little-integer-size(64),q_f::binary-size(16),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),covariance_f::binary-size(84)>>), do: {:ok, %APM.Message.AttPosMocap{time_usec: time_usec_f, q: unpack_array(q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f),covariance: unpack_array(covariance_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(139, _, <<time_usec_f::little-integer-size(64),controls_f::binary-size(32),group_mlx_f::integer-size(8),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.SetActuatorControlTarget{time_usec: time_usec_f, controls: unpack_array(controls_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), group_mlx: group_mlx_f, target_system: target_system_f, target_component: target_component_f}}
  def unpack(140, _, <<time_usec_f::little-integer-size(64),controls_f::binary-size(32),group_mlx_f::integer-size(8)>>), do: {:ok, %APM.Message.ActuatorControlTarget{time_usec: time_usec_f, controls: unpack_array(controls_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), group_mlx: group_mlx_f}}
  def unpack(141, _, <<time_usec_f::little-integer-size(64),altitude_monotonic_f::binary-size(4),altitude_amsl_f::binary-size(4),altitude_local_f::binary-size(4),altitude_relative_f::binary-size(4),altitude_terrain_f::binary-size(4),bottom_clearance_f::binary-size(4)>>), do: {:ok, %APM.Message.Altitude{time_usec: time_usec_f, altitude_monotonic: unpack_float(altitude_monotonic_f), altitude_amsl: unpack_float(altitude_amsl_f), altitude_local: unpack_float(altitude_local_f), altitude_relative: unpack_float(altitude_relative_f), altitude_terrain: unpack_float(altitude_terrain_f), bottom_clearance: unpack_float(bottom_clearance_f)}}
  def unpack(142, _, <<request_id_f::integer-size(8),uri_type_f::integer-size(8),uri_f::binary-size(120),transfer_type_f::integer-size(8),storage_f::binary-size(120)>>), do: {:ok, %APM.Message.ResourceRequest{request_id: request_id_f, uri_type: uri_type_f, uri: unpack_array(uri_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end), transfer_type: transfer_type_f, storage: unpack_array(storage_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(143, 1, <<time_boot_ms_f::little-integer-size(32),press_abs_f::binary-size(4),press_diff_f::binary-size(4),temperature_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.ScaledPressure3{time_boot_ms: time_boot_ms_f, press_abs: unpack_float(press_abs_f), press_diff: unpack_float(press_diff_f), temperature: temperature_f}}
  def unpack(143, 2, <<time_boot_ms_f::little-integer-size(32),press_abs_f::binary-size(4),press_diff_f::binary-size(4),temperature_f::little-signed-integer-size(16),temperature_press_diff_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.ScaledPressure3{time_boot_ms: time_boot_ms_f, press_abs: unpack_float(press_abs_f), press_diff: unpack_float(press_diff_f), temperature: temperature_f,temperature_press_diff: temperature_press_diff_f}}
  def unpack(144, _, <<timestamp_f::little-integer-size(64),custom_state_f::little-integer-size(64),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),alt_f::binary-size(4),vel_f::binary-size(12),acc_f::binary-size(12),attitude_q_f::binary-size(16),rates_f::binary-size(12),position_cov_f::binary-size(12),est_capabilities_f::integer-size(8)>>), do: {:ok, %APM.Message.FollowTarget{timestamp: timestamp_f, custom_state: custom_state_f, lat: lat_f, lon: lon_f, alt: unpack_float(alt_f), vel: unpack_array(vel_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), acc: unpack_array(acc_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), attitude_q: unpack_array(attitude_q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), rates: unpack_array(rates_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), position_cov: unpack_array(position_cov_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), est_capabilities: est_capabilities_f}}
  def unpack(146, _, <<time_usec_f::little-integer-size(64),x_acc_f::binary-size(4),y_acc_f::binary-size(4),z_acc_f::binary-size(4),x_vel_f::binary-size(4),y_vel_f::binary-size(4),z_vel_f::binary-size(4),x_pos_f::binary-size(4),y_pos_f::binary-size(4),z_pos_f::binary-size(4),airspeed_f::binary-size(4),vel_variance_f::binary-size(12),pos_variance_f::binary-size(12),q_f::binary-size(16),roll_rate_f::binary-size(4),pitch_rate_f::binary-size(4),yaw_rate_f::binary-size(4)>>), do: {:ok, %APM.Message.ControlSystemState{time_usec: time_usec_f, x_acc: unpack_float(x_acc_f), y_acc: unpack_float(y_acc_f), z_acc: unpack_float(z_acc_f), x_vel: unpack_float(x_vel_f), y_vel: unpack_float(y_vel_f), z_vel: unpack_float(z_vel_f), x_pos: unpack_float(x_pos_f), y_pos: unpack_float(y_pos_f), z_pos: unpack_float(z_pos_f), airspeed: unpack_float(airspeed_f), vel_variance: unpack_array(vel_variance_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), pos_variance: unpack_array(pos_variance_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), q: unpack_array(q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), roll_rate: unpack_float(roll_rate_f), pitch_rate: unpack_float(pitch_rate_f), yaw_rate: unpack_float(yaw_rate_f)}}
  def unpack(147, 1, <<current_consumed_f::little-signed-integer-size(32),energy_consumed_f::little-signed-integer-size(32),temperature_f::little-signed-integer-size(16),voltages_f::binary-size(20),current_battery_f::little-signed-integer-size(16),id_f::integer-size(8),battery_function_f::integer-size(8),type_f::integer-size(8),battery_remaining_f::signed-integer-size(8)>>), do: {:ok, %APM.Message.BatteryStatus{current_consumed: current_consumed_f, energy_consumed: energy_consumed_f, temperature: temperature_f, voltages: unpack_array(voltages_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), current_battery: current_battery_f, id: id_f, battery_function: decode(battery_function_f, :mav_battery_function), type: decode(type_f, :mav_battery_type), battery_remaining: battery_remaining_f}}
  def unpack(147, 2, <<current_consumed_f::little-signed-integer-size(32),energy_consumed_f::little-signed-integer-size(32),temperature_f::little-signed-integer-size(16),voltages_f::binary-size(20),current_battery_f::little-signed-integer-size(16),id_f::integer-size(8),battery_function_f::integer-size(8),type_f::integer-size(8),battery_remaining_f::signed-integer-size(8),time_remaining_f::little-signed-integer-size(32),charge_state_f::integer-size(8),voltages_ext_f::binary-size(8)>>), do: {:ok, %APM.Message.BatteryStatus{current_consumed: current_consumed_f, energy_consumed: energy_consumed_f, temperature: temperature_f, voltages: unpack_array(voltages_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), current_battery: current_battery_f, id: id_f, battery_function: decode(battery_function_f, :mav_battery_function), type: decode(type_f, :mav_battery_type), battery_remaining: battery_remaining_f,time_remaining: time_remaining_f, charge_state: decode(charge_state_f, :mav_battery_charge_state), voltages_ext: unpack_array(voltages_ext_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(148, 1, <<capabilities_f::little-integer-size(64),uid_f::little-integer-size(64),flight_sw_version_f::little-integer-size(32),middleware_sw_version_f::little-integer-size(32),os_sw_version_f::little-integer-size(32),board_version_f::little-integer-size(32),vendor_id_f::little-integer-size(16),product_id_f::little-integer-size(16),flight_custom_version_f::binary-size(8),middleware_custom_version_f::binary-size(8),os_custom_version_f::binary-size(8)>>), do: {:ok, %APM.Message.AutopilotVersion{capabilities: unpack_bitmask(capabilities_f, :mav_protocol_capability, &decode/2), uid: uid_f, flight_sw_version: flight_sw_version_f, middleware_sw_version: middleware_sw_version_f, os_sw_version: os_sw_version_f, board_version: board_version_f, vendor_id: vendor_id_f, product_id: product_id_f, flight_custom_version: unpack_array(flight_custom_version_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end), middleware_custom_version: unpack_array(middleware_custom_version_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end), os_custom_version: unpack_array(os_custom_version_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(148, 2, <<capabilities_f::little-integer-size(64),uid_f::little-integer-size(64),flight_sw_version_f::little-integer-size(32),middleware_sw_version_f::little-integer-size(32),os_sw_version_f::little-integer-size(32),board_version_f::little-integer-size(32),vendor_id_f::little-integer-size(16),product_id_f::little-integer-size(16),flight_custom_version_f::binary-size(8),middleware_custom_version_f::binary-size(8),os_custom_version_f::binary-size(8),uid2_f::binary-size(18)>>), do: {:ok, %APM.Message.AutopilotVersion{capabilities: unpack_bitmask(capabilities_f, :mav_protocol_capability, &decode/2), uid: uid_f, flight_sw_version: flight_sw_version_f, middleware_sw_version: middleware_sw_version_f, os_sw_version: os_sw_version_f, board_version: board_version_f, vendor_id: vendor_id_f, product_id: product_id_f, flight_custom_version: unpack_array(flight_custom_version_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end), middleware_custom_version: unpack_array(middleware_custom_version_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end), os_custom_version: unpack_array(os_custom_version_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end),uid2: unpack_array(uid2_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(149, 1, <<time_usec_f::little-integer-size(64),angle_x_f::binary-size(4),angle_y_f::binary-size(4),distance_f::binary-size(4),size_x_f::binary-size(4),size_y_f::binary-size(4),target_num_f::integer-size(8),frame_f::integer-size(8)>>), do: {:ok, %APM.Message.LandingTarget{time_usec: time_usec_f, angle_x: unpack_float(angle_x_f), angle_y: unpack_float(angle_y_f), distance: unpack_float(distance_f), size_x: unpack_float(size_x_f), size_y: unpack_float(size_y_f), target_num: target_num_f, frame: decode(frame_f, :mav_frame)}}
  def unpack(149, 2, <<time_usec_f::little-integer-size(64),angle_x_f::binary-size(4),angle_y_f::binary-size(4),distance_f::binary-size(4),size_x_f::binary-size(4),size_y_f::binary-size(4),target_num_f::integer-size(8),frame_f::integer-size(8),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),q_f::binary-size(16),type_f::integer-size(8),position_valid_f::integer-size(8)>>), do: {:ok, %APM.Message.LandingTarget{time_usec: time_usec_f, angle_x: unpack_float(angle_x_f), angle_y: unpack_float(angle_y_f), distance: unpack_float(distance_f), size_x: unpack_float(size_x_f), size_y: unpack_float(size_y_f), target_num: target_num_f, frame: decode(frame_f, :mav_frame),x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), q: unpack_array(q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), type: decode(type_f, :landing_target_type), position_valid: position_valid_f}}
  def unpack(150, _, <<mag_declination_f::binary-size(4),raw_press_f::little-signed-integer-size(32),raw_temp_f::little-signed-integer-size(32),gyro_cal_x_f::binary-size(4),gyro_cal_y_f::binary-size(4),gyro_cal_z_f::binary-size(4),accel_cal_x_f::binary-size(4),accel_cal_y_f::binary-size(4),accel_cal_z_f::binary-size(4),mag_ofs_x_f::little-signed-integer-size(16),mag_ofs_y_f::little-signed-integer-size(16),mag_ofs_z_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.SensorOffsets{mag_declination: unpack_float(mag_declination_f), raw_press: raw_press_f, raw_temp: raw_temp_f, gyro_cal_x: unpack_float(gyro_cal_x_f), gyro_cal_y: unpack_float(gyro_cal_y_f), gyro_cal_z: unpack_float(gyro_cal_z_f), accel_cal_x: unpack_float(accel_cal_x_f), accel_cal_y: unpack_float(accel_cal_y_f), accel_cal_z: unpack_float(accel_cal_z_f), mag_ofs_x: mag_ofs_x_f, mag_ofs_y: mag_ofs_y_f, mag_ofs_z: mag_ofs_z_f}}
  def unpack(151, _, <<mag_ofs_x_f::little-signed-integer-size(16),mag_ofs_y_f::little-signed-integer-size(16),mag_ofs_z_f::little-signed-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.SetMagOffsets{mag_ofs_x: mag_ofs_x_f, mag_ofs_y: mag_ofs_y_f, mag_ofs_z: mag_ofs_z_f, target_system: target_system_f, target_component: target_component_f}}
  def unpack(152, 1, <<brkval_f::little-integer-size(16),freemem_f::little-integer-size(16)>>), do: {:ok, %APM.Message.Meminfo{brkval: brkval_f, freemem: freemem_f}}
  def unpack(152, 2, <<brkval_f::little-integer-size(16),freemem_f::little-integer-size(16),freemem32_f::little-integer-size(32)>>), do: {:ok, %APM.Message.Meminfo{brkval: brkval_f, freemem: freemem_f,freemem32: freemem32_f}}
  def unpack(153, _, <<adc1_f::little-integer-size(16),adc2_f::little-integer-size(16),adc3_f::little-integer-size(16),adc4_f::little-integer-size(16),adc5_f::little-integer-size(16),adc6_f::little-integer-size(16)>>), do: {:ok, %APM.Message.ApAdc{adc1: adc1_f, adc2: adc2_f, adc3: adc3_f, adc4: adc4_f, adc5: adc5_f, adc6: adc6_f}}
  def unpack(154, _, <<extra_value_f::binary-size(4),shutter_speed_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),mode_f::integer-size(8),aperture_f::integer-size(8),iso_f::integer-size(8),exposure_type_f::integer-size(8),command_id_f::integer-size(8),engine_cut_off_f::integer-size(8),extra_param_f::integer-size(8)>>), do: {:ok, %APM.Message.DigicamConfigure{extra_value: unpack_float(extra_value_f), shutter_speed: shutter_speed_f, target_system: target_system_f, target_component: target_component_f, mode: mode_f, aperture: aperture_f, iso: iso_f, exposure_type: exposure_type_f, command_id: command_id_f, engine_cut_off: engine_cut_off_f, extra_param: extra_param_f}}
  def unpack(155, _, <<extra_value_f::binary-size(4),target_system_f::integer-size(8),target_component_f::integer-size(8),session_f::integer-size(8),zoom_pos_f::integer-size(8),zoom_step_f::signed-integer-size(8),focus_lock_f::integer-size(8),shot_f::integer-size(8),command_id_f::integer-size(8),extra_param_f::integer-size(8)>>), do: {:ok, %APM.Message.DigicamControl{extra_value: unpack_float(extra_value_f), target_system: target_system_f, target_component: target_component_f, session: session_f, zoom_pos: zoom_pos_f, zoom_step: zoom_step_f, focus_lock: focus_lock_f, shot: shot_f, command_id: command_id_f, extra_param: extra_param_f}}
  def unpack(156, _, <<target_system_f::integer-size(8),target_component_f::integer-size(8),mount_mode_f::integer-size(8),stab_roll_f::integer-size(8),stab_pitch_f::integer-size(8),stab_yaw_f::integer-size(8)>>), do: {:ok, %APM.Message.MountConfigure{target_system: target_system_f, target_component: target_component_f, mount_mode: decode(mount_mode_f, :mav_mount_mode), stab_roll: stab_roll_f, stab_pitch: stab_pitch_f, stab_yaw: stab_yaw_f}}
  def unpack(157, _, <<input_a_f::little-signed-integer-size(32),input_b_f::little-signed-integer-size(32),input_c_f::little-signed-integer-size(32),target_system_f::integer-size(8),target_component_f::integer-size(8),save_position_f::integer-size(8)>>), do: {:ok, %APM.Message.MountControl{input_a: input_a_f, input_b: input_b_f, input_c: input_c_f, target_system: target_system_f, target_component: target_component_f, save_position: save_position_f}}
  def unpack(158, _, <<pointing_a_f::little-signed-integer-size(32),pointing_b_f::little-signed-integer-size(32),pointing_c_f::little-signed-integer-size(32),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.MountStatus{pointing_a: pointing_a_f, pointing_b: pointing_b_f, pointing_c: pointing_c_f, target_system: target_system_f, target_component: target_component_f}}
  def unpack(160, _, <<lat_f::binary-size(4),lng_f::binary-size(4),target_system_f::integer-size(8),target_component_f::integer-size(8),idx_f::integer-size(8),count_f::integer-size(8)>>), do: {:ok, %APM.Message.FencePoint{lat: unpack_float(lat_f), lng: unpack_float(lng_f), target_system: target_system_f, target_component: target_component_f, idx: idx_f, count: count_f}}
  def unpack(161, _, <<target_system_f::integer-size(8),target_component_f::integer-size(8),idx_f::integer-size(8)>>), do: {:ok, %APM.Message.FenceFetchPoint{target_system: target_system_f, target_component: target_component_f, idx: idx_f}}
  def unpack(162, 1, <<breach_time_f::little-integer-size(32),breach_count_f::little-integer-size(16),breach_status_f::integer-size(8),breach_type_f::integer-size(8)>>), do: {:ok, %APM.Message.FenceStatus{breach_time: breach_time_f, breach_count: breach_count_f, breach_status: breach_status_f, breach_type: decode(breach_type_f, :fence_breach)}}
  def unpack(162, 2, <<breach_time_f::little-integer-size(32),breach_count_f::little-integer-size(16),breach_status_f::integer-size(8),breach_type_f::integer-size(8),breach_mitigation_f::integer-size(8)>>), do: {:ok, %APM.Message.FenceStatus{breach_time: breach_time_f, breach_count: breach_count_f, breach_status: breach_status_f, breach_type: decode(breach_type_f, :fence_breach),breach_mitigation: decode(breach_mitigation_f, :fence_mitigate)}}
  def unpack(163, _, <<omegaix_f::binary-size(4),omegaiy_f::binary-size(4),omegaiz_f::binary-size(4),accel_weight_f::binary-size(4),renorm_val_f::binary-size(4),error_rp_f::binary-size(4),error_yaw_f::binary-size(4)>>), do: {:ok, %APM.Message.Ahrs{omegaix: unpack_float(omegaix_f), omegaiy: unpack_float(omegaiy_f), omegaiz: unpack_float(omegaiz_f), accel_weight: unpack_float(accel_weight_f), renorm_val: unpack_float(renorm_val_f), error_rp: unpack_float(error_rp_f), error_yaw: unpack_float(error_yaw_f)}}
  def unpack(164, _, <<roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4),xacc_f::binary-size(4),yacc_f::binary-size(4),zacc_f::binary-size(4),xgyro_f::binary-size(4),ygyro_f::binary-size(4),zgyro_f::binary-size(4),lat_f::little-signed-integer-size(32),lng_f::little-signed-integer-size(32)>>), do: {:ok, %APM.Message.Simstate{roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f), xacc: unpack_float(xacc_f), yacc: unpack_float(yacc_f), zacc: unpack_float(zacc_f), xgyro: unpack_float(xgyro_f), ygyro: unpack_float(ygyro_f), zgyro: unpack_float(zgyro_f), lat: lat_f, lng: lng_f}}
  def unpack(165, _, <<vcc_f::little-integer-size(16),i2cerr_f::integer-size(8)>>), do: {:ok, %APM.Message.Hwstatus{vcc: vcc_f, i2cerr: i2cerr_f}}
  def unpack(166, _, <<rxerrors_f::little-integer-size(16),fixed_f::little-integer-size(16),rssi_f::integer-size(8),remrssi_f::integer-size(8),txbuf_f::integer-size(8),noise_f::integer-size(8),remnoise_f::integer-size(8)>>), do: {:ok, %APM.Message.Radio{rxerrors: rxerrors_f, fixed: fixed_f, rssi: rssi_f, remrssi: remrssi_f, txbuf: txbuf_f, noise: noise_f, remnoise: remnoise_f}}
  def unpack(167, _, <<last_trigger_f::little-integer-size(32),last_action_f::little-integer-size(32),last_recovery_f::little-integer-size(32),last_clear_f::little-integer-size(32),breach_count_f::little-integer-size(16),limits_state_f::integer-size(8),mods_enabled_f::integer-size(8),mods_required_f::integer-size(8),mods_triggered_f::integer-size(8)>>), do: {:ok, %APM.Message.LimitsStatus{last_trigger: last_trigger_f, last_action: last_action_f, last_recovery: last_recovery_f, last_clear: last_clear_f, breach_count: breach_count_f, limits_state: decode(limits_state_f, :limits_state), mods_enabled: unpack_bitmask(mods_enabled_f, :limit_module, &decode/2), mods_required: unpack_bitmask(mods_required_f, :limit_module, &decode/2), mods_triggered: unpack_bitmask(mods_triggered_f, :limit_module, &decode/2)}}
  def unpack(168, _, <<direction_f::binary-size(4),speed_f::binary-size(4),speed_z_f::binary-size(4)>>), do: {:ok, %APM.Message.Wind{direction: unpack_float(direction_f), speed: unpack_float(speed_f), speed_z: unpack_float(speed_z_f)}}
  def unpack(169, _, <<type_f::integer-size(8),len_f::integer-size(8),data_f::binary-size(16)>>), do: {:ok, %APM.Message.Data16{type: type_f, len: len_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(170, _, <<type_f::integer-size(8),len_f::integer-size(8),data_f::binary-size(32)>>), do: {:ok, %APM.Message.Data32{type: type_f, len: len_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(171, _, <<type_f::integer-size(8),len_f::integer-size(8),data_f::binary-size(64)>>), do: {:ok, %APM.Message.Data64{type: type_f, len: len_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(172, _, <<type_f::integer-size(8),len_f::integer-size(8),data_f::binary-size(96)>>), do: {:ok, %APM.Message.Data96{type: type_f, len: len_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(173, _, <<distance_f::binary-size(4),voltage_f::binary-size(4)>>), do: {:ok, %APM.Message.Rangefinder{distance: unpack_float(distance_f), voltage: unpack_float(voltage_f)}}
  def unpack(174, _, <<vx_f::binary-size(4),vy_f::binary-size(4),vz_f::binary-size(4),diff_pressure_f::binary-size(4),eas2tas_f::binary-size(4),ratio_f::binary-size(4),state_x_f::binary-size(4),state_y_f::binary-size(4),state_z_f::binary-size(4),pax_f::binary-size(4),pby_f::binary-size(4),pcz_f::binary-size(4)>>), do: {:ok, %APM.Message.AirspeedAutocal{vx: unpack_float(vx_f), vy: unpack_float(vy_f), vz: unpack_float(vz_f), diff_pressure: unpack_float(diff_pressure_f), eas2tas: unpack_float(eas2tas_f), ratio: unpack_float(ratio_f), state_x: unpack_float(state_x_f), state_y: unpack_float(state_y_f), state_z: unpack_float(state_z_f), pax: unpack_float(pax_f), pby: unpack_float(pby_f), pcz: unpack_float(pcz_f)}}
  def unpack(175, _, <<lat_f::little-signed-integer-size(32),lng_f::little-signed-integer-size(32),alt_f::little-signed-integer-size(16),break_alt_f::little-signed-integer-size(16),land_dir_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),idx_f::integer-size(8),count_f::integer-size(8),flags_f::integer-size(8)>>), do: {:ok, %APM.Message.RallyPoint{lat: lat_f, lng: lng_f, alt: alt_f, break_alt: break_alt_f, land_dir: land_dir_f, target_system: target_system_f, target_component: target_component_f, idx: idx_f, count: count_f, flags: unpack_bitmask(flags_f, :rally_flags, &decode/2)}}
  def unpack(176, _, <<target_system_f::integer-size(8),target_component_f::integer-size(8),idx_f::integer-size(8)>>), do: {:ok, %APM.Message.RallyFetchPoint{target_system: target_system_f, target_component: target_component_f, idx: idx_f}}
  def unpack(177, _, <<current_f::binary-size(4),compensationx_f::binary-size(4),compensationy_f::binary-size(4),compensationz_f::binary-size(4),throttle_f::little-integer-size(16),interference_f::little-integer-size(16)>>), do: {:ok, %APM.Message.CompassmotStatus{current: unpack_float(current_f), compensationx: unpack_float(compensationx_f), compensationy: unpack_float(compensationy_f), compensationz: unpack_float(compensationz_f), throttle: throttle_f, interference: interference_f}}
  def unpack(178, _, <<roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4),altitude_f::binary-size(4),lat_f::little-signed-integer-size(32),lng_f::little-signed-integer-size(32)>>), do: {:ok, %APM.Message.Ahrs2{roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f), altitude: unpack_float(altitude_f), lat: lat_f, lng: lng_f}}
  def unpack(179, _, <<time_usec_f::little-integer-size(64),p1_f::binary-size(4),p2_f::binary-size(4),p3_f::binary-size(4),p4_f::binary-size(4),img_idx_f::little-integer-size(16),target_system_f::integer-size(8),cam_idx_f::integer-size(8),event_id_f::integer-size(8)>>), do: {:ok, %APM.Message.CameraStatus{time_usec: time_usec_f, p1: unpack_float(p1_f), p2: unpack_float(p2_f), p3: unpack_float(p3_f), p4: unpack_float(p4_f), img_idx: img_idx_f, target_system: target_system_f, cam_idx: cam_idx_f, event_id: decode(event_id_f, :camera_status_types)}}
  def unpack(180, 1, <<time_usec_f::little-integer-size(64),lat_f::little-signed-integer-size(32),lng_f::little-signed-integer-size(32),alt_msl_f::binary-size(4),alt_rel_f::binary-size(4),roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4),foc_len_f::binary-size(4),img_idx_f::little-integer-size(16),target_system_f::integer-size(8),cam_idx_f::integer-size(8),flags_f::integer-size(8)>>), do: {:ok, %APM.Message.CameraFeedback{time_usec: time_usec_f, lat: lat_f, lng: lng_f, alt_msl: unpack_float(alt_msl_f), alt_rel: unpack_float(alt_rel_f), roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f), foc_len: unpack_float(foc_len_f), img_idx: img_idx_f, target_system: target_system_f, cam_idx: cam_idx_f, flags: decode(flags_f, :camera_feedback_flags)}}
  def unpack(180, 2, <<time_usec_f::little-integer-size(64),lat_f::little-signed-integer-size(32),lng_f::little-signed-integer-size(32),alt_msl_f::binary-size(4),alt_rel_f::binary-size(4),roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4),foc_len_f::binary-size(4),img_idx_f::little-integer-size(16),target_system_f::integer-size(8),cam_idx_f::integer-size(8),flags_f::integer-size(8),completed_captures_f::little-integer-size(16)>>), do: {:ok, %APM.Message.CameraFeedback{time_usec: time_usec_f, lat: lat_f, lng: lng_f, alt_msl: unpack_float(alt_msl_f), alt_rel: unpack_float(alt_rel_f), roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f), foc_len: unpack_float(foc_len_f), img_idx: img_idx_f, target_system: target_system_f, cam_idx: cam_idx_f, flags: decode(flags_f, :camera_feedback_flags),completed_captures: completed_captures_f}}
  def unpack(181, _, <<voltage_f::little-integer-size(16),current_battery_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.Battery2{voltage: voltage_f, current_battery: current_battery_f}}
  def unpack(182, _, <<roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4),altitude_f::binary-size(4),lat_f::little-signed-integer-size(32),lng_f::little-signed-integer-size(32),v1_f::binary-size(4),v2_f::binary-size(4),v3_f::binary-size(4),v4_f::binary-size(4)>>), do: {:ok, %APM.Message.Ahrs3{roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f), altitude: unpack_float(altitude_f), lat: lat_f, lng: lng_f, v1: unpack_float(v1_f), v2: unpack_float(v2_f), v3: unpack_float(v3_f), v4: unpack_float(v4_f)}}
  def unpack(183, _, <<target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.AutopilotVersionRequest{target_system: target_system_f, target_component: target_component_f}}
  def unpack(184, _, <<seqno_f::little-integer-size(32),target_system_f::integer-size(8),target_component_f::integer-size(8),data_f::binary-size(200)>>), do: {:ok, %APM.Message.RemoteLogDataBlock{seqno: decode(seqno_f, :mav_remote_log_data_block_commands), target_system: target_system_f, target_component: target_component_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(185, _, <<seqno_f::little-integer-size(32),target_system_f::integer-size(8),target_component_f::integer-size(8),status_f::integer-size(8)>>), do: {:ok, %APM.Message.RemoteLogBlockStatus{seqno: seqno_f, target_system: target_system_f, target_component: target_component_f, status: decode(status_f, :mav_remote_log_data_block_statuses)}}
  def unpack(186, _, <<target_system_f::integer-size(8),target_component_f::integer-size(8),instance_f::integer-size(8),pattern_f::integer-size(8),custom_len_f::integer-size(8),custom_bytes_f::binary-size(24)>>), do: {:ok, %APM.Message.LedControl{target_system: target_system_f, target_component: target_component_f, instance: instance_f, pattern: pattern_f, custom_len: custom_len_f, custom_bytes: unpack_array(custom_bytes_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(191, _, <<direction_x_f::binary-size(4),direction_y_f::binary-size(4),direction_z_f::binary-size(4),compass_id_f::integer-size(8),cal_mask_f::integer-size(8),cal_status_f::integer-size(8),attempt_f::integer-size(8),completion_pct_f::integer-size(8),completion_mask_f::binary-size(10)>>), do: {:ok, %APM.Message.MagCalProgress{direction_x: unpack_float(direction_x_f), direction_y: unpack_float(direction_y_f), direction_z: unpack_float(direction_z_f), compass_id: compass_id_f, cal_mask: cal_mask_f, cal_status: decode(cal_status_f, :mag_cal_status), attempt: attempt_f, completion_pct: completion_pct_f, completion_mask: unpack_array(completion_mask_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(192, 1, <<fitness_f::binary-size(4),ofs_x_f::binary-size(4),ofs_y_f::binary-size(4),ofs_z_f::binary-size(4),diag_x_f::binary-size(4),diag_y_f::binary-size(4),diag_z_f::binary-size(4),offdiag_x_f::binary-size(4),offdiag_y_f::binary-size(4),offdiag_z_f::binary-size(4),compass_id_f::integer-size(8),cal_mask_f::integer-size(8),cal_status_f::integer-size(8),autosaved_f::integer-size(8)>>), do: {:ok, %APM.Message.MagCalReport{fitness: unpack_float(fitness_f), ofs_x: unpack_float(ofs_x_f), ofs_y: unpack_float(ofs_y_f), ofs_z: unpack_float(ofs_z_f), diag_x: unpack_float(diag_x_f), diag_y: unpack_float(diag_y_f), diag_z: unpack_float(diag_z_f), offdiag_x: unpack_float(offdiag_x_f), offdiag_y: unpack_float(offdiag_y_f), offdiag_z: unpack_float(offdiag_z_f), compass_id: compass_id_f, cal_mask: cal_mask_f, cal_status: decode(cal_status_f, :mag_cal_status), autosaved: autosaved_f}}
  def unpack(192, 2, <<fitness_f::binary-size(4),ofs_x_f::binary-size(4),ofs_y_f::binary-size(4),ofs_z_f::binary-size(4),diag_x_f::binary-size(4),diag_y_f::binary-size(4),diag_z_f::binary-size(4),offdiag_x_f::binary-size(4),offdiag_y_f::binary-size(4),offdiag_z_f::binary-size(4),compass_id_f::integer-size(8),cal_mask_f::integer-size(8),cal_status_f::integer-size(8),autosaved_f::integer-size(8),orientation_confidence_f::binary-size(4),old_orientation_f::integer-size(8),new_orientation_f::integer-size(8),scale_factor_f::binary-size(4)>>), do: {:ok, %APM.Message.MagCalReport{fitness: unpack_float(fitness_f), ofs_x: unpack_float(ofs_x_f), ofs_y: unpack_float(ofs_y_f), ofs_z: unpack_float(ofs_z_f), diag_x: unpack_float(diag_x_f), diag_y: unpack_float(diag_y_f), diag_z: unpack_float(diag_z_f), offdiag_x: unpack_float(offdiag_x_f), offdiag_y: unpack_float(offdiag_y_f), offdiag_z: unpack_float(offdiag_z_f), compass_id: compass_id_f, cal_mask: cal_mask_f, cal_status: decode(cal_status_f, :mag_cal_status), autosaved: autosaved_f,orientation_confidence: unpack_float(orientation_confidence_f), old_orientation: decode(old_orientation_f, :mav_sensor_orientation), new_orientation: decode(new_orientation_f, :mav_sensor_orientation), scale_factor: unpack_float(scale_factor_f)}}
  def unpack(193, 1, <<velocity_variance_f::binary-size(4),pos_horiz_variance_f::binary-size(4),pos_vert_variance_f::binary-size(4),compass_variance_f::binary-size(4),terrain_alt_variance_f::binary-size(4),flags_f::little-integer-size(16)>>), do: {:ok, %APM.Message.EkfStatusReport{velocity_variance: unpack_float(velocity_variance_f), pos_horiz_variance: unpack_float(pos_horiz_variance_f), pos_vert_variance: unpack_float(pos_vert_variance_f), compass_variance: unpack_float(compass_variance_f), terrain_alt_variance: unpack_float(terrain_alt_variance_f), flags: unpack_bitmask(flags_f, :ekf_status_flags, &decode/2)}}
  def unpack(193, 2, <<velocity_variance_f::binary-size(4),pos_horiz_variance_f::binary-size(4),pos_vert_variance_f::binary-size(4),compass_variance_f::binary-size(4),terrain_alt_variance_f::binary-size(4),flags_f::little-integer-size(16),airspeed_variance_f::binary-size(4)>>), do: {:ok, %APM.Message.EkfStatusReport{velocity_variance: unpack_float(velocity_variance_f), pos_horiz_variance: unpack_float(pos_horiz_variance_f), pos_vert_variance: unpack_float(pos_vert_variance_f), compass_variance: unpack_float(compass_variance_f), terrain_alt_variance: unpack_float(terrain_alt_variance_f), flags: unpack_bitmask(flags_f, :ekf_status_flags, &decode/2),airspeed_variance: unpack_float(airspeed_variance_f)}}
  def unpack(194, _, <<desired_f::binary-size(4),achieved_f::binary-size(4),ff_f::binary-size(4),p_f::binary-size(4),i_f::binary-size(4),d_f::binary-size(4),axis_f::integer-size(8)>>), do: {:ok, %APM.Message.PidTuning{desired: unpack_float(desired_f), achieved: unpack_float(achieved_f), ff: unpack_float(ff_f), p: unpack_float(p_f), i: unpack_float(i_f), d: unpack_float(d_f), axis: decode(axis_f, :pid_tuning_axis)}}
  def unpack(195, _, <<landing_lat_f::little-signed-integer-size(32),landing_lon_f::little-signed-integer-size(32),path_lat_f::little-signed-integer-size(32),path_lon_f::little-signed-integer-size(32),arc_entry_lat_f::little-signed-integer-size(32),arc_entry_lon_f::little-signed-integer-size(32),altitude_f::binary-size(4),expected_travel_distance_f::binary-size(4),cross_track_error_f::binary-size(4),stage_f::integer-size(8)>>), do: {:ok, %APM.Message.Deepstall{landing_lat: landing_lat_f, landing_lon: landing_lon_f, path_lat: path_lat_f, path_lon: path_lon_f, arc_entry_lat: arc_entry_lat_f, arc_entry_lon: arc_entry_lon_f, altitude: unpack_float(altitude_f), expected_travel_distance: unpack_float(expected_travel_distance_f), cross_track_error: unpack_float(cross_track_error_f), stage: decode(stage_f, :deepstall_stage)}}
  def unpack(200, _, <<delta_time_f::binary-size(4),delta_angle_x_f::binary-size(4),delta_angle_y_f::binary-size(4),delta_angle_z_f::binary-size(4),delta_velocity_x_f::binary-size(4),delta_velocity_y_f::binary-size(4),delta_velocity_z_f::binary-size(4),joint_roll_f::binary-size(4),joint_el_f::binary-size(4),joint_az_f::binary-size(4),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.GimbalReport{delta_time: unpack_float(delta_time_f), delta_angle_x: unpack_float(delta_angle_x_f), delta_angle_y: unpack_float(delta_angle_y_f), delta_angle_z: unpack_float(delta_angle_z_f), delta_velocity_x: unpack_float(delta_velocity_x_f), delta_velocity_y: unpack_float(delta_velocity_y_f), delta_velocity_z: unpack_float(delta_velocity_z_f), joint_roll: unpack_float(joint_roll_f), joint_el: unpack_float(joint_el_f), joint_az: unpack_float(joint_az_f), target_system: target_system_f, target_component: target_component_f}}
  def unpack(201, _, <<demanded_rate_x_f::binary-size(4),demanded_rate_y_f::binary-size(4),demanded_rate_z_f::binary-size(4),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.GimbalControl{demanded_rate_x: unpack_float(demanded_rate_x_f), demanded_rate_y: unpack_float(demanded_rate_y_f), demanded_rate_z: unpack_float(demanded_rate_z_f), target_system: target_system_f, target_component: target_component_f}}
  def unpack(214, _, <<rl_torque_cmd_f::little-signed-integer-size(16),el_torque_cmd_f::little-signed-integer-size(16),az_torque_cmd_f::little-signed-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.GimbalTorqueCmdReport{rl_torque_cmd: rl_torque_cmd_f, el_torque_cmd: el_torque_cmd_f, az_torque_cmd: az_torque_cmd_f, target_system: target_system_f, target_component: target_component_f}}
  def unpack(215, _, <<status_f::integer-size(8),capture_mode_f::integer-size(8),flags_f::integer-size(8)>>), do: {:ok, %APM.Message.GoproHeartbeat{status: decode(status_f, :gopro_heartbeat_status), capture_mode: decode(capture_mode_f, :gopro_capture_mode), flags: unpack_bitmask(flags_f, :gopro_heartbeat_flags, &decode/2)}}
  def unpack(216, _, <<target_system_f::integer-size(8),target_component_f::integer-size(8),cmd_id_f::integer-size(8)>>), do: {:ok, %APM.Message.GoproGetRequest{target_system: target_system_f, target_component: target_component_f, cmd_id: decode(cmd_id_f, :gopro_command)}}
  def unpack(217, _, <<cmd_id_f::integer-size(8),status_f::integer-size(8),value_f::binary-size(4)>>), do: {:ok, %APM.Message.GoproGetResponse{cmd_id: decode(cmd_id_f, :gopro_command), status: decode(status_f, :gopro_request_status), value: unpack_array(value_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(218, _, <<target_system_f::integer-size(8),target_component_f::integer-size(8),cmd_id_f::integer-size(8),value_f::binary-size(4)>>), do: {:ok, %APM.Message.GoproSetRequest{target_system: target_system_f, target_component: target_component_f, cmd_id: decode(cmd_id_f, :gopro_command), value: unpack_array(value_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(219, _, <<cmd_id_f::integer-size(8),status_f::integer-size(8)>>), do: {:ok, %APM.Message.GoproSetResponse{cmd_id: decode(cmd_id_f, :gopro_command), status: decode(status_f, :gopro_request_status)}}
  def unpack(225, _, <<ecu_index_f::binary-size(4),rpm_f::binary-size(4),fuel_consumed_f::binary-size(4),fuel_flow_f::binary-size(4),engine_load_f::binary-size(4),throttle_position_f::binary-size(4),spark_dwell_time_f::binary-size(4),barometric_pressure_f::binary-size(4),intake_manifold_pressure_f::binary-size(4),intake_manifold_temperature_f::binary-size(4),cylinder_head_temperature_f::binary-size(4),ignition_timing_f::binary-size(4),injection_time_f::binary-size(4),exhaust_gas_temperature_f::binary-size(4),throttle_out_f::binary-size(4),pt_compensation_f::binary-size(4),health_f::integer-size(8)>>), do: {:ok, %APM.Message.EfiStatus{ecu_index: unpack_float(ecu_index_f), rpm: unpack_float(rpm_f), fuel_consumed: unpack_float(fuel_consumed_f), fuel_flow: unpack_float(fuel_flow_f), engine_load: unpack_float(engine_load_f), throttle_position: unpack_float(throttle_position_f), spark_dwell_time: unpack_float(spark_dwell_time_f), barometric_pressure: unpack_float(barometric_pressure_f), intake_manifold_pressure: unpack_float(intake_manifold_pressure_f), intake_manifold_temperature: unpack_float(intake_manifold_temperature_f), cylinder_head_temperature: unpack_float(cylinder_head_temperature_f), ignition_timing: unpack_float(ignition_timing_f), injection_time: unpack_float(injection_time_f), exhaust_gas_temperature: unpack_float(exhaust_gas_temperature_f), throttle_out: unpack_float(throttle_out_f), pt_compensation: unpack_float(pt_compensation_f), health: health_f}}
  def unpack(226, _, <<rpm1_f::binary-size(4),rpm2_f::binary-size(4)>>), do: {:ok, %APM.Message.Rpm{rpm1: unpack_float(rpm1_f), rpm2: unpack_float(rpm2_f)}}
  def unpack(230, _, <<time_usec_f::little-integer-size(64),vel_ratio_f::binary-size(4),pos_horiz_ratio_f::binary-size(4),pos_vert_ratio_f::binary-size(4),mag_ratio_f::binary-size(4),hagl_ratio_f::binary-size(4),tas_ratio_f::binary-size(4),pos_horiz_accuracy_f::binary-size(4),pos_vert_accuracy_f::binary-size(4),flags_f::little-integer-size(16)>>), do: {:ok, %APM.Message.EstimatorStatus{time_usec: time_usec_f, vel_ratio: unpack_float(vel_ratio_f), pos_horiz_ratio: unpack_float(pos_horiz_ratio_f), pos_vert_ratio: unpack_float(pos_vert_ratio_f), mag_ratio: unpack_float(mag_ratio_f), hagl_ratio: unpack_float(hagl_ratio_f), tas_ratio: unpack_float(tas_ratio_f), pos_horiz_accuracy: unpack_float(pos_horiz_accuracy_f), pos_vert_accuracy: unpack_float(pos_vert_accuracy_f), flags: unpack_bitmask(flags_f, :estimator_status_flags, &decode/2)}}
  def unpack(231, _, <<time_usec_f::little-integer-size(64),wind_x_f::binary-size(4),wind_y_f::binary-size(4),wind_z_f::binary-size(4),var_horiz_f::binary-size(4),var_vert_f::binary-size(4),wind_alt_f::binary-size(4),horiz_accuracy_f::binary-size(4),vert_accuracy_f::binary-size(4)>>), do: {:ok, %APM.Message.WindCov{time_usec: time_usec_f, wind_x: unpack_float(wind_x_f), wind_y: unpack_float(wind_y_f), wind_z: unpack_float(wind_z_f), var_horiz: unpack_float(var_horiz_f), var_vert: unpack_float(var_vert_f), wind_alt: unpack_float(wind_alt_f), horiz_accuracy: unpack_float(horiz_accuracy_f), vert_accuracy: unpack_float(vert_accuracy_f)}}
  def unpack(232, 1, <<time_usec_f::little-integer-size(64),time_week_ms_f::little-integer-size(32),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),alt_f::binary-size(4),hdop_f::binary-size(4),vdop_f::binary-size(4),vn_f::binary-size(4),ve_f::binary-size(4),vd_f::binary-size(4),speed_accuracy_f::binary-size(4),horiz_accuracy_f::binary-size(4),vert_accuracy_f::binary-size(4),ignore_flags_f::little-integer-size(16),time_week_f::little-integer-size(16),gps_id_f::integer-size(8),fix_type_f::integer-size(8),satellites_visible_f::integer-size(8)>>), do: {:ok, %APM.Message.GpsInput{time_usec: time_usec_f, time_week_ms: time_week_ms_f, lat: lat_f, lon: lon_f, alt: unpack_float(alt_f), hdop: unpack_float(hdop_f), vdop: unpack_float(vdop_f), vn: unpack_float(vn_f), ve: unpack_float(ve_f), vd: unpack_float(vd_f), speed_accuracy: unpack_float(speed_accuracy_f), horiz_accuracy: unpack_float(horiz_accuracy_f), vert_accuracy: unpack_float(vert_accuracy_f), ignore_flags: unpack_bitmask(ignore_flags_f, :gps_input_ignore_flags, &decode/2), time_week: time_week_f, gps_id: gps_id_f, fix_type: fix_type_f, satellites_visible: satellites_visible_f}}
  def unpack(232, 2, <<time_usec_f::little-integer-size(64),time_week_ms_f::little-integer-size(32),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),alt_f::binary-size(4),hdop_f::binary-size(4),vdop_f::binary-size(4),vn_f::binary-size(4),ve_f::binary-size(4),vd_f::binary-size(4),speed_accuracy_f::binary-size(4),horiz_accuracy_f::binary-size(4),vert_accuracy_f::binary-size(4),ignore_flags_f::little-integer-size(16),time_week_f::little-integer-size(16),gps_id_f::integer-size(8),fix_type_f::integer-size(8),satellites_visible_f::integer-size(8),yaw_f::little-integer-size(16)>>), do: {:ok, %APM.Message.GpsInput{time_usec: time_usec_f, time_week_ms: time_week_ms_f, lat: lat_f, lon: lon_f, alt: unpack_float(alt_f), hdop: unpack_float(hdop_f), vdop: unpack_float(vdop_f), vn: unpack_float(vn_f), ve: unpack_float(ve_f), vd: unpack_float(vd_f), speed_accuracy: unpack_float(speed_accuracy_f), horiz_accuracy: unpack_float(horiz_accuracy_f), vert_accuracy: unpack_float(vert_accuracy_f), ignore_flags: unpack_bitmask(ignore_flags_f, :gps_input_ignore_flags, &decode/2), time_week: time_week_f, gps_id: gps_id_f, fix_type: fix_type_f, satellites_visible: satellites_visible_f,yaw: yaw_f}}
  def unpack(233, _, <<flags_f::integer-size(8),len_f::integer-size(8),data_f::binary-size(180)>>), do: {:ok, %APM.Message.GpsRtcmData{flags: flags_f, len: len_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(234, _, <<custom_mode_f::little-integer-size(32),latitude_f::little-signed-integer-size(32),longitude_f::little-signed-integer-size(32),roll_f::little-signed-integer-size(16),pitch_f::little-signed-integer-size(16),heading_f::little-integer-size(16),heading_sp_f::little-signed-integer-size(16),altitude_amsl_f::little-signed-integer-size(16),altitude_sp_f::little-signed-integer-size(16),wp_distance_f::little-integer-size(16),base_mode_f::integer-size(8),landed_state_f::integer-size(8),throttle_f::signed-integer-size(8),airspeed_f::integer-size(8),airspeed_sp_f::integer-size(8),groundspeed_f::integer-size(8),climb_rate_f::signed-integer-size(8),gps_nsat_f::integer-size(8),gps_fix_type_f::integer-size(8),battery_remaining_f::integer-size(8),temperature_f::signed-integer-size(8),temperature_air_f::signed-integer-size(8),failsafe_f::integer-size(8),wp_num_f::integer-size(8)>>), do: {:ok, %APM.Message.HighLatency{custom_mode: custom_mode_f, latitude: latitude_f, longitude: longitude_f, roll: roll_f, pitch: pitch_f, heading: heading_f, heading_sp: heading_sp_f, altitude_amsl: altitude_amsl_f, altitude_sp: altitude_sp_f, wp_distance: wp_distance_f, base_mode: unpack_bitmask(base_mode_f, :mav_mode_flag, &decode/2), landed_state: decode(landed_state_f, :mav_landed_state), throttle: throttle_f, airspeed: airspeed_f, airspeed_sp: airspeed_sp_f, groundspeed: groundspeed_f, climb_rate: climb_rate_f, gps_nsat: gps_nsat_f, gps_fix_type: decode(gps_fix_type_f, :gps_fix_type), battery_remaining: battery_remaining_f, temperature: temperature_f, temperature_air: temperature_air_f, failsafe: failsafe_f, wp_num: wp_num_f}}
  def unpack(235, _, <<timestamp_f::little-integer-size(32),latitude_f::little-signed-integer-size(32),longitude_f::little-signed-integer-size(32),custom_mode_f::little-integer-size(16),altitude_f::little-signed-integer-size(16),target_altitude_f::little-signed-integer-size(16),target_distance_f::little-integer-size(16),wp_num_f::little-integer-size(16),failure_flags_f::little-integer-size(16),type_f::integer-size(8),autopilot_f::integer-size(8),heading_f::integer-size(8),target_heading_f::integer-size(8),throttle_f::integer-size(8),airspeed_f::integer-size(8),airspeed_sp_f::integer-size(8),groundspeed_f::integer-size(8),windspeed_f::integer-size(8),wind_heading_f::integer-size(8),eph_f::integer-size(8),epv_f::integer-size(8),temperature_air_f::signed-integer-size(8),climb_rate_f::signed-integer-size(8),battery_f::signed-integer-size(8),custom0_f::signed-integer-size(8),custom1_f::signed-integer-size(8),custom2_f::signed-integer-size(8)>>), do: {:ok, %APM.Message.HighLatency2{timestamp: timestamp_f, latitude: latitude_f, longitude: longitude_f, custom_mode: custom_mode_f, altitude: altitude_f, target_altitude: target_altitude_f, target_distance: target_distance_f, wp_num: wp_num_f, failure_flags: unpack_bitmask(failure_flags_f, :hl_failure_flag, &decode/2), type: decode(type_f, :mav_type), autopilot: decode(autopilot_f, :mav_autopilot), heading: heading_f, target_heading: target_heading_f, throttle: throttle_f, airspeed: airspeed_f, airspeed_sp: airspeed_sp_f, groundspeed: groundspeed_f, windspeed: windspeed_f, wind_heading: wind_heading_f, eph: eph_f, epv: epv_f, temperature_air: temperature_air_f, climb_rate: climb_rate_f, battery: battery_f, custom0: custom0_f, custom1: custom1_f, custom2: custom2_f}}
  def unpack(241, _, <<time_usec_f::little-integer-size(64),vibration_x_f::binary-size(4),vibration_y_f::binary-size(4),vibration_z_f::binary-size(4),clipping_0_f::little-integer-size(32),clipping_1_f::little-integer-size(32),clipping_2_f::little-integer-size(32)>>), do: {:ok, %APM.Message.Vibration{time_usec: time_usec_f, vibration_x: unpack_float(vibration_x_f), vibration_y: unpack_float(vibration_y_f), vibration_z: unpack_float(vibration_z_f), clipping_0: clipping_0_f, clipping_1: clipping_1_f, clipping_2: clipping_2_f}}
  def unpack(242, 1, <<latitude_f::little-signed-integer-size(32),longitude_f::little-signed-integer-size(32),altitude_f::little-signed-integer-size(32),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),q_f::binary-size(16),approach_x_f::binary-size(4),approach_y_f::binary-size(4),approach_z_f::binary-size(4)>>), do: {:ok, %APM.Message.HomePosition{latitude: latitude_f, longitude: longitude_f, altitude: altitude_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), q: unpack_array(q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), approach_x: unpack_float(approach_x_f), approach_y: unpack_float(approach_y_f), approach_z: unpack_float(approach_z_f)}}
  def unpack(242, 2, <<latitude_f::little-signed-integer-size(32),longitude_f::little-signed-integer-size(32),altitude_f::little-signed-integer-size(32),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),q_f::binary-size(16),approach_x_f::binary-size(4),approach_y_f::binary-size(4),approach_z_f::binary-size(4),time_usec_f::little-integer-size(64)>>), do: {:ok, %APM.Message.HomePosition{latitude: latitude_f, longitude: longitude_f, altitude: altitude_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), q: unpack_array(q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), approach_x: unpack_float(approach_x_f), approach_y: unpack_float(approach_y_f), approach_z: unpack_float(approach_z_f),time_usec: time_usec_f}}
  def unpack(243, 1, <<latitude_f::little-signed-integer-size(32),longitude_f::little-signed-integer-size(32),altitude_f::little-signed-integer-size(32),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),q_f::binary-size(16),approach_x_f::binary-size(4),approach_y_f::binary-size(4),approach_z_f::binary-size(4),target_system_f::integer-size(8)>>), do: {:ok, %APM.Message.SetHomePosition{latitude: latitude_f, longitude: longitude_f, altitude: altitude_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), q: unpack_array(q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), approach_x: unpack_float(approach_x_f), approach_y: unpack_float(approach_y_f), approach_z: unpack_float(approach_z_f), target_system: target_system_f}}
  def unpack(243, 2, <<latitude_f::little-signed-integer-size(32),longitude_f::little-signed-integer-size(32),altitude_f::little-signed-integer-size(32),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),q_f::binary-size(16),approach_x_f::binary-size(4),approach_y_f::binary-size(4),approach_z_f::binary-size(4),target_system_f::integer-size(8),time_usec_f::little-integer-size(64)>>), do: {:ok, %APM.Message.SetHomePosition{latitude: latitude_f, longitude: longitude_f, altitude: altitude_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), q: unpack_array(q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), approach_x: unpack_float(approach_x_f), approach_y: unpack_float(approach_y_f), approach_z: unpack_float(approach_z_f), target_system: target_system_f,time_usec: time_usec_f}}
  def unpack(244, _, <<interval_us_f::little-signed-integer-size(32),message_id_f::little-integer-size(16)>>), do: {:ok, %APM.Message.MessageInterval{interval_us: interval_us_f, message_id: message_id_f}}
  def unpack(245, _, <<vtol_state_f::integer-size(8),landed_state_f::integer-size(8)>>), do: {:ok, %APM.Message.ExtendedSysState{vtol_state: decode(vtol_state_f, :mav_vtol_state), landed_state: decode(landed_state_f, :mav_landed_state)}}
  def unpack(246, _, <<icao_address_f::little-integer-size(32),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),altitude_f::little-signed-integer-size(32),heading_f::little-integer-size(16),hor_velocity_f::little-integer-size(16),ver_velocity_f::little-signed-integer-size(16),flags_f::little-integer-size(16),squawk_f::little-integer-size(16),altitude_type_f::integer-size(8),callsign_f::binary-size(9),emitter_type_f::integer-size(8),tslc_f::integer-size(8)>>), do: {:ok, %APM.Message.AdsbVehicle{icao_address: icao_address_f, lat: lat_f, lon: lon_f, altitude: altitude_f, heading: heading_f, hor_velocity: hor_velocity_f, ver_velocity: ver_velocity_f, flags: unpack_bitmask(flags_f, :adsb_flags, &decode/2), squawk: squawk_f, altitude_type: decode(altitude_type_f, :adsb_altitude_type), callsign: replace_trailing(callsign_f, <<0>>, ""), emitter_type: decode(emitter_type_f, :adsb_emitter_type), tslc: tslc_f}}
  def unpack(247, _, <<id_f::little-integer-size(32),time_to_minimum_delta_f::binary-size(4),altitude_minimum_delta_f::binary-size(4),horizontal_minimum_delta_f::binary-size(4),src_f::integer-size(8),action_f::integer-size(8),threat_level_f::integer-size(8)>>), do: {:ok, %APM.Message.Collision{id: id_f, time_to_minimum_delta: unpack_float(time_to_minimum_delta_f), altitude_minimum_delta: unpack_float(altitude_minimum_delta_f), horizontal_minimum_delta: unpack_float(horizontal_minimum_delta_f), src: decode(src_f, :mav_collision_src), action: decode(action_f, :mav_collision_action), threat_level: decode(threat_level_f, :mav_collision_threat_level)}}
  def unpack(248, _, <<message_type_f::little-integer-size(16),target_network_f::integer-size(8),target_system_f::integer-size(8),target_component_f::integer-size(8),payload_f::binary-size(249)>>), do: {:ok, %APM.Message.V2Extension{message_type: message_type_f, target_network: target_network_f, target_system: target_system_f, target_component: target_component_f, payload: unpack_array(payload_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(249, _, <<address_f::little-integer-size(16),ver_f::integer-size(8),type_f::integer-size(8),value_f::binary-size(32)>>), do: {:ok, %APM.Message.MemoryVect{address: address_f, ver: ver_f, type: type_f, value: unpack_array(value_f, fn(<<elem::signed-integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(250, _, <<time_usec_f::little-integer-size(64),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),name_f::binary-size(10)>>), do: {:ok, %APM.Message.DebugVect{time_usec: time_usec_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), name: replace_trailing(name_f, <<0>>, "")}}
  def unpack(251, _, <<time_boot_ms_f::little-integer-size(32),value_f::binary-size(4),name_f::binary-size(10)>>), do: {:ok, %APM.Message.NamedValueFloat{time_boot_ms: time_boot_ms_f, value: unpack_float(value_f), name: replace_trailing(name_f, <<0>>, "")}}
  def unpack(252, _, <<time_boot_ms_f::little-integer-size(32),value_f::little-signed-integer-size(32),name_f::binary-size(10)>>), do: {:ok, %APM.Message.NamedValueInt{time_boot_ms: time_boot_ms_f, value: value_f, name: replace_trailing(name_f, <<0>>, "")}}
  def unpack(253, 1, <<severity_f::integer-size(8),text_f::binary-size(50)>>), do: {:ok, %APM.Message.Statustext{severity: decode(severity_f, :mav_severity), text: replace_trailing(text_f, <<0>>, "")}}
  def unpack(253, 2, <<severity_f::integer-size(8),text_f::binary-size(50),id_f::little-integer-size(16),chunk_seq_f::integer-size(8)>>), do: {:ok, %APM.Message.Statustext{severity: decode(severity_f, :mav_severity), text: replace_trailing(text_f, <<0>>, ""),id: id_f, chunk_seq: chunk_seq_f}}
  def unpack(254, _, <<time_boot_ms_f::little-integer-size(32),value_f::binary-size(4),ind_f::integer-size(8)>>), do: {:ok, %APM.Message.Debug{time_boot_ms: time_boot_ms_f, value: unpack_float(value_f), ind: ind_f}}
  def unpack(256, _, <<initial_timestamp_f::little-integer-size(64),target_system_f::integer-size(8),target_component_f::integer-size(8),secret_key_f::binary-size(32)>>), do: {:ok, %APM.Message.SetupSigning{initial_timestamp: initial_timestamp_f, target_system: target_system_f, target_component: target_component_f, secret_key: unpack_array(secret_key_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(257, _, <<time_boot_ms_f::little-integer-size(32),last_change_ms_f::little-integer-size(32),state_f::integer-size(8)>>), do: {:ok, %APM.Message.ButtonChange{time_boot_ms: time_boot_ms_f, last_change_ms: last_change_ms_f, state: state_f}}
  def unpack(258, 1, <<target_system_f::integer-size(8),target_component_f::integer-size(8),tune_f::binary-size(30)>>), do: {:ok, %APM.Message.PlayTune{target_system: target_system_f, target_component: target_component_f, tune: replace_trailing(tune_f, <<0>>, "")}}
  def unpack(258, 2, <<target_system_f::integer-size(8),target_component_f::integer-size(8),tune_f::binary-size(30),tune2_f::binary-size(200)>>), do: {:ok, %APM.Message.PlayTune{target_system: target_system_f, target_component: target_component_f, tune: replace_trailing(tune_f, <<0>>, ""),tune2: replace_trailing(tune2_f, <<0>>, "")}}
  def unpack(259, _, <<time_boot_ms_f::little-integer-size(32),firmware_version_f::little-integer-size(32),focal_length_f::binary-size(4),sensor_size_h_f::binary-size(4),sensor_size_v_f::binary-size(4),flags_f::little-integer-size(32),resolution_h_f::little-integer-size(16),resolution_v_f::little-integer-size(16),cam_definition_version_f::little-integer-size(16),vendor_name_f::binary-size(32),model_name_f::binary-size(32),lens_id_f::integer-size(8),cam_definition_uri_f::binary-size(140)>>), do: {:ok, %APM.Message.CameraInformation{time_boot_ms: time_boot_ms_f, firmware_version: firmware_version_f, focal_length: unpack_float(focal_length_f), sensor_size_h: unpack_float(sensor_size_h_f), sensor_size_v: unpack_float(sensor_size_v_f), flags: unpack_bitmask(flags_f, :camera_cap_flags, &decode/2), resolution_h: resolution_h_f, resolution_v: resolution_v_f, cam_definition_version: cam_definition_version_f, vendor_name: unpack_array(vendor_name_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end), model_name: unpack_array(model_name_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end), lens_id: lens_id_f, cam_definition_uri: replace_trailing(cam_definition_uri_f, <<0>>, "")}}
  def unpack(260, 1, <<time_boot_ms_f::little-integer-size(32),mode_id_f::integer-size(8)>>), do: {:ok, %APM.Message.CameraSettings{time_boot_ms: time_boot_ms_f, mode_id: decode(mode_id_f, :camera_mode)}}
  def unpack(260, 2, <<time_boot_ms_f::little-integer-size(32),mode_id_f::integer-size(8),zoomlevel_f::binary-size(4),focuslevel_f::binary-size(4)>>), do: {:ok, %APM.Message.CameraSettings{time_boot_ms: time_boot_ms_f, mode_id: decode(mode_id_f, :camera_mode),zoomlevel: unpack_float(zoomlevel_f), focuslevel: unpack_float(focuslevel_f)}}
  def unpack(261, _, <<time_boot_ms_f::little-integer-size(32),total_capacity_f::binary-size(4),used_capacity_f::binary-size(4),available_capacity_f::binary-size(4),read_speed_f::binary-size(4),write_speed_f::binary-size(4),storage_id_f::integer-size(8),storage_count_f::integer-size(8),status_f::integer-size(8)>>), do: {:ok, %APM.Message.StorageInformation{time_boot_ms: time_boot_ms_f, total_capacity: unpack_float(total_capacity_f), used_capacity: unpack_float(used_capacity_f), available_capacity: unpack_float(available_capacity_f), read_speed: unpack_float(read_speed_f), write_speed: unpack_float(write_speed_f), storage_id: storage_id_f, storage_count: storage_count_f, status: decode(status_f, :storage_status)}}
  def unpack(262, 1, <<time_boot_ms_f::little-integer-size(32),image_interval_f::binary-size(4),recording_time_ms_f::little-integer-size(32),available_capacity_f::binary-size(4),image_status_f::integer-size(8),video_status_f::integer-size(8)>>), do: {:ok, %APM.Message.CameraCaptureStatus{time_boot_ms: time_boot_ms_f, image_interval: unpack_float(image_interval_f), recording_time_ms: recording_time_ms_f, available_capacity: unpack_float(available_capacity_f), image_status: image_status_f, video_status: video_status_f}}
  def unpack(262, 2, <<time_boot_ms_f::little-integer-size(32),image_interval_f::binary-size(4),recording_time_ms_f::little-integer-size(32),available_capacity_f::binary-size(4),image_status_f::integer-size(8),video_status_f::integer-size(8),image_count_f::little-signed-integer-size(32)>>), do: {:ok, %APM.Message.CameraCaptureStatus{time_boot_ms: time_boot_ms_f, image_interval: unpack_float(image_interval_f), recording_time_ms: recording_time_ms_f, available_capacity: unpack_float(available_capacity_f), image_status: image_status_f, video_status: video_status_f,image_count: image_count_f}}
  def unpack(263, _, <<time_utc_f::little-integer-size(64),time_boot_ms_f::little-integer-size(32),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),alt_f::little-signed-integer-size(32),relative_alt_f::little-signed-integer-size(32),q_f::binary-size(16),image_index_f::little-signed-integer-size(32),camera_id_f::integer-size(8),capture_result_f::signed-integer-size(8),file_url_f::binary-size(205)>>), do: {:ok, %APM.Message.CameraImageCaptured{time_utc: time_utc_f, time_boot_ms: time_boot_ms_f, lat: lat_f, lon: lon_f, alt: alt_f, relative_alt: relative_alt_f, q: unpack_array(q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), image_index: image_index_f, camera_id: camera_id_f, capture_result: capture_result_f, file_url: replace_trailing(file_url_f, <<0>>, "")}}
  def unpack(264, _, <<arming_time_utc_f::little-integer-size(64),takeoff_time_utc_f::little-integer-size(64),flight_uuid_f::little-integer-size(64),time_boot_ms_f::little-integer-size(32)>>), do: {:ok, %APM.Message.FlightInformation{arming_time_utc: arming_time_utc_f, takeoff_time_utc: takeoff_time_utc_f, flight_uuid: flight_uuid_f, time_boot_ms: time_boot_ms_f}}
  def unpack(265, 1, <<time_boot_ms_f::little-integer-size(32),roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4)>>), do: {:ok, %APM.Message.MountOrientation{time_boot_ms: time_boot_ms_f, roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f)}}
  def unpack(265, 2, <<time_boot_ms_f::little-integer-size(32),roll_f::binary-size(4),pitch_f::binary-size(4),yaw_f::binary-size(4),yaw_absolute_f::binary-size(4)>>), do: {:ok, %APM.Message.MountOrientation{time_boot_ms: time_boot_ms_f, roll: unpack_float(roll_f), pitch: unpack_float(pitch_f), yaw: unpack_float(yaw_f),yaw_absolute: unpack_float(yaw_absolute_f)}}
  def unpack(266, _, <<sequence_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),length_f::integer-size(8),first_message_offset_f::integer-size(8),data_f::binary-size(249)>>), do: {:ok, %APM.Message.LoggingData{sequence: sequence_f, target_system: target_system_f, target_component: target_component_f, length: length_f, first_message_offset: first_message_offset_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(267, _, <<sequence_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8),length_f::integer-size(8),first_message_offset_f::integer-size(8),data_f::binary-size(249)>>), do: {:ok, %APM.Message.LoggingDataAcked{sequence: sequence_f, target_system: target_system_f, target_component: target_component_f, length: length_f, first_message_offset: first_message_offset_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(268, _, <<sequence_f::little-integer-size(16),target_system_f::integer-size(8),target_component_f::integer-size(8)>>), do: {:ok, %APM.Message.LoggingAck{sequence: sequence_f, target_system: target_system_f, target_component: target_component_f}}
  def unpack(269, _, <<framerate_f::binary-size(4),bitrate_f::little-integer-size(32),flags_f::little-integer-size(16),resolution_h_f::little-integer-size(16),resolution_v_f::little-integer-size(16),rotation_f::little-integer-size(16),hfov_f::little-integer-size(16),stream_id_f::integer-size(8),count_f::integer-size(8),type_f::integer-size(8),name_f::binary-size(32),uri_f::binary-size(160)>>), do: {:ok, %APM.Message.VideoStreamInformation{framerate: unpack_float(framerate_f), bitrate: bitrate_f, flags: decode(flags_f, :video_stream_status_flags), resolution_h: resolution_h_f, resolution_v: resolution_v_f, rotation: rotation_f, hfov: hfov_f, stream_id: stream_id_f, count: count_f, type: decode(type_f, :video_stream_type), name: replace_trailing(name_f, <<0>>, ""), uri: replace_trailing(uri_f, <<0>>, "")}}
  def unpack(270, _, <<framerate_f::binary-size(4),bitrate_f::little-integer-size(32),flags_f::little-integer-size(16),resolution_h_f::little-integer-size(16),resolution_v_f::little-integer-size(16),rotation_f::little-integer-size(16),hfov_f::little-integer-size(16),stream_id_f::integer-size(8)>>), do: {:ok, %APM.Message.VideoStreamStatus{framerate: unpack_float(framerate_f), bitrate: bitrate_f, flags: decode(flags_f, :video_stream_status_flags), resolution_h: resolution_h_f, resolution_v: resolution_v_f, rotation: rotation_f, hfov: hfov_f, stream_id: stream_id_f}}
  def unpack(299, _, <<ssid_f::binary-size(32),password_f::binary-size(64)>>), do: {:ok, %APM.Message.WifiConfigAp{ssid: replace_trailing(ssid_f, <<0>>, ""), password: replace_trailing(password_f, <<0>>, "")}}
  def unpack(301, _, <<mmsi_f::little-integer-size(32),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),cog_f::little-integer-size(16),heading_f::little-integer-size(16),velocity_f::little-integer-size(16),dimension_bow_f::little-integer-size(16),dimension_stern_f::little-integer-size(16),tslc_f::little-integer-size(16),flags_f::little-integer-size(16),turn_rate_f::signed-integer-size(8),navigational_status_f::integer-size(8),type_f::integer-size(8),dimension_port_f::integer-size(8),dimension_starboard_f::integer-size(8),callsign_f::binary-size(7),name_f::binary-size(20)>>), do: {:ok, %APM.Message.AisVessel{mmsi: mmsi_f, lat: lat_f, lon: lon_f, cog: cog_f, heading: heading_f, velocity: velocity_f, dimension_bow: dimension_bow_f, dimension_stern: dimension_stern_f, tslc: tslc_f, flags: unpack_bitmask(flags_f, :ais_flags, &decode/2), turn_rate: turn_rate_f, navigational_status: decode(navigational_status_f, :ais_nav_status), type: decode(type_f, :ais_type), dimension_port: dimension_port_f, dimension_starboard: dimension_starboard_f, callsign: replace_trailing(callsign_f, <<0>>, ""), name: replace_trailing(name_f, <<0>>, "")}}
  def unpack(310, _, <<time_usec_f::little-integer-size(64),uptime_sec_f::little-integer-size(32),vendor_specific_status_code_f::little-integer-size(16),health_f::integer-size(8),mode_f::integer-size(8),sub_mode_f::integer-size(8)>>), do: {:ok, %APM.Message.UavcanNodeStatus{time_usec: time_usec_f, uptime_sec: uptime_sec_f, vendor_specific_status_code: vendor_specific_status_code_f, health: decode(health_f, :uavcan_node_health), mode: decode(mode_f, :uavcan_node_mode), sub_mode: sub_mode_f}}
  def unpack(311, _, <<time_usec_f::little-integer-size(64),uptime_sec_f::little-integer-size(32),sw_vcs_commit_f::little-integer-size(32),name_f::binary-size(80),hw_version_major_f::integer-size(8),hw_version_minor_f::integer-size(8),hw_unique_id_f::binary-size(16),sw_version_major_f::integer-size(8),sw_version_minor_f::integer-size(8)>>), do: {:ok, %APM.Message.UavcanNodeInfo{time_usec: time_usec_f, uptime_sec: uptime_sec_f, sw_vcs_commit: sw_vcs_commit_f, name: replace_trailing(name_f, <<0>>, ""), hw_version_major: hw_version_major_f, hw_version_minor: hw_version_minor_f, hw_unique_id: unpack_array(hw_unique_id_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end), sw_version_major: sw_version_major_f, sw_version_minor: sw_version_minor_f}}
  def unpack(330, 1, <<time_usec_f::little-integer-size(64),distances_f::binary-size(144),min_distance_f::little-integer-size(16),max_distance_f::little-integer-size(16),sensor_type_f::integer-size(8),increment_f::integer-size(8)>>), do: {:ok, %APM.Message.ObstacleDistance{time_usec: time_usec_f, distances: unpack_array(distances_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), min_distance: min_distance_f, max_distance: max_distance_f, sensor_type: decode(sensor_type_f, :mav_distance_sensor), increment: increment_f}}
  def unpack(330, 2, <<time_usec_f::little-integer-size(64),distances_f::binary-size(144),min_distance_f::little-integer-size(16),max_distance_f::little-integer-size(16),sensor_type_f::integer-size(8),increment_f::integer-size(8),increment_f_f::binary-size(4),angle_offset_f::binary-size(4),frame_f::integer-size(8)>>), do: {:ok, %APM.Message.ObstacleDistance{time_usec: time_usec_f, distances: unpack_array(distances_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), min_distance: min_distance_f, max_distance: max_distance_f, sensor_type: decode(sensor_type_f, :mav_distance_sensor), increment: increment_f,increment_f: unpack_float(increment_f_f), angle_offset: unpack_float(angle_offset_f), frame: decode(frame_f, :mav_frame)}}
  def unpack(331, 1, <<time_usec_f::little-integer-size(64),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),q_f::binary-size(16),vx_f::binary-size(4),vy_f::binary-size(4),vz_f::binary-size(4),rollspeed_f::binary-size(4),pitchspeed_f::binary-size(4),yawspeed_f::binary-size(4),pose_covariance_f::binary-size(84),velocity_covariance_f::binary-size(84),frame_id_f::integer-size(8),child_frame_id_f::integer-size(8)>>), do: {:ok, %APM.Message.Odometry{time_usec: time_usec_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), q: unpack_array(q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), vx: unpack_float(vx_f), vy: unpack_float(vy_f), vz: unpack_float(vz_f), rollspeed: unpack_float(rollspeed_f), pitchspeed: unpack_float(pitchspeed_f), yawspeed: unpack_float(yawspeed_f), pose_covariance: unpack_array(pose_covariance_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), velocity_covariance: unpack_array(velocity_covariance_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), frame_id: decode(frame_id_f, :mav_frame), child_frame_id: decode(child_frame_id_f, :mav_frame)}}
  def unpack(331, 2, <<time_usec_f::little-integer-size(64),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),q_f::binary-size(16),vx_f::binary-size(4),vy_f::binary-size(4),vz_f::binary-size(4),rollspeed_f::binary-size(4),pitchspeed_f::binary-size(4),yawspeed_f::binary-size(4),pose_covariance_f::binary-size(84),velocity_covariance_f::binary-size(84),frame_id_f::integer-size(8),child_frame_id_f::integer-size(8),reset_counter_f::integer-size(8),estimator_type_f::integer-size(8)>>), do: {:ok, %APM.Message.Odometry{time_usec: time_usec_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), q: unpack_array(q_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), vx: unpack_float(vx_f), vy: unpack_float(vy_f), vz: unpack_float(vz_f), rollspeed: unpack_float(rollspeed_f), pitchspeed: unpack_float(pitchspeed_f), yawspeed: unpack_float(yawspeed_f), pose_covariance: unpack_array(pose_covariance_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), velocity_covariance: unpack_array(velocity_covariance_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), frame_id: decode(frame_id_f, :mav_frame), child_frame_id: decode(child_frame_id_f, :mav_frame),reset_counter: reset_counter_f, estimator_type: decode(estimator_type_f, :mav_estimator_type)}}
  def unpack(335, _, <<timestamp_f::little-integer-size(64),last_heartbeat_f::little-integer-size(64),failed_sessions_f::little-integer-size(16),successful_sessions_f::little-integer-size(16),signal_quality_f::integer-size(8),ring_pending_f::integer-size(8),tx_session_pending_f::integer-size(8),rx_session_pending_f::integer-size(8)>>), do: {:ok, %APM.Message.IsbdLinkStatus{timestamp: timestamp_f, last_heartbeat: last_heartbeat_f, failed_sessions: failed_sessions_f, successful_sessions: successful_sessions_f, signal_quality: signal_quality_f, ring_pending: ring_pending_f, tx_session_pending: tx_session_pending_f, rx_session_pending: rx_session_pending_f}}
  def unpack(339, _, <<frequency_f::binary-size(4),index_f::integer-size(8)>>), do: {:ok, %APM.Message.RawRpm{frequency: unpack_float(frequency_f), index: index_f}}
  def unpack(340, _, <<time_f::little-integer-size(64),lat_f::little-signed-integer-size(32),lon_f::little-signed-integer-size(32),alt_f::little-signed-integer-size(32),relative_alt_f::little-signed-integer-size(32),next_lat_f::little-signed-integer-size(32),next_lon_f::little-signed-integer-size(32),next_alt_f::little-signed-integer-size(32),vx_f::little-signed-integer-size(16),vy_f::little-signed-integer-size(16),vz_f::little-signed-integer-size(16),h_acc_f::little-integer-size(16),v_acc_f::little-integer-size(16),vel_acc_f::little-integer-size(16),update_rate_f::little-integer-size(16),uas_id_f::binary-size(18),flight_state_f::integer-size(8),flags_f::integer-size(8)>>), do: {:ok, %APM.Message.UtmGlobalPosition{time: time_f, lat: lat_f, lon: lon_f, alt: alt_f, relative_alt: relative_alt_f, next_lat: next_lat_f, next_lon: next_lon_f, next_alt: next_alt_f, vx: vx_f, vy: vy_f, vz: vz_f, h_acc: h_acc_f, v_acc: v_acc_f, vel_acc: vel_acc_f, update_rate: update_rate_f, uas_id: unpack_array(uas_id_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end), flight_state: decode(flight_state_f, :utm_flight_state), flags: unpack_bitmask(flags_f, :utm_data_avail_flags, &decode/2)}}
  def unpack(350, 1, <<time_usec_f::little-integer-size(64),array_id_f::little-integer-size(16),name_f::binary-size(10)>>), do: {:ok, %APM.Message.DebugFloatArray{time_usec: time_usec_f, array_id: array_id_f, name: replace_trailing(name_f, <<0>>, "")}}
  def unpack(350, 2, <<time_usec_f::little-integer-size(64),array_id_f::little-integer-size(16),name_f::binary-size(10),data_f::binary-size(232)>>), do: {:ok, %APM.Message.DebugFloatArray{time_usec: time_usec_f, array_id: array_id_f, name: replace_trailing(name_f, <<0>>, ""),data: unpack_array(data_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(373, _, <<status_f::little-integer-size(64),battery_current_f::binary-size(4),load_current_f::binary-size(4),power_generated_f::binary-size(4),bus_voltage_f::binary-size(4),bat_current_setpoint_f::binary-size(4),runtime_f::little-integer-size(32),time_until_maintenance_f::little-signed-integer-size(32),generator_speed_f::little-integer-size(16),rectifier_temperature_f::little-signed-integer-size(16),generator_temperature_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.GeneratorStatus{status: unpack_bitmask(status_f, :mav_generator_status_flag, &decode/2), battery_current: unpack_float(battery_current_f), load_current: unpack_float(load_current_f), power_generated: unpack_float(power_generated_f), bus_voltage: unpack_float(bus_voltage_f), bat_current_setpoint: unpack_float(bat_current_setpoint_f), runtime: runtime_f, time_until_maintenance: time_until_maintenance_f, generator_speed: generator_speed_f, rectifier_temperature: rectifier_temperature_f, generator_temperature: generator_temperature_f}}
  def unpack(375, _, <<time_usec_f::little-integer-size(64),active_f::little-integer-size(32),actuator_f::binary-size(128)>>), do: {:ok, %APM.Message.ActuatorOutputStatus{time_usec: time_usec_f, active: active_f, actuator: unpack_array(actuator_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(9000, _, <<time_usec_f::little-integer-size(64),distance_f::binary-size(128),count_f::integer-size(8)>>), do: {:ok, %APM.Message.WheelDistance{time_usec: time_usec_f, distance: unpack_array(distance_f, fn(<<elem::binary-size(8),rest::binary>>) ->  {elem, rest} end), count: count_f}}
  def unpack(9005, _, <<time_usec_f::little-integer-size(64),line_length_f::binary-size(4),speed_f::binary-size(4),tension_f::binary-size(4),voltage_f::binary-size(4),current_f::binary-size(4),status_f::little-integer-size(32),temperature_f::little-signed-integer-size(16)>>), do: {:ok, %APM.Message.WinchStatus{time_usec: time_usec_f, line_length: unpack_float(line_length_f), speed: unpack_float(speed_f), tension: unpack_float(tension_f), voltage: unpack_float(voltage_f), current: unpack_float(current_f), status: unpack_bitmask(status_f, :mav_winch_status_flag, &decode/2), temperature: temperature_f}}
  def unpack(10001, _, <<icao_f::little-integer-size(32),stallspeed_f::little-integer-size(16),callsign_f::binary-size(9),emittertype_f::integer-size(8),aircraftsize_f::integer-size(8),gpsoffsetlat_f::integer-size(8),gpsoffsetlon_f::integer-size(8),rfselect_f::integer-size(8)>>), do: {:ok, %APM.Message.UavionixAdsbOutCfg{icao: icao_f, stallspeed: stallspeed_f, callsign: replace_trailing(callsign_f, <<0>>, ""), emittertype: decode(emittertype_f, :adsb_emitter_type), aircraftsize: decode(aircraftsize_f, :uavionix_adsb_out_cfg_aircraft_size), gpsoffsetlat: decode(gpsoffsetlat_f, :uavionix_adsb_out_cfg_gps_offset_lat), gpsoffsetlon: decode(gpsoffsetlon_f, :uavionix_adsb_out_cfg_gps_offset_lon), rfselect: unpack_bitmask(rfselect_f, :uavionix_adsb_out_rf_select, &decode/2)}}
  def unpack(10002, _, <<utctime_f::little-integer-size(32),gpslat_f::little-signed-integer-size(32),gpslon_f::little-signed-integer-size(32),gpsalt_f::little-signed-integer-size(32),baroaltmsl_f::little-signed-integer-size(32),accuracyhor_f::little-integer-size(32),accuracyvert_f::little-integer-size(16),accuracyvel_f::little-integer-size(16),velvert_f::little-signed-integer-size(16),velns_f::little-signed-integer-size(16),velew_f::little-signed-integer-size(16),state_f::little-integer-size(16),squawk_f::little-integer-size(16),gpsfix_f::integer-size(8),numsats_f::integer-size(8),emergencystatus_f::integer-size(8)>>), do: {:ok, %APM.Message.UavionixAdsbOutDynamic{utctime: utctime_f, gpslat: gpslat_f, gpslon: gpslon_f, gpsalt: gpsalt_f, baroaltmsl: baroaltmsl_f, accuracyhor: accuracyhor_f, accuracyvert: accuracyvert_f, accuracyvel: accuracyvel_f, velvert: velvert_f, velns: velns_f, velew: velew_f, state: unpack_bitmask(state_f, :uavionix_adsb_out_dynamic_state, &decode/2), squawk: squawk_f, gpsfix: decode(gpsfix_f, :uavionix_adsb_out_dynamic_gps_fix), numsats: numsats_f, emergencystatus: decode(emergencystatus_f, :uavionix_adsb_emergency_status)}}
  def unpack(10003, _, <<rfhealth_f::integer-size(8)>>), do: {:ok, %APM.Message.UavionixAdsbTransceiverHealthReport{rfhealth: unpack_bitmask(rfhealth_f, :uavionix_adsb_rf_health, &decode/2)}}
  def unpack(11000, 1, <<request_id_f::little-integer-size(32),target_system_f::integer-size(8),target_component_f::integer-size(8),bustype_f::integer-size(8),bus_f::integer-size(8),address_f::integer-size(8),busname_f::binary-size(40),regstart_f::integer-size(8),count_f::integer-size(8)>>), do: {:ok, %APM.Message.DeviceOpRead{request_id: request_id_f, target_system: target_system_f, target_component: target_component_f, bustype: decode(bustype_f, :device_op_bustype), bus: bus_f, address: address_f, busname: replace_trailing(busname_f, <<0>>, ""), regstart: regstart_f, count: count_f}}
  def unpack(11000, 2, <<request_id_f::little-integer-size(32),target_system_f::integer-size(8),target_component_f::integer-size(8),bustype_f::integer-size(8),bus_f::integer-size(8),address_f::integer-size(8),busname_f::binary-size(40),regstart_f::integer-size(8),count_f::integer-size(8),bank_f::integer-size(8)>>), do: {:ok, %APM.Message.DeviceOpRead{request_id: request_id_f, target_system: target_system_f, target_component: target_component_f, bustype: decode(bustype_f, :device_op_bustype), bus: bus_f, address: address_f, busname: replace_trailing(busname_f, <<0>>, ""), regstart: regstart_f, count: count_f,bank: bank_f}}
  def unpack(11001, 1, <<request_id_f::little-integer-size(32),result_f::integer-size(8),regstart_f::integer-size(8),count_f::integer-size(8),data_f::binary-size(128)>>), do: {:ok, %APM.Message.DeviceOpReadReply{request_id: request_id_f, result: result_f, regstart: regstart_f, count: count_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(11001, 2, <<request_id_f::little-integer-size(32),result_f::integer-size(8),regstart_f::integer-size(8),count_f::integer-size(8),data_f::binary-size(128),bank_f::integer-size(8)>>), do: {:ok, %APM.Message.DeviceOpReadReply{request_id: request_id_f, result: result_f, regstart: regstart_f, count: count_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end),bank: bank_f}}
  def unpack(11002, 1, <<request_id_f::little-integer-size(32),target_system_f::integer-size(8),target_component_f::integer-size(8),bustype_f::integer-size(8),bus_f::integer-size(8),address_f::integer-size(8),busname_f::binary-size(40),regstart_f::integer-size(8),count_f::integer-size(8),data_f::binary-size(128)>>), do: {:ok, %APM.Message.DeviceOpWrite{request_id: request_id_f, target_system: target_system_f, target_component: target_component_f, bustype: decode(bustype_f, :device_op_bustype), bus: bus_f, address: address_f, busname: replace_trailing(busname_f, <<0>>, ""), regstart: regstart_f, count: count_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(11002, 2, <<request_id_f::little-integer-size(32),target_system_f::integer-size(8),target_component_f::integer-size(8),bustype_f::integer-size(8),bus_f::integer-size(8),address_f::integer-size(8),busname_f::binary-size(40),regstart_f::integer-size(8),count_f::integer-size(8),data_f::binary-size(128),bank_f::integer-size(8)>>), do: {:ok, %APM.Message.DeviceOpWrite{request_id: request_id_f, target_system: target_system_f, target_component: target_component_f, bustype: decode(bustype_f, :device_op_bustype), bus: bus_f, address: address_f, busname: replace_trailing(busname_f, <<0>>, ""), regstart: regstart_f, count: count_f, data: unpack_array(data_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end),bank: bank_f}}
  def unpack(11003, _, <<request_id_f::little-integer-size(32),result_f::integer-size(8)>>), do: {:ok, %APM.Message.DeviceOpWriteReply{request_id: request_id_f, result: result_f}}
  def unpack(11010, _, <<desired_f::binary-size(4),achieved_f::binary-size(4),error_f::binary-size(4),theta_f::binary-size(4),omega_f::binary-size(4),sigma_f::binary-size(4),theta_dot_f::binary-size(4),omega_dot_f::binary-size(4),sigma_dot_f::binary-size(4),f_f::binary-size(4),f_dot_f::binary-size(4),u_f::binary-size(4),axis_f::integer-size(8)>>), do: {:ok, %APM.Message.AdapTuning{desired: unpack_float(desired_f), achieved: unpack_float(achieved_f), error: unpack_float(error_f), theta: unpack_float(theta_f), omega: unpack_float(omega_f), sigma: unpack_float(sigma_f), theta_dot: unpack_float(theta_dot_f), omega_dot: unpack_float(omega_dot_f), sigma_dot: unpack_float(sigma_dot_f), f: unpack_float(f_f), f_dot: unpack_float(f_dot_f), u: unpack_float(u_f), axis: decode(axis_f, :pid_tuning_axis)}}
  def unpack(11011, _, <<time_usec_f::little-integer-size(64),time_delta_usec_f::little-integer-size(64),angle_delta_f::binary-size(12),position_delta_f::binary-size(12),confidence_f::binary-size(4)>>), do: {:ok, %APM.Message.VisionPositionDelta{time_usec: time_usec_f, time_delta_usec: time_delta_usec_f, angle_delta: unpack_array(angle_delta_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), position_delta: unpack_array(position_delta_f, fn(<<elem::binary-size(4),rest::binary>>) ->  {elem, rest} end), confidence: unpack_float(confidence_f)}}
  def unpack(11020, _, <<time_usec_f::little-integer-size(64),aoa_f::binary-size(4),ssa_f::binary-size(4)>>), do: {:ok, %APM.Message.AoaSsa{time_usec: time_usec_f, aoa: unpack_float(aoa_f), ssa: unpack_float(ssa_f)}}
  def unpack(11030, _, <<voltage_f::binary-size(8),current_f::binary-size(8),totalcurrent_f::binary-size(8),rpm_f::binary-size(8),count_f::binary-size(8),temperature_f::binary-size(4)>>), do: {:ok, %APM.Message.EscTelemetry1To4{voltage: unpack_array(voltage_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), current: unpack_array(current_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), totalcurrent: unpack_array(totalcurrent_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), rpm: unpack_array(rpm_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), count: unpack_array(count_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), temperature: unpack_array(temperature_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(11031, _, <<voltage_f::binary-size(8),current_f::binary-size(8),totalcurrent_f::binary-size(8),rpm_f::binary-size(8),count_f::binary-size(8),temperature_f::binary-size(4)>>), do: {:ok, %APM.Message.EscTelemetry5To8{voltage: unpack_array(voltage_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), current: unpack_array(current_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), totalcurrent: unpack_array(totalcurrent_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), rpm: unpack_array(rpm_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), count: unpack_array(count_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), temperature: unpack_array(temperature_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(11032, _, <<voltage_f::binary-size(8),current_f::binary-size(8),totalcurrent_f::binary-size(8),rpm_f::binary-size(8),count_f::binary-size(8),temperature_f::binary-size(4)>>), do: {:ok, %APM.Message.EscTelemetry9To12{voltage: unpack_array(voltage_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), current: unpack_array(current_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), totalcurrent: unpack_array(totalcurrent_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), rpm: unpack_array(rpm_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), count: unpack_array(count_f, fn(<<elem::little-integer-size(16),rest::binary>>) ->  {elem, rest} end), temperature: unpack_array(temperature_f, fn(<<elem::integer-size(8),rest::binary>>) ->  {elem, rest} end)}}
  def unpack(11033, _, <<request_id_f::little-integer-size(32),min_value_f::binary-size(4),max_value_f::binary-size(4),increment_f::binary-size(4),target_system_f::integer-size(8),target_component_f::integer-size(8),osd_screen_f::integer-size(8),osd_index_f::integer-size(8),param_id_f::binary-size(16),config_type_f::integer-size(8)>>), do: {:ok, %APM.Message.OsdParamConfig{request_id: request_id_f, min_value: unpack_float(min_value_f), max_value: unpack_float(max_value_f), increment: unpack_float(increment_f), target_system: target_system_f, target_component: target_component_f, osd_screen: osd_screen_f, osd_index: osd_index_f, param_id: replace_trailing(param_id_f, <<0>>, ""), config_type: decode(config_type_f, :osd_param_config_type)}}
  def unpack(11034, _, <<request_id_f::little-integer-size(32),result_f::integer-size(8)>>), do: {:ok, %APM.Message.OsdParamConfigReply{request_id: request_id_f, result: decode(result_f, :osd_param_config_error)}}
  def unpack(11035, _, <<request_id_f::little-integer-size(32),target_system_f::integer-size(8),target_component_f::integer-size(8),osd_screen_f::integer-size(8),osd_index_f::integer-size(8)>>), do: {:ok, %APM.Message.OsdParamShowConfig{request_id: request_id_f, target_system: target_system_f, target_component: target_component_f, osd_screen: osd_screen_f, osd_index: osd_index_f}}
  def unpack(11036, _, <<request_id_f::little-integer-size(32),min_value_f::binary-size(4),max_value_f::binary-size(4),increment_f::binary-size(4),result_f::integer-size(8),param_id_f::binary-size(16),config_type_f::integer-size(8)>>), do: {:ok, %APM.Message.OsdParamShowConfigReply{request_id: request_id_f, min_value: unpack_float(min_value_f), max_value: unpack_float(max_value_f), increment: unpack_float(increment_f), result: decode(result_f, :osd_param_config_error), param_id: replace_trailing(param_id_f, <<0>>, ""), config_type: decode(config_type_f, :osd_param_config_type)}}
  def unpack(11037, _, <<time_boot_ms_f::little-integer-size(32),x_f::binary-size(4),y_f::binary-size(4),z_f::binary-size(4),min_distance_f::binary-size(4),max_distance_f::binary-size(4),obstacle_id_f::little-integer-size(16),sensor_type_f::integer-size(8),frame_f::integer-size(8)>>), do: {:ok, %APM.Message.ObstacleDistance3d{time_boot_ms: time_boot_ms_f, x: unpack_float(x_f), y: unpack_float(y_f), z: unpack_float(z_f), min_distance: unpack_float(min_distance_f), max_distance: unpack_float(max_distance_f), obstacle_id: obstacle_id_f, sensor_type: decode(sensor_type_f, :mav_distance_sensor), frame: decode(frame_f, :mav_frame)}}
  def unpack(42000, _, <<status_f::integer-size(8)>>), do: {:ok, %APM.Message.IcarousHeartbeat{status: decode(status_f, :icarous_fms_state)}}
  def unpack(42001, _, <<min1_f::binary-size(4),max1_f::binary-size(4),min2_f::binary-size(4),max2_f::binary-size(4),min3_f::binary-size(4),max3_f::binary-size(4),min4_f::binary-size(4),max4_f::binary-size(4),min5_f::binary-size(4),max5_f::binary-size(4),numbands_f::signed-integer-size(8),type1_f::integer-size(8),type2_f::integer-size(8),type3_f::integer-size(8),type4_f::integer-size(8),type5_f::integer-size(8)>>), do: {:ok, %APM.Message.IcarousKinematicBands{min1: unpack_float(min1_f), max1: unpack_float(max1_f), min2: unpack_float(min2_f), max2: unpack_float(max2_f), min3: unpack_float(min3_f), max3: unpack_float(max3_f), min4: unpack_float(min4_f), max4: unpack_float(max4_f), min5: unpack_float(min5_f), max5: unpack_float(max5_f), numbands: numbands_f, type1: decode(type1_f, :icarous_track_band_types), type2: decode(type2_f, :icarous_track_band_types), type3: decode(type3_f, :icarous_track_band_types), type4: decode(type4_f, :icarous_track_band_types), type5: decode(type5_f, :icarous_track_band_types)}}
  def unpack(_, _), do: {:error, :unknown_message}
  
end
