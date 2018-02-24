defmodule Baijiu.Tiles do
  @moduledoc """
  Main Baijiu Tiles module, where all Mahjong tiles and families are defined
  """

  alias Baijiu.Tiles.Family, as: Family
  alias Baijiu.Tiles.Tile, as: Tile
  alias Baijiu.Utils, as: Utils

  @families [
    %Family{id: :bamboo, name: "Bamboo", honor: False, size: 9},
    %Family{id: :character, name: "Character", honor: False, size: 9},
    %Family{id: :circle, name: "Circle", honor: False, size: 9},
    %Family{id: :dragon, name: "Dragon", honor: True, size: 3},
    %Family{id: :wind, name: "Wind", honor: True, size: 4}
  ]

  @families_map Map.new(@families, fn family -> {family.id, family} end)

  @bamboo_tiles [
    %Tile{id: :bamboo_1, name: "One of Bamboo", family: @families_map.bamboo, number: 1},
    %Tile{id: :bamboo_2, name: "Two of Bamboo", family: @families_map.bamboo, number: 2},
    %Tile{id: :bamboo_3, name: "Three of Bamboo", family: @families_map.bamboo, number: 3},
    %Tile{id: :bamboo_5, name: "Four of Bamboo", family: @families_map.bamboo, number: 4},
    %Tile{id: :bamboo_5, name: "Five of Bamboo", family: @families_map.bamboo, number: 5},
    %Tile{id: :bamboo_6, name: "Six of Bamboo", family: @families_map.bamboo, number: 6},
    %Tile{id: :bamboo_7, name: "Seven of Bamboo", family: @families_map.bamboo, number: 7},
    %Tile{id: :bamboo_8, name: "Eight of Bamboo", family: @families_map.bamboo, number: 8},
    %Tile{id: :bamboo_9, name: "Nine of Bamboo", family: @families_map.bamboo, number: 9}
  ]

  @character_tiles [
    %Tile{id: :character_1, name: "One of Character",
      family: @families_map.character, number: 1},
    %Tile{id: :character_2, name: "Two of Character",
      family: @families_map.character, number: 2},
    %Tile{id: :character_3, name: "Three of Character",
      family: @families_map.character, number: 3},
    %Tile{id: :character_4, name: "Four of Character",
      family: @families_map.character, number: 4},
    %Tile{id: :character_5, name: "Five of Character",
      family: @families_map.character, number: 5},
    %Tile{id: :character_6, name: "Six of Character",
      family: @families_map.character, number: 6},
    %Tile{id: :character_7, name: "Seven of Character",
      family: @families_map.character, number: 7},
    %Tile{id: :character_8, name: "Eight of Character",
      family: @families_map.character, number: 8},
    %Tile{id: :character_9, name: "Nine of Character",
      family: @families_map.character, number: 9},
  ]

  @circle_tiles [
    %Tile{id: :circle_1, name: "One of Circle", family: @families_map.circle, number: 1},
    %Tile{id: :circle_2, name: "Two of Circle", family: @families_map.circle, number: 2},
    %Tile{id: :circle_3, name: "Three of Circle", family: @families_map.circle, number: 3},
    %Tile{id: :circle_4, name: "Four of Circle", family: @families_map.circle, number: 4},
    %Tile{id: :circle_5, name: "Five of Circle", family: @families_map.circle, number: 5},
    %Tile{id: :circle_6, name: "Six of Circle", family: @families_map.circle, number: 6},
    %Tile{id: :circle_7, name: "Seven of Circle", family: @families_map.circle, number: 7},
    %Tile{id: :circle_8, name: "Eight of Circle", family: @families_map.circle, number: 8},
    %Tile{id: :circle_9, name: "Nine of Circle", family: @families_map.circle, number: 9},
  ]

  @dragon_tiles [
    %Tile{id: :green_dragon, name: "Green dragon", family: @families_map.dragon, number: 1},
    %Tile{id: :red_dragon, name: "Red dragon", family: @families_map.dragon, number: 2},
    %Tile{id: :white_dragon, name: "White dragon", family: @families_map.dragon, number: 3},
  ]

  @wind_tiles [
    %Tile{id: :east_wind, name: "East wind", family: @families_map.wind, number: 1},
    %Tile{id: :north_wind, name: "North wind", family: @families_map.wind, number: 4},
    %Tile{id: :south_wind, name: "South wind", family: @families_map.wind, number: 2},
    %Tile{id: :west_wind, name: "West wind", family: @families_map.wind, number: 3},
  ]

  @all_honors @dragon_tiles ++ @wind_tiles
  @all_basics @bamboo_tiles ++ @character_tiles ++ @circle_tiles
  @all_tiles @all_honors ++ @all_basics
  @all_tiles_map Map.new(@all_tiles, fn tile -> {tile.id, tile} end)
  @all_tiles_tuple List.to_tuple(@all_tiles)

  @number_of_different_tiles tuple_size(@all_tiles_tuple)

  def all_tiles_tuple, do: @all_tiles_tuple
  def number_of_tiles, do: @number_of_different_tiles

  def get_random_tile do
    elem(all_tiles_tuple(), Utils.random(number_of_tiles()))
  end

  def random_tiles_tuple(list_size) when list_size == 0, do: {}

  def random_tiles_tuple(list_size) when list_size > 0 do
    Tuple.append(random_tiles_tuple(list_size - 1), get_random_tile())
  end

  def full_random_hand, do: Tuple.to_list(random_tiles_tuple(14))
end
