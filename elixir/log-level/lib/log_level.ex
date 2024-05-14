defmodule LogLevel do
  def to_label(level, legacy?) do
      cond do
        level == 0 && !legacy? -> :trace
        level == 0 && legacy? -> :unknown
        level == 1 -> :debug
        level == 2 -> :info
        level == 3 -> :warning
        level == 4 -> :error
        level == 5 && !legacy? -> :fatal
        level == 5 && legacy? -> :unknown
        true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    cond do
      legacy? && LogLevel.to_label(level, legacy?) == :unknown -> :dev1
      !legacy? && LogLevel.to_label(level, legacy?) == :unknown -> :dev2
      LogLevel.to_label(level, legacy?) == :fatal -> :ops
      LogLevel.to_label(level, legacy?) == :error -> :ops
      true -> false
    end
  end
end
