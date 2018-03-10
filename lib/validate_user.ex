defmodule ValidateUser do
  import Ecto.Query
  alias AuthenticationService.User
  alias AuthenticationService.Repo

  def test do
    query = from w in User
    Repo.all(query)
  end

  def message do
    IO.puts("AuthenticationService for all keepmefiit products.")
  end
end
