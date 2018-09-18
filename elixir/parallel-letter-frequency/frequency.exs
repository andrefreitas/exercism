defmodule Frequency do
  @doc """
  Count letter frequency in parallel.

  Returns a map of characters to frequencies.

  The number of worker processes to use can be set with 'workers'.
  """
  @spec frequency([String.t()], pos_integer) :: map
  def frequency(texts, workers) do
    texts
      |> Task.async_stream(__MODULE__, :count_chars, [], max_concurrency: workers)
      |> Enum.reduce(%{}, fn({:ok, m}, acc) -> Map.merge(acc, m, fn _k, v1, v2 ->  v1 + v2 end) end)
  end

  def count_chars(str) do
    Regex.scan(~r/\pL/u, String.downcase(str))
      |> Enum.group_by(fn [c] -> c end)
      |> Map.new(fn {c, cs} -> {c, Enum.count(cs)} end)
  end
end
