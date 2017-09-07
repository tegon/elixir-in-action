defmodule ListHelperTest do
  use ExUnit.Case, async: true

  test "returns the length of the list" do
    assert ListHelper.list_len([1, 2, 3]) == 3
  end

  test "returns zero when the list is empty" do
    assert ListHelper.list_len([]) == 0
  end

  test "returns a range from two given numbers" do
    assert ListHelper.range(1, 5) == [1, 2, 3, 4, 5]
  end

  test "returns only positive numbers" do
    assert ListHelper.positive([-1, -2, 0, 1]) == [0, 1]
  end
end
