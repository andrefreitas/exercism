defmodule Bob do
  def hey(input) do
    cond do
      silent?(input) -> "Fine. Be that way!"
      yell?(input) and question?(input) -> "Calm down, I know what I'm doing!"
      question?(input) -> "Sure."
      yell?(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  def silent?(input) do
    String.trim(input) == ""
  end

  def question?(input) do
    String.ends_with?(input, "?")
  end

  def yell?(input) do
    letters?(input) and String.upcase(input) == input
  end

  def letters?(input) do
    String.match?(input, ~r/\p{L}/)
  end
end
