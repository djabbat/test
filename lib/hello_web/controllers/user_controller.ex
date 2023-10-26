defmodule HelloWeb.UserController do
  use HelloWeb, :controller

  def new(conn, _params) do
    render(conn, "new.html")
  end
end
