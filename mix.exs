defmodule AuthenticationService.Mixfile do
  use Mix.Project

  def project do
    [app: :authentication_service,
     version: "0.1.0",
     elixir: "~> 1.6.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     elixirc_paths: elixirc_paths(Mix.env),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [extra_applications: [], mod: {AuthenticationService, []}]
  end

  defp deps do
    [
      {:cowboy, ">= 0.0.0"},
      {:plug, "~> 1.0"},
      {:postgrex, ">= 0.0.0"},
      {:ecto, "~> 2.1"},
      {:httpoison, "~> 0.11.1"},
      {:guardian, "~> 1.0"},
      {:jason, ">= 0.0.0"},
      {:remix, ">= 0.0.0", only: :dev},
    ]
  end

  # This makes sure your factory and any other modules in test/support are compiled
  # when in the test environment.
  defp elixirc_paths(:test), do: ["lib", "test", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

end
