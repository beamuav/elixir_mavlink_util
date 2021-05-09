use Mix.Config

config :mavlink, dialect: APM, connections: ["tcpout:127.0.0.1:5760", "serial:/dev/cu.usbmodem401101:115200"]
