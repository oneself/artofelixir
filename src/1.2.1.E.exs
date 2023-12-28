
# **Given two positive integers m and n, find their largest common divisor d and also a and b such that (am + bn = d).**

defmodule Art do
  def elcd(m, n) do
    if m < n do
      elcd(n, m)
    else
      pelcd(m, 0, 1, n, 1, 0)
    end
  end

  defp pelcd(c, a1, b1, d, a2, b2) do
    if c == 1 || d == 0 do
      {c, a1, b1}
    else
      q = div(c, d)
      pelcd(d, a2, b2, c - q * d, a1 - q * a2, b1 - q * b2)
    end
  end
end

# iex> c "1.2.1.E.exs"
# iex> Art.elcd(1769, 551)
# {29, -16, 5}
