defmodule ConfigDemo.Release do
  @app :config_demo

  @doc """
  Migrate data in the database. Defaults to migrating to the latest, `[all: true]`
  Also accepts `[step: 1]`, or `[to: 20200118045751]`
  """
  def migrate_data(opts \\ [all: true]) do
    load_app()

    IO.puts("migrate")

    for repo <- repos() do
      path = Ecto.Migrator.migrations_path(repo, "data_migrations")
      {:ok, _, _} = Ecto.Migrator.with_repo(repo, &Ecto.Migrator.run(&1, path, :up, opts))
    end
  end

  def rollback(repo, version) do
    load_app()
    IO.puts("load app")
  end

  defp repos do
    Application.fetch_env!(@app, :ecto_repos)
  end

  defp load_app do
    Application.load(@app)
  end
end
