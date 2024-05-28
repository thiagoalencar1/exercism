defmodule BirdCount do
  def today([]), do: nil
  def today(list) do
    [head | _tail] = list
    head
  end

  def increment_day_count([]), do: [1]
  def increment_day_count(list) do
    [head | tail] = list
    head = head + 1
    [head | tail]
  end

  def has_day_without_birds?(list) do
    Enum.member?(list, 0)
  end

  def total([]), do: 0
  def total(list), do: Enum.reduce(list, fn(x, acc) -> x + acc end)

  def busy_days([]), do: 0
  def busy_days([1]), do: 0
  def busy_days(list), do: Enum.count(list, fn(x) -> x >= 5 end)
end
