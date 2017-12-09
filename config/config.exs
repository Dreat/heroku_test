# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :heroku_test,
  ecto_repos: [HerokuTest.Repo]

# Configures the endpoint
config :heroku_test, HerokuTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hdtwPniR0RGlM5j9yGGcVB/lz8dvGgcJTmy19Mehi9SbOb4zQO3md+MIcNVC7fkf",
  render_errors: [view: HerokuTestWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: HerokuTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
