defmodule BaijiuTest.Tiles do
  use ExUnit.Case
  alias Baijiu.Tiles, as: Tiles

  doctest Baijiu.Tiles

  test '#tile_from_id' do
    assert %Baijiu.Tiles.Tile{family: :character, id: :character_1,
      name: "One of Character", number: 1} == Tiles.tile_from_id(:character_1)
    assert %Baijiu.Tiles.Tile{family: :character, id: :character_9,
      name: "Nine of Character", number: 9} == Tiles.tile_from_id(:character_9)
    assert %Baijiu.Tiles.Tile{family: :circle, id: :circle_1,
      name: "One of Circle", number: 1} == Tiles.tile_from_id(:circle_1)
    assert %Baijiu.Tiles.Tile{family: :circle, id: :circle_9,
      name: "Nine of Circle", number: 9} == Tiles.tile_from_id(:circle_9)
  end

end
