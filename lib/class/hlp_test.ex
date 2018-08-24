defmodule HlpTest do
	
	@doc """
		to load the files below
		c "fibonacci.ex"
		c "hlp.ex"
	"""
	def fibonacci_square([]) do [] end
	def fibonacci_square(list) do
		Hlp.map(list, fn(x) -> :math.sqrt(Fibonacci.iterative(x)) end)
	end
	
	def ordered_pairs([i|t], n) when length([i|t]) <= 1 and is_number(i) do 
		IO.puts("it's any")
		i 
	end
	def ordered_pairs([i|t], n) do
		IO.puts("it's number")
		Enum.filter(t, &( 1 <= &1 and &1 <= i and i <= n ))
	end
	def ordered_pairs([i|t], n) when is_list(i) do
		IO.puts("it's pair")
		ordered_pairs(i, n)
	end
end
