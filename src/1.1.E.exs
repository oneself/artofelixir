# **Given two positive integers m and n, find their greatest common divisor.**

defmodule Art do
  def lcd(m, n) do
    if rem(m, n) == 0 do
      n
    else
      lcd(n, rem(m, n))
    end
  end
end

# iex(1)> c "1.1.E.exs"
# [Art]
# iex(2)> Art.lcd(119, 544)
# 17
# iex(3)>
