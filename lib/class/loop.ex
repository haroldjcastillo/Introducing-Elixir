defmodule Loop do
  @moduledoc """
  * Write a function that calculates the length of a list
  * Write a function that returns the nth term of
  a list
  """
  @vsn 1.0

  def length(list, counter \\ 0)

  def nth(list, n, sum \\ 0)

  def length([_|t], counter) when t != [] do
    length(t, counter+1)
  end

  def length([_|t], counter) when t == [] do
    counter + 1
  end

  def length(nil, _) do
    0
  end

  def nth([_|t], n, sum) when n > sum do
    nth(t, n, sum + 1)
  end

  def nth([h|_], n, sum) when n == sum do
    h
  end

  def nth(list, n, sum) when list == [] and n >= sum do
    raise "Out of range"
  end

end

