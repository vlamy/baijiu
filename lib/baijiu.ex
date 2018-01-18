defmodule Baijiu.Router.Homepage do
  use Maru.Router

  get do
    json(conn, %{ hello: :world })
  end
end

defmodule Baijiu.API do
  use Maru.Router

  plug Plug.Parsers,
    pass: ["*/*"],
    json_decoder: Poison,
    parsers: [:urlencoded, :json, :multipart]

  mount Baijiu.Router.Homepage

  rescue_from :all do
    conn
    |> put_status(500)
    |> text("Server Error")
  end
end
