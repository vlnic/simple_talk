# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :simple_talk,
  ecto_repos: [SimpleTalk.Repo]

# Configures the endpoint
config :simple_talk, SimpleTalkWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PlJ2kUYftQmyDbI8HUcrjK5G8nVMjUUaGB71F48Rilm+eyEKGFOWKncoPvFcRiU1",
  render_errors: [view: SimpleTalkWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SimpleTalk.PubSub,
  live_view: [signing_salt: "x+2Uwefx"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
