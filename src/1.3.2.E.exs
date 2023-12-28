
# **Given an year, calculate the date at which Easter falls.**

defmodule Art do
  def easter(y) do
    g = rem(y, 19) + 1
    c = div(y, 100) + 1
    x = div(3 * c, 4) - 12
    z = div(8 * c + 5, 25) - 5
    d = div(5 * y, 4) - x - 10
    e1 = rem(11 * g + 20 + z - x, 30)
    e2 = if e1 == 25 && g > 11 do
           e1 + 1
         else
           e1
         end
    n1 = 44 - e2
    n2 = if n1 < 21 do
           n1 + 30
         else
           n1
         end
    n3 = n2 + 7 - rem(d + n2, 7)
    if n3 > 31 do
      "#{n3 - 31} April, #{y}"
    else
      "#{n3} March, #{y}"
    end
  end
end

# iex> Art.easter 2012
# "8 April, 2012"
