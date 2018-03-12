defmodule Baijiu.Hands.Validator do

  @moduledoc"""
  Methods that validate scoring (WIP)
  """

  def hand_of_14?(hand), do: Enum.count(hand) == 14

  def more_than_four_of_a_kind(hand) do
    Enum.any?(hand, fn h1 -> Enum.count(hand, fn h2 -> h1 == h2 end) end)
  end

  """
  Indicates if a hand is valid.
  i.e. no more than 4 tiles of each family, each tile is know and no flower
  hand should be a list of tiles
  """
  def valid_hand?(hand) do
    hand_of_14?(hand)
    #Maximum 4 instances of the same tile
    #TODO: add no flower
  end

  """
  Indicates if a hand if valid for mahjong
  """
  def mahjong?(hand) do
    valid_hand?(hand)
    ## need to treat each of 88 hands that arre valid for Mahjong
  end
end
