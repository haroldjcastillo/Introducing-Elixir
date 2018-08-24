defmodule Hlp do
		
	def map([], fun) do [] end
	def map([h|t], fun) do
		[fun.(h) | map(t, fun)]
	end

	def filter([], pred?) do [] end
	def filter([h|t], pred?) do
			fn(true) -> [h |filter(t, pred?)]
		  (false) ->filter(t, pred?)
		end.(pred?.(h))
	end

	def fold([], op, id) do id end
	def fold([h|t], op, id) do
		IO.puts("#{h} #{t}")
		op.(h, fold(t, op, id))
	end

	# Hlp.flat_map([{1,3}, {4,5}], fn {x,y} -> x..y end)
	def flat_map([], fun) when is_function(fun, 1) do [] end
	def flat_map([h|t], fun) do
		case fun.(h) do
			list when is_list(list) -> 
				IO.puts("Lista")
				list ++ flat_map(t, fun)
			other -> 
				IO.puts("other")
				Enum.to_list(other) ++ flat_map(t, fun)
		end
	end

	def primes(num) do
       		sieve(Enum.to_list(2..num))
        end

        def sieve([]) do [] end
        def sieve([h|t]) do
                IO.puts("#{h}")
		[h | sieve(Enum.filter(t, fn elem -> rem(elem, h) != 0 end))]
	end

end

