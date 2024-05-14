defmodule LanguageList do
  def new(), do: []

  def add(list, language), do: list |> List.insert_at(0, language)

  def remove(list), do: list |> List.delete_at(0)

  def first(list) do
    [head | _tail] = list
    head
  end

  def count(list), do: list |> Enum.count()

  def functional_list?(list) do
    cond do
      "Elixir" in list -> true
      true -> false
    end
  end
end
