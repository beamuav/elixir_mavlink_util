defmodule MAVLink.Util.MixProject do
  use Mix.Project

  @parser_path "deps/mavlink/lib/mavlink/parser.ex"
  @parser_marker "# patched by mavlink_util for OTP lib_dir resolution"

  def project do
    patch_mavlink_parser!()

    [
      app: :mavlink_util,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      aliases: aliases(),
      source_url: "https://github.com/robinhilliard/elixir-mavlink-util",
      elixirc_paths: elixirc_paths(Mix.env())
    ]
  end

  def application do
    [
      mod: {MAVLink.Util.Application, []},
      extra_applications: [:mavlink, :logger]
    ]
  end

  defp deps do
    [
      {:mavlink, github: "beamuav/elixir-mavlink"}
    ]
  end

  defp aliases do
    [
      setup: ["deps.get", "compile"],
      test: ["test --no-start"]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp description do
    "A helper layer on top of MAVLink for performing common commands
     and tasks with one or more remote vehicles. It can either be
     used as an API or directly from iex with an experience similar
     to Ardupilot's MAVProxy."
  end

  defp package do
    [
      name: "mavlink_util",
      files: ["lib", "config", "priv", ".iex.exs", "mix.exs", "README.md", "LICENSE"],
      exclude_patterns: [".DS_Store"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/robinhilliard/elixir-mavlink-util"},
      maintainers: ["Robin Hilliard"]
    ]
  end

  defp patch_mavlink_parser! do
    with {:ok, content} <- File.read(@parser_path) do
      patched =
        content
        |> String.replace(
          ~s(@xmerl_header "xmerl/include/xmerl.hrl"),
          xmerl_header_patch(),
          global: false
        )
        |> String.replace(
          "Path.join([List.to_string(:code.lib_dir(:xmerl)), \"include\", \"xmerl.hrl\"])",
          xmerl_header_body(),
          global: false
        )
        |> String.replace("from_lib: @xmerl_header", "from: @xmerl_header")

      if patched != content do
        File.write!(@parser_path, patched)
      end

      :ok
    else
      _ -> :ok
    end
  end

  defp xmerl_header_patch do
    @parser_marker <> "\n  @xmerl_header (\n" <> xmerl_header_body() <> "\n  )"
  end

  defp xmerl_header_body do
    """
    :code.root_dir()
    |> List.to_string()
    |> Path.join("lib/xmerl*/include/xmerl.hrl")
    |> Path.wildcard()
    |> List.first()
    """
    |> String.trim_trailing()
  end
end
