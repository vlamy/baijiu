defmodule Tile do
  defstruct [:name, :family, :number]
end

defmodule Baijiu.Tiles do
  defmodule Family do
    defstruct [:name, :honor, :size]
  end

  defmodule Families do
    @families %{
      :bamboo => %Family{name: "Bamboo", honor: False, size: 9},
      :character => %Family{name: "Character", honor: False, size: 9},
      :circle => %Family{name: "Circle", honor: False, size: 9},
      :dragon => %Family{name: "Dragon", honor: True, size: 3},
      :wind => %Family{name: "Wind", honor: True, size: 4}
    }
  end
end
