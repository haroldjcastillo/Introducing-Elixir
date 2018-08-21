defmodule ListTest do
  @moduledoc false

  def sum([]) do
    0
  end

  def sum(list) do
    sum(list, 1)
  end

  def sum([], accumulated) do
    accumulated
  end

  def sum([head | tail], accumulated) do
    sum(tail, head + accumulated)
  end

  def concat(a, b) do
    Enum.concat(a, b)
  end

end
