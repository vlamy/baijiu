defmodule Baijiu.Tiles do
  alias Baijiu.Tiles.Family, as: Family
  alias Baijiu.Tiles.Tile, as: Tile

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
    :bamboo_9 => %Tile{name: "Nine of Bamboo", family: @families.bamboo, number: 9}
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
    :character_9 => %Tile{name: "Nine of Character", family: @families.character, number: 9}
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
    :circle_9 => %Tile{name: "Nine of Circle", family: @families.circle, number: 9}
  }
end
