use Mix.Config

config :authentication_service, ecto_repos: [AuthenticationService.Repo]

config :authentication_service, AuthenticationService.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL")

import_config "#{Mix.env}.exs"
