defmodule Baijiu.Tiles do
  alias Baijiu.Tiles.Family, as: Family
  alias Baijiu.Tiles.Tile, as: Tile
  alias Baijiu.Utils, as: Utils

  @moduledoc """
  Main Baijiu Tiles module, where all MAhjong tiles and families are defined
  """

  @families %{
    :bamboo => %Family{name: "Bamboo", honor: False, size: 9},
    :character => %Family{name: "Character", honor: False, size: 9},
    :circle => %Family{name: "Circle", honor: False, size: 9},
    :dragon => %Family{name: "Dragon", honor: True, size: 3},
    :wind => %Family{name: "Wind", honor: True, size: 4}
  }

  @bamboo_tiles %{
    :bamboo_1 => %Tile{name: "One of Bamboo", family: @families.bamboo, number: 1},
    :bamboo_2 => %Tile{name: "Two of Bamboo", family: @families.bamboo, number: 2},
    :bamboo_3 => %Tile{name: "Three of Bamboo", family: @families.bamboo, number: 3},
    :bamboo_4 => %Tile{name: "Four of Bamboo", family: @families.bamboo, number: 4},
    :bamboo_5 => %Tile{name: "Five of Bamboo", family: @families.bamboo, number: 5},
    :bamboo_6 => %Tile{name: "Six of Bamboo", family: @families.bamboo, number: 6},
    :bamboo_7 => %Tile{name: "Seven of Bamboo", family: @families.bamboo, number: 7},
    :bamboo_8 => %Tile{name: "Eight of Bamboo", family: @families.bamboo, number: 8},
    :bamboo_9 => %Tile{name: "Nine of Bamboo", family: @families.bamboo, number: 9},
  }

  @character_tiles %{
    :character_1 => %Tile{name: "One of Character", family: @families.character, number: 1},
    :character_2 => %Tile{name: "Two of Character", family: @families.character, number: 2},
    :character_3 => %Tile{name: "Three of Character", family: @families.character, number: 3},
    :character_4 => %Tile{name: "Four of Character", family: @families.character, number: 4},
    :character_5 => %Tile{name: "Five of Character", family: @families.character, number: 5},
    :character_6 => %Tile{name: "Six of Character", family: @families.character, number: 6},
    :character_7 => %Tile{name: "Seven of Character", family: @families.character, number: 7},
    :character_8 => %Tile{name: "Eight of Character", family: @families.character, number: 8},
    :character_9 => %Tile{name: "Nine of Character", family: @families.character, number: 9},
  }

  @circle_tiles %{
    :circle_1 => %Tile{name: "One of Circle", family: @families.circle, number: 1},
    :circle_2 => %Tile{name: "Two of Circle", family: @families.circle, number: 2},
    :circle_3 => %Tile{name: "Three of Circle", family: @families.circle, number: 3},
    :circle_4 => %Tile{name: "Four of Circle", family: @families.circle, number: 4},
    :circle_5 => %Tile{name: "Five of Circle", family: @families.circle, number: 5},
    :circle_6 => %Tile{name: "Six of Circle", family: @families.circle, number: 6},
    :circle_7 => %Tile{name: "Seven of Circle", family: @families.circle, number: 7},
    :circle_8 => %Tile{name: "Eight of Circle", family: @families.circle, number: 8},
    :circle_9 => %Tile{name: "Nine of Circle", family: @families.circle, number: 9},
  }

  @dragon_tiles %{
    :green_dragon => %Tile{name: "Green dragon", family: @families.dragon, number: 1},
    :red_dragon => %Tile{name: "Red dragon", family: @families.dragon, number: 2},
    :white_dragon => %Tile{name: "White dragon", family: @families.dragon, number: 3},
  }

  @wind_tiles %{
    :east_wind => %Tile{name: "East wind", family: @families.wind, number: 1},
    :north_wind => %Tile{name: "North wind", family: @families.wind, number: 4},
    :south_wind => %Tile{name: "South wind", family: @families.wind, number: 2},
    :west_wind => %Tile{name: "West wind", family: @families.wind, number: 3},
  }

  @all_tiles_map @bamboo_tiles |> Map.merge(@character_tiles)
    |> Map.merge(@circle_tiles)
    |> Map.merge(@dragon_tiles)
    |> Map.merge(@wind_tiles)

  @all_tiles_tuple @all_tiles_map |> Map.values |> List.to_tuple

  @number_of_different_tiles tuple_size(@all_tiles_tuple)

  def all_tiles_map, do: @all_tiles_map
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
