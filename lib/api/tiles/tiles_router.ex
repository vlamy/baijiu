defmodule Baijiu.Router.Tiles do
  use Maru.Router

  alias Baijiu.Tiles, as: Tiles

  @moduledoc """
  Maru router defining tiles related endpoints
  """

  get "tiles/random" do
    json(conn, Tiles.get_random_tile)
  end

  get "tiles/fullhand" do
    json(conn, Tiles.full_random_hand)
  end
end
