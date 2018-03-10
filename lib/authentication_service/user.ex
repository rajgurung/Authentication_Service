defmodule AuthenticationService.User do
  use Ecto.Schema, otp_app: :authentication_service

  # user is the DB table
  schema "users" do
    # field :id,        :integer
    field :name,      :string
    field :email,     :string
    field :user_type, :string
    # field :prcp,    :float, default: 0.0
  end

  def message do
    IO.puts("Adapter to connect with db.")
  end
end
