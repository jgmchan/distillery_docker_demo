use Mix.Config

config :distillery_docker_demo, DistilleryDockerDemoWeb.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

config :distillery_docker_demo,
  example_variable: System.get_env("EXAMPLE_VARIABLE") || "DEV_VALUE"
