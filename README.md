# AuthenticationService

**Authentication Service for all keepmefiit apps**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `authentication_service` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:authentication_service, "~> 0.1.0"}]
    end
    ```

  2. Ensure `authentication_service` is started before your application:

    ```elixir
    def application do
      [applications: [:authentication_service]]
    end
    ```

