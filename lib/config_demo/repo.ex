defmodule ConfigDemo.Repo do
  use Ecto.Repo,
    otp_app: :config_demo,
    adapter: Ecto.Adapters.Postgres
end
