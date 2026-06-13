defmodule MAVLink.Util.Await do
  @moduledoc false

  @default_max_attempts 10

  @doc false
  def await_message(match_fn, send_fn, opts \\ [])
      when is_function(match_fn, 1) and is_function(send_fn, 0) do
    timeout = Keyword.get(opts, :timeout, 3_000)
    max_attempts = Keyword.get(opts, :max_attempts, @default_max_attempts)
    unsubscribe = Keyword.get(opts, :unsubscribe, fn -> :ok end)

    await_message(match_fn, send_fn, unsubscribe, timeout, max_attempts, 1)
  end

  defp await_message(_match_fn, _send_fn, unsubscribe, _timeout, max_attempts, attempt)
       when attempt > max_attempts do
    unsubscribe.()
    {:error, :timeout}
  end

  defp await_message(match_fn, send_fn, unsubscribe, timeout, max_attempts, attempt) do
    send_fn.()

    receive do
      message ->
        case match_fn.(message) do
          :ok ->
            unsubscribe.()
            :ok

          :retry ->
            await_message(match_fn, send_fn, unsubscribe, timeout, max_attempts, attempt + 1)

          {:error, reason} ->
            unsubscribe.()
            {:error, reason}
        end
    after
      timeout ->
        await_message(match_fn, send_fn, unsubscribe, timeout, max_attempts, attempt + 1)
    end
  end
end
