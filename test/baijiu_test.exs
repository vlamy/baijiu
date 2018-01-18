defmodule BaijiuTest do
  use ExUnit.Case
  use Maru.Test

  doctest Baijiu.API

  test "/" do
    assert %{"hello" => "world"}  = get("/") |> json_response
  end
end
