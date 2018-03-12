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

  namespace :tiles do
    route_param :id, type: String do
      desc "Returns a tile from its id"
      get do
        json(conn, Tiles.tile_from_id(String.to_atom(params[:id])))
      end
    end
  end
end
