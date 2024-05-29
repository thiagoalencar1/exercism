defmodule HighScore do
  @initial_score 0
  def new(), do: %{}

  def add_player(scores, name, score \\ @initial_score), do: Map.put(scores, name, score)

  def remove_player(scores, name), do: Map.delete(scores, name)

  def reset_score(scores, name), do: Map.put(scores, name, @initial_score)

  def update_score(scores, name, score) do
    scores
    |> Map.get(name)
    |> case do
        nil -> Map.put(scores, name, score)
        _ -> Map.update!(scores, name, &(&1 + score))
    end
  end


  def get_players(scores), do: Map.keys(scores)
end
