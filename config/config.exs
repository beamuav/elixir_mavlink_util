import Config

config :mavlink,
  dialect: APM,
  connections: [
    "tcpout:127.0.0.1:5760",
    "udpout:127.0.0.1:14550"
  ]

config :logger, level: :info
