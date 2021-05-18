defmodule MAVLink.Util.SITL do
  @moduledoc """
  Provide SITL specific support e.g RC channel forwarding
  """
  
  require Logger
  alias MAVLink.Router, as: MAV
  alias APM.Message.RcChannelsRaw
  import MAVLink.Util.FocusManager, only: [focus: 0]
  
  def forward_rc(sitl_rc_in_port \\ 5501) do
    with {:ok, {system_id, component_id, _}} <- focus() do
      forward_rc(system_id, component_id, sitl_rc_in_port)
    end
  end
  
  def forward_rc(system_id, component_id, sitl_rc_in_port) do
    Task.start_link(__MODULE__, :_connect, [system_id, component_id, sitl_rc_in_port])
  end
  
  
  def _connect(system_id, component_id, sitl_rc_in_port) do
    with {:ok, socket} <- :gen_udp.open(0, [:binary, ip: {127, 0, 0, 1}]),
         :ok <- MAV.subscribe message: RcChannelsRaw, source_system: system_id, source_component: component_id do
      Logger.info("Start forwarding RC from vehicle #{system_id}.#{component_id} to SITL rc-in port #{sitl_rc_in_port}}")
      _forward(sitl_rc_in_port, socket)
    else
      _ ->
        Logger.warn("Could not subscribe or open port to forward RC from vehicle #{system_id}.#{component_id}")
    end
  end
  
  
  def _forward(sitl_rc_in_port, socket) do
    receive do
      %RcChannelsRaw{
        chan1_raw: c1,
        chan2_raw: c2,
        chan3_raw: c3,
        chan4_raw: c4,
        chan5_raw: c5,
        chan6_raw: c6,
        chan7_raw: c7,
        chan8_raw: c8
      } ->
        :gen_udp.send(
          socket,
          {127, 0, 0, 1}, # TODO accept destination IP as parameter
          sitl_rc_in_port,
          <<
            c1::little-unsigned-integer-size(16),
            c2::little-unsigned-integer-size(16),
            c3::little-unsigned-integer-size(16),
            c4::little-unsigned-integer-size(16),
            c5::little-unsigned-integer-size(16),
            c6::little-unsigned-integer-size(16),
            c7::little-unsigned-integer-size(16),
            c8::little-unsigned-integer-size(16)
          >>)
        _forward(sitl_rc_in_port, socket)
    end
  end
  
end
