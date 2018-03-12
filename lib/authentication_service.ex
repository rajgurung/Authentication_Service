defmodule AuthenticationService do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  # @moduledoc false
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    # List all child processes to be supervised
    children = [
      # Starts a worker by calling: Foo.Worker.start_link(arg)
      # {Foo.Worker, arg},
      Plug.Adapters.Cowboy.child_spec(:http, AuthenticationService.Router, [], [port: String.to_integer(System.get_env("PORT") || "4000")]),

      supervisor(AuthenticationService.Repo, [])
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: AuthenticationService.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
