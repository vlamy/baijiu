defmodule Baijiu.Tiles.Family do
  @moduledoc """
  Baijiu tiles family structure
  """

  @derive Jason.Encoder
  defstruct [:id, :name, :honor, :size]
end
