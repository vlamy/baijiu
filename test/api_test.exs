defmodule BaijiuTest.API do
  use ExUnit.Case
  use Maru.Test

  doctest Baijiu.API

  test "/" do
    assert %{"status" => "ok"} = get("/") |> json_response
  end
end
