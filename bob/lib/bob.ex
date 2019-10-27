defmodule Bob do
  defp question?(input) do
    input |> String.ends_with?("?")
  end

  defp empty?(input) do
    input
    |> String.trim()
    |> String.length() == 0
  end

  defp yelling?(input) do
    input
    |> String.upcase() == input and
      input
      |> String.downcase() != input
  end

  def hey(input) do
    cond do
      empty?(input) -> "Fine. Be that way!"
      yelling?(input) and question?(input) -> "Calm down, I know what I'm doing!"
      yelling?(input) -> "Whoa, chill out!"
      question?(input) -> "Sure."
      true -> "Whatever."
    end
  end
end
