# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :distillery_docker_demo, DistilleryDockerDemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Gw88mz65abbTiXOER7wr4K0BIobKjCOU/A26Lo49DTGh9ke/8xMSIG/fDbYEDx8V",
  render_errors: [view: DistilleryDockerDemoWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: DistilleryDockerDemo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"