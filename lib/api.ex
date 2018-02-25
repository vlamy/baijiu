defmodule Baijiu.API do
  use Maru.Router
  alias Baijiu.Tiles, as: Tiles

  @moduledoc """
  Root (maru propulsed) REST API module for Baijiu
  """

  plug Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Poison,
    parsers: [:urlencoded, :json, :multipart]

    #TODO: add a logger
  mount Baijiu.Router.Tiles

  get do
    json(conn, %{status: "ok"})
  end

  rescue_from :all do
    conn
    |> put_status(500)
    |> text("Server Error")
  end
end
