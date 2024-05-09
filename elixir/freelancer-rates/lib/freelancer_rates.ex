defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate
    |> Kernel.*(8.0)
  end

  def apply_discount(before_discount, discount), do: before_discount * (1-(discount/100))

  def monthly_rate(hourly_rate, discount) do
    hourly_rate
    |> daily_rate()
    |> Kernel.*(22)
    |> apply_discount(discount)
    |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    hourly_rate
    |> daily_rate()
    |> apply_discount(discount)
    |> budget_div(budget)
    |> Float.floor(1)
  end

  defp budget_div(final_price, budget), do: budget / final_price
end
