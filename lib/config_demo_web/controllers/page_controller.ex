defmodule ConfigDemoWeb.PageController do
  use ConfigDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", jax_env: Application.fetch_env!(:config_demo, :jax_env))
  end
end
