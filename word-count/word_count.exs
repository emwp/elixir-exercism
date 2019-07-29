defmodule Words do
  @spec count(String.t()) :: map()
  def count(sentence) do
    words =
      String.replace(sentence, ~r/[,.:;"|@£$%^&*+`!?]/, "")
      |> String.split(~r/[ _]+/)

    Enum.reduce(words, Map.new(), fn word, acc ->
      word = String.downcase(word)
      Map.update(acc, word, 1, &(&1 + 1))
    end)
  end
end
