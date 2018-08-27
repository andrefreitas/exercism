defmodule SecretHandshake do
  use Bitwise

  @bits %{
    0b1 => "wink",
    0b10 => "double blink",
    0b100 => "close your eyes",
    0b1000 => "jump"
  }
  @reverse 0b10000

  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    @bits
      |> Enum.filter(fn {bit, _} -> contains?(code, bit) end)
      |> Enum.map(fn {_, shake} -> shake end)
      |> reverse(code)
  end

  defp reverse(commands, code) do
    if contains?(code, @reverse), do: Enum.reverse(commands), else: commands
  end

  defp contains?(code, bit), do: (bit &&& code) > 0
end
