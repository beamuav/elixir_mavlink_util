defmodule Mix.Tasks.Mavlink.Generate do
  @moduledoc "Regenerate `lib/apm.ex` from the pinned `vendor/mavlink` submodule."

  use Mix.Task

  @requirements []

  @dialect_xml "vendor/mavlink/message_definitions/v1.0/ardupilotmega.xml"
  @output_ex "lib/apm.ex"
  @temp_ex "lib/apm.ex.new"
  @module_name "APM"

  @impl Mix.Task
  def run(_args) do
    unless File.exists?(@dialect_xml) do
      Mix.raise("""
      #{@dialect_xml} not found.

      Initialise the submodule first:

          git submodule update --init --recursive
      """)
    end

    Application.ensure_all_started(:xmerl)

    if File.exists?(@temp_ex), do: File.rm!(@temp_ex)

    Mix.Task.run("mavlink", [@dialect_xml, @temp_ex, @module_name])

    @temp_ex
    |> File.read!()
    |> fix_generated_strings()
    |> then(&File.write!(@temp_ex, &1))

    File.rename!(@temp_ex, @output_ex)
  end

  defp fix_generated_strings(content) do
    content
    |> String.split("\n")
    |> Enum.map(&fix_generated_line/1)
    |> Enum.join("\n")
  end

  defp fix_generated_line("  @typedoc \"" <> rest) do
    body = binary_part(rest, 0, byte_size(rest) - 1)
    "  @typedoc \"" <> escape_quotes(body) <> "\""
  end

  defp fix_generated_line("  def describe_params(" <> _ = line) do
    fix_describe_params_line(line)
  end

  defp fix_generated_line(line), do: line

  defp fix_describe_params_line(line) do
    fix_describe_params_line(line, 0)
  end

  defp fix_describe_params_line(line, start) do
    case Regex.run(~r/\{\d+, "/, line, return: :index, offset: start) do
      [{open_pos, match_len}] ->
        quote_start = open_pos + match_len

        case find_param_string_end(line, quote_start) do
          nil ->
            line

          close_pos ->
            body = binary_part(line, quote_start, close_pos - quote_start)
            escaped = escape_quotes(body)

            new_line =
              binary_part(line, 0, quote_start) <>
                escaped <>
                binary_part(line, close_pos, byte_size(line) - close_pos)

            if escaped == body do
              fix_describe_params_line(new_line, close_pos + 1)
            else
              fix_describe_params_line(new_line, quote_start + byte_size(escaped))
            end
        end

      _ ->
        line
    end
  end

  defp find_param_string_end(binary, pos) do
    find_param_string_end(binary, pos, byte_size(binary))
  end

  defp find_param_string_end(_binary, pos, size) when pos >= size, do: nil

  defp find_param_string_end(binary, pos, size) do
    case :binary.at(binary, pos) do
      ?\\ ->
        find_param_string_end(binary, pos + 2, size)

      ?" ->
        case :binary.at(binary, pos + 1) do
          c when c in [?\}, ?,] -> pos
          _ -> find_param_string_end(binary, pos + 1, size)
        end

      _ ->
        find_param_string_end(binary, pos + 1, size)
    end
  end

  defp escape_quotes(body) do
    if String.contains?(body, "\"") and not String.contains?(body, "\\\"") do
      String.replace(body, "\"", "\\\"")
    else
      body
    end
  end
end
