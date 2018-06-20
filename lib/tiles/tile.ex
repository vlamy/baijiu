defmodule Baijiu.Tiles.Tile do
  @moduledoc """
  Baijiu tile structure
  """

  @derive Jason.Encoder
  defstruct [:id, :name, :family, :number]
end
