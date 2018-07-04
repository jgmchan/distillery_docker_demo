use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :distillery_docker_demo, DistilleryDockerDemoWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

config :distillery_docker_demo,
  example_variable: System.get_env("EXAMPLE_VARIABLE") || "TEST_VALUE"
