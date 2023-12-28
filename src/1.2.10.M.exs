# **Given a list of *n* numbers, find the maximum number, and the index of the maximum.**

defmodule Art do
  def max(list) do
    max(list, 0, 0)
  end

  defp max([head | tail], max, index) do
    if head > max do
      max(tail, head, index + 1)
    else
      max(tail, max, index)
    end
  end

  defp max([], max, index) do
    {max, index - 1}
  end
end

# iex> Art.max([2, 3, 4, 2, 1, 2, 3])
# {4, 2}
