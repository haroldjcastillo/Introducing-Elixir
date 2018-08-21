defmodule Account do

  def balance(initial, spending) do
    discount(initial, spending)
      |> interest(0.1)
      |> format('$')
  end

  def discount(total, amount) do
    total - (total / amount)
  end

  def interest(total, rate) do
    total + (total * rate)
  end

  def format(value, style) do
    '#{style}#{value}'
  end
end
