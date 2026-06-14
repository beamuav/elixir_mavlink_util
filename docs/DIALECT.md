# ArduPilot MAVLink dialect

## Source of truth

Wire-protocol definitions come from the [ArduPilot/mavlink](https://github.com/ArduPilot/mavlink)
submodule at `vendor/mavlink/`. The entry point is:

```text
vendor/mavlink/message_definitions/v1.0/ardupilotmega.xml
```

That file includes standard MAVLink `common.xml`, ArduPilot extensions, and vendor XML
(uAvionix, ICAROUS, CubePilot, etc.) in one dialect. Copter, Plane, Rover, Sub, and
Tracker all use this same dialect; they differ in mode enums and parameters, not separate
message sets.

## Pinned revision

The submodule commit SHA recorded in git is the dialect version this repo targets.
Document the matching ArduPilot firmware release when bumping the pin.

**Current pin:** `vendor/mavlink` @ `09f84036` (2026-06-04 upstream ArduPilot/mavlink).
Map this to the ArduPilot firmware release you validate against when you bump the pin.

## Regenerate Elixir bindings

```bash
git submodule update --init --recursive
mix deps.get
mix mavlink.generate
mix test
```

This overwrites `lib/apm.ex`. Commit the submodule SHA and regenerated file together.

`mix mavlink.generate` post-processes the generator output to escape embedded quotes in
`@typedoc` and `describe_params/1` strings (upstream `elixir-mavlink` does not escape
those today).

## Why ArduPilot only (for now)

`mavlink_util` targets ArduPilot firmware: MAVProxy-style helpers, `ardupilotmega`
messages, and `priv/apm.*.pdef.xml` parameter docs. PX4 is a separate autopilot stack
(different dialect and mode/command model). It became popular especially in commercial
and ROS-heavy deployments after the 2016 Dronecode split, but it shares neither code nor
dialect with ArduPilot.

PX4 support later would mean a **sibling** generated module (e.g. `lib/px4.ex`) and a
pluggable command layer — not extending `APM`. ArduPilot-first keeps the project aligned
with the installed base and tooling this library was written for.
