defmodule BasketballWebsite do
  def extract_from_path(data, path) do
    do_extract_from_path(data, String.split(path, ".")) |> dbg()
  end

  defp do_extract_from_path(data, []), do: data
  defp do_extract_from_path(data, [key | rest]) do
    do_extract_from_path(data[key], rest)
  end

  def get_in_path(data, path) do
    # Please implement the get_in_path/2 function
  end
end
