defmodule GuessingGame do
  # guard method signature for inputting hig and low in the wrong order.
  def guess(high, low) when high > low, do: guess(low, high)

  # main implementation of the guess method
  def guess(low, high) do
    answer = IO.gets("Hmmm... maybe you are thinking of #{mid(low, high)}.\n")

    case String.trim(answer) do
      "bigger" ->
        bigger(low, high)

      "smaller" ->
        smaller(low, high)

      "yes" ->
        "I knew I could guess your number!\n"

      _ ->
        IO.puts ~s{Type "bigger", "smaller" or "yes".}
        guess(low, high)
    end
  end

  def mid(low, high) do
    div(low + high, 2)
  end

  def bigger(low, high) do
    new_low = min(high, mid(low, high) + 1)
    guess(new_low, high)
  end

  def smaller(low, high) do
    new_high = max(low, mid(low, high) - 1)
    guess(low, new_high)
  end
end
