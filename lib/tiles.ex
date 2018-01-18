defmodule Baijiu.Family do
  defstruct [:name, :honor, :size]

  @type t :: %Baijiu.Family{}
  @callback value :: Baijiu.Family.t
end

# defmodule Baijiu.Families do
#   @behaviour Family
# end

# defmodule Baijiu.Tile do
#   defstruct [:name, :family, :number]

#   @type t :: %Tile{}
#   @callback value :: Tile.t
# end

# defmodule Baijiu.Tiles do
#   @families %{
#     :bamboo => %Family{name: "Bamboo", honor: False, size: 9},
#     :character => %Family{name: "Character", honor: False, size: 9},
#     :circle => %Family{name: "Circle", honor: False, size: 9},
#     :dragon => %Family{name: "Dragon", honor: True, size: 3},
#     :wind => %Family{name: "Wind", honor: True, size: 4}
#   }

#   @tiles %{
#     :bamboo_1 => %Tile{name: "First of Bamboo", honor: False, number: 1}
#   }
# end
