defmodule Rumbl.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      ad :username, :string, null: false
      
      timestamps()
    end

    create unique_index(:users, [:username])
  end
end
