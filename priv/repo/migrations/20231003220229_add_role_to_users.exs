defmodule Hello.Repo.Migrations.AddAdminToUsers do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :role, {:array, :string}, default: ["viever"]
    end
  end
end
