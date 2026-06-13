# MAVlink Utilities

A helper layer on top of MAVLink for performing common commands and tasks with one or more remote ArduPilot
vehicles. It can either be used as an API or directly from iex with an experience similar to ArduPilot's MAVProxy.

## Setup

```bash
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

## Regenerating the APM dialect

The checked-in `lib/apm.ex` is generated from the MAVLink XML definitions under `config/`:

```bash
mix mavlink.generate APM
```
