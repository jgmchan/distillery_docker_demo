use Mix.Config

config :distillery_docker_demo, DistilleryDockerDemoWeb.Endpoint,
  load_from_system_env: true,
  url: [host: "example.com", port: 80],
  server: true

# Do not print debug messages in production
config :logger, level: :info

config :distillery_docker_demo, example_variable: "${EXAMPLE_VARIABLE}"
