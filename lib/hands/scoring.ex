defmodule Baijiu.Hands.Validator do

  def hand_of_14?(hand), do: Enum.count(hand) == 14

  """
  Indicates if a hand is valid.
  i.e. no more than 4 tiles of each family, each tile is know and no flower
  hand should be a list of tiles
  """
  def valid_hand?(hand) do
    hand_of_14?(hand)
    #Maximum 4 instances of the same tile
    #No flower
  end

  """
  Indicates if a hand if valid for mahjong
  """
  def mahjong?(hand) do
    ## need to treat each of 88 hands that arre valid for Mahjong
  end
end
