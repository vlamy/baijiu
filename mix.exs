defmodule Baijiu.Mixfile do
  use Mix.Project

  def project do
    [
      app: :baijiu,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      test_coverage: [tool: Coverex.Task],
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:confex, "~> 3.3"},
      {:credo, "~> 0.3", only: [:dev, :test]},
      {:coverex, "~> 1.4.10", only: :test},
      {:cowboy, "~> 2.4"},
      {:dialyxir, "~> 0.5", only: [:dev], runtime: false},
      {:jason, "~> 1.0"},
      {:maru, "~> 0.11"},
      {:ranch, "~> 1.5"}
    ]
  end
end
