defmodule FileHelper do
  def lines_lengths!(path) do
    File.stream!(path)
    |> Stream.map(&String.replace(&1, "\n", ""))
    |> Enum.map(&(String.length(&1)))
  end

  def longest_line_length!(path) do
    lines_lengths!(path)
    |> Enum.max
  end

  def words_per_line!(path) do
    File.stream!(path)
    |> Stream.map(&String.replace(&1, "\n", ""))
    |> Enum.map(&length(String.split(&1)))
  end
end
