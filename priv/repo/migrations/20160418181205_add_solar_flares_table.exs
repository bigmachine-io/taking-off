defmodule Physics.Repo.Migrations.AddSolarFlaresTable do
  use Ecto.Migration

  def change do
    create table(:solar_flares) do
      add :classification, :string, size: 1
      add :scale, :float
      add :stations, :integer
      timestamps
    end
  end
end
