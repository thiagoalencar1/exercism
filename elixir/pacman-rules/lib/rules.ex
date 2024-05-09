defmodule Rules do
  def eat_ghost?(power_pellet_active?, touching_ghost?)
  def eat_ghost?(true, true), do: true
  def eat_ghost?(_, _), do: false

  def score?(touching_power_pellet?, touching_dot?)
  def score?(true, false), do: true
  def score?(false, true), do: true
  def score?(_, _), do: false

  def lose?(power_pellet_active?, touching_ghost?)
  def lose?(false, true), do: true
  def lose?(_, _), do: false

  def win?(has_eaten_all_dots?, power_pellet_active?, touching_ghost?) do
    has_eaten_all_dots? |> Kernel.and(not lose?(power_pellet_active?, touching_ghost?))
  end
end
