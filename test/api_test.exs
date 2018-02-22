defmodule BaijiuTest.API do
  use ExUnit.Case
  use Maru.Test

  doctest Baijiu.API

  test "/" do
    %{"number" => number, "name" => name, "family" => family} = get("/") |> json_response
    assert 0 < number
    refute name == ''
    refute family == nil
  end
end
