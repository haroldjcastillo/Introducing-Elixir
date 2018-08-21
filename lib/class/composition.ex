defmodule Composition do
  @moduledoc """
  Write an function that, given a string,
  upercases each of its words, deletes
  symbols, reverses the string, and turns it to a
  list
  """

  def do_something(characters) do
    characters |>	String.upcase
               |>	String.replace(~r/[\p{P}\p{S}]/,	"")
               |>	String.reverse
               |>	String.split("", trim: true)

  end

end

# c("composition.ex")
# Composition.do_something("harold$%&/]{>CASTILLO")
# ["o", "l", "l", "i", "t", "s", "a", "c", "d", "l", "o", "r", "a", "H"]