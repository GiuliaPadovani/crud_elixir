defmodule PhoenixCrud.Userr do
  use Ecto.Schema
  import Ecto.Changeset


  schema "userrs" do
    field :email, :string
    field :first_name, :string
    field :last_name, :string
    field :provider, :string
    field :token, :string

    timestamps()
  end

  @doc false
  def changeset(userr, attrs) do
    userr
    |> cast(attrs, [:first_name, :last_name, :email, :provider, :token])
    |> validate_required([:first_name, :last_name, :email, :provider, :token])
  end
end
