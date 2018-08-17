defmodule Account do
  def balance(initial, spending) do
    format(initial - spending, '$')
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
