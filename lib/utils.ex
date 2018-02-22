defmodule Baijiu.Utils do
  @moduledoc """
  Module hosting utils functions for Baijiu
  """

  @default_random_size 1024

  @doc """
  Return a random number between 0 and `size`
  see https://hashrocket.com/blog/posts/the-adventures-of-generating-random-numbers-in-erlang-and-elixir

  """
  def random(size \\ @default_random_size) do
    <<i1 :: unsigned-integer-32, i2 :: unsigned-integer-32,
      i3 :: unsigned-integer-32>> = :crypto.strong_rand_bytes(12)
    :rand.seed(:exsplus, {i1, i2, i3})
    :rand.uniform(size) # generate random number from 0 - size
  end
end
