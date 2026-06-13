defmodule MAVLink.Util.AwaitTest do
  use ExUnit.Case, async: true

  alias MAVLink.Util.Await

  test "returns :ok when matcher succeeds" do
    parent = self()

    result =
      Task.async(fn ->
        Await.await_message(
          fn
            :done -> :ok
            _ -> :retry
          end,
          fn -> send(parent, :sent)
          end,
          timeout: 100,
          max_attempts: 3
        )
      end)

    assert_receive :sent
    send(result.pid, :done)

    assert Task.await(result) == :ok
  end

  test "returns :timeout after max attempts" do
    assert Await.await_message(fn _ -> :retry end, fn -> :ok end,
             timeout: 10,
             max_attempts: 2
           ) == {:error, :timeout}
  end
end
