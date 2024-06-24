defmodule LibraryFees do
  def datetime_from_string(string), do: NaiveDateTime.from_iso8601!(string)

  def before_noon?(datetime), do: datetime |> NaiveDateTime.to_time() |> Time.compare(~T[12:00:00]) == :lt

  def return_date(checkout_datetime) do
    NaiveDateTime.to_date(checkout_datetime)
    |> Date.add(if before_noon?(checkout_datetime), do: 28, else: 29)
  end

  def days_late(planned_return_date, actual_return_datetime) do
    actual_return_datetime
    |> Date.diff(planned_return_date)
    |> max(0)
  end

  def monday?(datetime) do
    # Please implement the monday?/1 function
  end

  def calculate_late_fee(checkout, return, rate) do
    # Please implement the calculate_late_fee/3 function
  end
end
