defmodule SimpleTalkWeb.PageController do
  use SimpleTalkWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
