defmodule MavlinkUtilTest do
  use ExUnit.Case
  doctest MavlinkUtil

  test "greets the world" do
    assert MavlinkUtil.hello() == :world
  end
end
