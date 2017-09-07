defmodule FileHelperTest do
  use ExUnit.Case, async: true

  test "returns the length of the each file line" do
    assert FileHelper.lines_lengths!('file.txt') == [4, 2, 6, 23]
  end

  test "returns the length of longest file line" do
    assert FileHelper.longest_line_length!('file.txt') == 23
  end

  test "returns the words count of file per line" do
    assert FileHelper.words_per_line!('file.txt') == [1, 1, 2, 4]
  end
end
