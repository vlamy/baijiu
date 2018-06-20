defmodule Baijiu.API do
  use Maru.Router
  alias Baijiu.Tiles, as: Tiles

  @moduledoc """
  Root (maru propulsed) REST API module for Baijiu
  """

  before do
    plug Plug.Logger
  end

  plug Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Jason,
    parsers: [:urlencoded, :json, :multipart]

    #TODO: add a logger
  mount Baijiu.Router.Tiles

  get do
    json(conn, %{status: "ok"})
  end

  rescue_from Unauthorized, as: e do
    IO.inspect e

    conn
    |> put_status(401)
    |> text("Unauthorized")
  end

  rescue_from [MatchError, RuntimeError], with: :custom_error

  rescue_from :all, as: e do
    IO.inspect e
    conn
    |> put_status(Plug.Exception.status(e))
    |> text("Server Error")
  end

  defp custom_error(conn, exception) do
    conn
    |> put_status(500)
    |> text(exception.message)
  end
end
