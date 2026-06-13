defmodule MAVLink.Util.System do
  @moduledoc false

  @enforce_keys [
    :mavlink_major_version,
    :mavlink_minor_version,
    :param_count,
    :param_count_loaded
  ]
  defstruct @enforce_keys

  @type t :: %__MODULE__{
          mavlink_major_version: non_neg_integer(),
          mavlink_minor_version: non_neg_integer(),
          param_count: non_neg_integer(),
          param_count_loaded: non_neg_integer()
        }

  def new(mavlink_major_version, mavlink_minor_version) do
    %__MODULE__{
      mavlink_major_version: mavlink_major_version,
      mavlink_minor_version: mavlink_minor_version,
      param_count: 0,
      param_count_loaded: 0
    }
  end
end
