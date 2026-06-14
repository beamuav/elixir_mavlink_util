# MAVlink Utilities

A helper layer on top of MAVLink for performing common commands and tasks with one or more remote ArduPilot
vehicles. It can either be used as an API or directly from iex with an experience similar to ArduPilot's MAVProxy.

## Autopilot scope

This project targets **ArduPilot only** (not PX4). ArduPilot and PX4 are separate autopilot stacks that
both speak MAVLink but use different dialects and mode/command models. PX4 became widely used after the 2016
Dronecode governance split, especially in commercial and ROS-centric deployments; ArduPilot remains dominant
in hobby, research, multi-vehicle-type, and MAVProxy-adjacent tooling. PX4 could be added later as a sibling
generated dialect module — see [docs/DIALECT.md](docs/DIALECT.md).

## Setup

Clone with submodules:

```bash
git clone --recurse-submodules https://github.com/robinhilliard/elixir-mavlink-util.git
cd elixir-mavlink-util
mix setup
```

If you already cloned without submodules:

```bash
git submodule update --init --recursive
mix setup
```

The first compile patches the `mavlink` dependency so its XML parser can locate OTP's `xmerl` headers on modern Erlang releases.

Configure vehicle connections in `config/config.exs`:

```elixir
config :mavlink,
  dialect: APM,
  connections: ["udpout:127.0.0.1:14550"]
```

## Interactive use

```bash
iex -S mix
```

This loads `.iex.exs`, which imports the MAVProxy-style helpers (`focus/1`, `arm/0`, `params/1`, and so on).

## Testing

```bash
mix test
```

## Regenerating the APM dialect

MAVLink XML definitions live in the **`vendor/mavlink` submodule** ([ArduPilot/mavlink](https://github.com/ArduPilot/mavlink)), not in `config/`. Regenerate `lib/apm.ex` with:

```bash
mix mavlink.generate
```

See [docs/DIALECT.md](docs/DIALECT.md) for pinning policy and bump workflow.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `mavlink_util` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:mavlink_util, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/mavlink_util](https://hexdocs.pm/mavlink_util).
