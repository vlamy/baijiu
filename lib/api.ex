defmodule Baijiu.API do
  use Maru.Router

  @moduledoc """
  Root (maru propulsed) REST API module for Baijiu
  """

  plug Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Poison,
    parsers: [:urlencoded, :json, :multipart]

  get do
    json(conn, %{hello: :world})
  end

  rescue_from :all do
    conn
    |> put_status(500)
    |> text("Server Error")
  end
end
