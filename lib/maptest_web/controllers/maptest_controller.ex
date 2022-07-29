defmodule MaptestWeb.MaptestController do
  use MaptestWeb, :controller
  alias Locations.Location

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def new(conn, _params) do
    changeset = Location.changeset(%{})
    render(conn, "new.html", changeset: changeset)
  end
end
