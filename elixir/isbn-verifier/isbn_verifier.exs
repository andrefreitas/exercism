defmodule ISBNVerifier do
  @isbn_regex ~r/^\d-?\d{3}-?\d{5}-?[\dX]$/
  @doc """
    Checks if a string is a valid ISBN-10 identifier

    ## Examples

      iex> ISBNVerifier.isbn?("3-598-21507-X")
      true

      iex> ISBNVerifier.isbn?("3-598-2K507-0")
      false

  """
  @spec isbn?(String.t()) :: boolean
  def isbn?(isbn) do
    valid?(isbn) && formula_check?(to_digits(isbn))
  end

  defp valid?(isbn) do
    String.match?(isbn, @isbn_regex)
  end

  defp formula_check?(digits) do
    sum = digits
      |> Enum.zip(1..10)
      |> Enum.map(fn {digit, k} -> k * digit end)
      |> Enum.sum
      |> rem(11)

    sum == 0
  end

  defp to_digits(isbn) do
    isbn
      |> String.replace("-", "")
      |> String.graphemes
      |> Enum.map(
        fn
          "X" -> 10
          ch -> String.to_integer(ch)
        end
      )
  end

end
