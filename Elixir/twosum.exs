
defmodule TwoSum do
  def twosum(nums, target) do
    for n1 <- nums, n2 <- nums, n1 + n2 == target, do: [n1, n2]
  end
end
#test of twosum
IO.inspect TwoSum.twosum([2, 7, 11, 15], 9)
