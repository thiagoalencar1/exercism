defmodule Lasagna do
  @total_oven_time 40
  @layer_time 2

  def expected_minutes_in_oven, do: @total_oven_time
  def remaining_minutes_in_oven(partial_oven_time), do: @total_oven_time - partial_oven_time
  def preparation_time_in_minutes(layers), do: layers * @layer_time
  def total_time_in_minutes(layers, partial_oven_time), do: preparation_time_in_minutes(layers) + partial_oven_time
  def alarm, do: "Ding!"
end
