

# **Prove that f(n) and g(n) are equal for all values of n.**

# I'm not sure how to write a program in Elixir that will prove function equality for all values of n.  So instead, I'm
# going to write a function that checks for equality for a specified n...  I know, I know, it's not even close.

defmodule Art do
  def induction(f, g, n) do
    if n == 0 do
      true
    else
      if f.(n) != g.(n) do
        false
      else
        induction(f, g, n - 1)
      end
    end
  end
end

# iex> c "1.2.1.I.exs"
# iex> f = fn x -> Enum.reduce(1..x, 0, fn i, acc -> f.(i) + acc end) end
# iex> g = fn x -> x * x end
# iex> Art.induction(f, g, 1000)
# true
