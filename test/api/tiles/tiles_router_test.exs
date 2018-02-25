defmodule BaijiuTest.Router.Tiles do
  use ExUnit.Case
  use Maru.Test

  doctest Baijiu.Router.Tiles

  test "/tiles/random" do
    %{"id" => id,
      "number" => number,
      "name" => name,
      "family" => family} = get("/tiles/random") |> json_response

    refute id == nil
    assert 0 < number
    refute name == ''
    refute family == nil
  end

  test "/tiles/fullhand" do
    fullhand = get("/tiles/fullhand") |> json_response
    assert Enum.count(fullhand) == 14


    %{"id" => id,
      "number" => number,
      "name" => name,
      "family" => family} = List.first(fullhand)

    refute id == nil
    assert 0 < number
    refute name == ''
    refute family == nil
  end
end
