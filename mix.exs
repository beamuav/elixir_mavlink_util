defmodule MAVLink.Util.MixProject do
  use Mix.Project

  def project do
    [
      app: :mavlink_util,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/robinhilliard/elixir-mavlink-util",
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {MAVLink.Util.Application, []},
      extra_applications: [:mavlink, :logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:mavlink, "~> 0.9.0"}
    ]
  end
  
  defp description() do
    "A helper layer on top of MAVLink for performing common commands
     and tasks with one or more remote vehicles. It can either be
     used as an API or directly from iex with an experience similar
     to Ardupilot's MAVProxy."
  end
  
  defp package() do
    [
      name: "mavlink_util",
      files: ["lib", "mix.exs", "README.md", "LICENSE"],
      exclude_patterns: [".DS_Store"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/beamuav/elixir-mavlink-util"},
      maintainers: ["Robin Hilliard"]
    ]
  end
end
