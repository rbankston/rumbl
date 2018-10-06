defmodule Rumbl.Accounts.Credential do
  use Ecto.Schema
  import Ecto.Changeset


  schema "credentials" do
    field :email, :string
    field :pasword_hash, :string
    field :user_id, :id

    timestamps()
  end

  @doc false
  def changeset(credential, attrs) do
    credential
    |> cast(attrs, [:email, :pasword_hash])
    |> validate_required([:email, :pasword_hash])
    |> unique_constraint(:email)
  end
end
