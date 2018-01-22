# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :graphql_barebones,
  ecto_repos: [GraphqlBarebones.Repo]

# Configures the endpoint
config :graphql_barebones, GraphqlBarebonesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3u9Bj9WZMS1903rUAfzZ4qYl1cDlXV2qZMn8C6CYH9i7kwQ6IfQZz7lycI7YY5cK",
  render_errors: [view: GraphqlBarebonesWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: GraphqlBarebones.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
