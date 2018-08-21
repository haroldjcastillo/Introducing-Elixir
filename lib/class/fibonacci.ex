defmodule Fibonacci do
  @moduledoc """
  Implement a recursive and an iterative version of Fibonacci numbers.
  """

  def recursive(n) when n < 2 do
    n
  end

  def recursive(n) do
    recursive(n - 1) + recursive(n - 2)
  end

  def iterative(n, a \\ 0, b \\ 1, k \\ 0)

  def iterative(n, a, b, k) when k < n do
    b = b + a
    a = b - a
    iterative(n, a, b, k+1)
  end

  def iterative(n, a, b, k) when k >= n do
    a
  end

end
