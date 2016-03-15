defmodule Appone.PageController do
  use Appone.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
