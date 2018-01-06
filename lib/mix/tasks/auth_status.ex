defmodule Mix.Tasks.AuthStatus do
  use Mix.Task

  @shortdoc "Simply runs the Hello.say/0 command."

  def run(_) do
    # calling our AuthenticationService.message() function from lib
    AuthenticationService.message()
  end
end
