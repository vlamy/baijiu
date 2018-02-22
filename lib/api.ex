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

  get do
    json(conn, Tiles.get_random_tile)
  end

  rescue_from :all do
    conn
    |> put_status(500)
    |> text("Server Error")
  end
end
