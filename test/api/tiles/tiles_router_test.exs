defmodule BaijiuTest.Router.Tiles do
  use ExUnit.Case
  use Maru.Test

  doctest Baijiu.Router.Tiles

  def assertTileId(%{"id" => id}) do
    refute id == nil
  end

  def assertTileNumber(%{"number" => number}) do
    assert 0 < number
    assert 15 > number
  end

  def assertTileName(%{"name" => name}) do
    refute name == ''
    refute name == nil
  end

  def assertTileFamily(%{"family" => family}) do
    assert Enum.any?(
      ["bamboo", "character", "circle", "dragon", "wind"],
      fn f -> f == family end
    )
  end

  def assertTile(tile) do
    assertTileId(tile)
    assertTileNumber(tile)
    assertTileName(tile)
    assertTileFamily(tile)
  end

  test "/tiles/random" do
    get("/tiles/random") |> json_response |> assertTile
  end

  test "/tiles/fullhand" do
    fullhand = get("/tiles/fullhand") |> json_response
    assert Enum.count(fullhand) == 14
    assertTile(List.first(fullhand))
  end
end
