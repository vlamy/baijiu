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

  test "/tiles/bamboo_1" do
    assert %{"number" => 1,
      "name" => "One of Bamboo",
      "id" => "bamboo_1",
      "family" => "bamboo"
    } == get("/tiles/bamboo_1") |> json_response
  end

  test "/tiles/character_1" do
    assert %{"number" => 1,
      "name" => "One of Character",
      "id" => "character_1",
      "family" => "character"
    } == get("/tiles/character_1") |> json_response
  end

  test "/tiles/character_2" do
    assert %{"number" => 2,
      "name" => "Two of Character",
      "id" => "character_2",
      "family" => "character"
    } == get("/tiles/character_2") |> json_response
  end

  test "/tiles/character_3" do
    assert %{"number" => 3,
      "name" => "Three of Character",
      "id" => "character_3",
      "family" => "character"
    } == get("/tiles/character_3") |> json_response
  end

  test "/tiles/circle_1" do
    assert %{"number" => 1,
      "name" => "One of Circle",
      "id" => "circle_1",
      "family" => "circle"
    } == get("/tiles/circle_1") |> json_response
  end
end
