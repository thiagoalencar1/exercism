defmodule Username do
  def sanitize([]), do: []

  def sanitize([head | tail]) do
    case head do
      char when char in ?a..?z -> [char | sanitize(tail)]
      char when char == ?_ -> [char | sanitize(tail)]
      char when char == ?ö -> [?o,?e | sanitize(tail)]
      char when char == ?ä -> [?a,?e | sanitize(tail)]
      char when char == ?ü -> [?u,?e | sanitize(tail)]
      char when char == ?ß -> [?s,?s |  sanitize(tail)]
      _ -> sanitize(tail)
    end
  end
end
