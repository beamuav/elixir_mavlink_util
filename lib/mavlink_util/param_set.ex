defmodule MAVLink.Util.ParamSet do
  @moduledoc false

  @params :params

  require Logger
  alias MAVLink.Router, as: MAV
  alias APM.Message.ParamValue
  alias APM.Message.ParamSet
  alias MAVLink.Util.Await
  import MAVLink.Util.FocusManager, only: [focus: 0]

  @retry_timeout 3_000

  def param_set(param, new_value) do
    with {:ok, {system_id, component_id, mavlink_version}} <- focus() do
      param_set(system_id, component_id, mavlink_version, param, new_value)
    end
  end

  def param_set(system_id, component_id, mavlink_version, param, new_value)
      when is_atom(param) do
    param_set(
      system_id,
      component_id,
      mavlink_version,
      param |> Atom.to_string() |> String.upcase(),
      new_value
    )
  end

  def param_set(system_id, component_id, mavlink_version, param, new_value) do
    case :ets.lookup(@params, {system_id, component_id, param}) do
      [{{^system_id, ^component_id, ^param}, {_time, %ParamValue{param_type: param_type}}}] ->
        MAV.subscribe(message: ParamValue, source_system: system_id)

        Await.await_message(
          fn
            %ParamValue{param_id: ^param, param_value: ^new_value} ->
              :ok

            _ ->
              :retry
          end,
          fn ->
            MAV.pack_and_send(
              %ParamSet{
                target_system: system_id,
                target_component: component_id,
                param_id: param,
                param_value: new_value,
                param_type: param_type
              },
              mavlink_version
            )
          end,
          timeout: @retry_timeout,
          unsubscribe: &MAV.unsubscribe/0
        )
        |> tap(fn
          :ok ->
            Logger.info(
              "Set #{String.downcase(param)} to #{inspect(new_value)} for vehicle #{system_id}.#{component_id}"
            )

          {:error, :timeout} ->
            Logger.warning(
              "Timed out setting #{String.downcase(param)} for vehicle #{system_id}.#{component_id}"
            )

          _ ->
            :ok
        end)

      _ ->
        Logger.warning(
          "Parameter #{param} is not loaded for vehicle #{system_id}.#{component_id}"
        )

        {:error, :param_not_loaded}
    end
  end
end
