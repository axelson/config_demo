defmodule ConfigDemo.Repo.Migrations.Init do
  use Ecto.Migration

  def change do
    create table(:demo) do
      add :name, :text
    end
  end
end
