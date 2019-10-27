defmodule Roman do
  @doc """
  Convert the number to a roman number.
  """
  @roman_numerals [
    {1000, "M"},
    {900, "CM"},
    {500, "D"},
    {400, "CD"},
    {100, "C"},
    {90, "XC"},
    {50, "L"},
    {40, "XL"},
    {10, "X"},
    {9, "IX"},
    {5, "V"},
    {4, "IV"},
    {1, "I"}
  ]

  @spec numerals(pos_integer) :: String.t()
  def numerals(number) do
    find_numerals(@roman_numerals, "", number)
  end

  defp find_numerals([], acc, _), do: acc

  defp find_numerals([{numeral, roman} | _] = list, acc, number) when number >= numeral do
    acc = acc <> roman
    find_numerals(list, acc, number - numeral)
  end

  defp find_numerals([_ | tail], acc, number) do
    find_numerals(tail, acc, number)
  end
end
