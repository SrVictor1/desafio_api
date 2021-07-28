defmodule DesafioApi.Repo.Migrations.CreateNumbersTable do
  use Ecto.Migration

  def change do
    create table(:numbers) do
      add :numbers, {:map, :float}
    end
  end
end
