defmodule BaijiuTest.API do
  use ExUnit.Case
  use Maru.Test

  doctest Baijiu.API

  test "/" do
    %{"id" => id,
      "number" => number,
      "name" => name,
      "family" => family} = get("/") |> json_response

    refute id == nil
    assert 0 < number
    refute name == ''
    refute family == nil
  end
end
