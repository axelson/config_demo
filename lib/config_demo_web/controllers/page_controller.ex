defmodule ConfigDemoWeb.PageController do
  use ConfigDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
