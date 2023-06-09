nums = [1, 3, 5, 7, 9]
target = 12

def two_sum(nums, target)
    for num, i in nums.each_with_index
        for num2, j in nums.each_with_index
            if j != i and num + num2 == target
                return [i, j]
            end
            if j and i == nums.length - 1
                return nil
            end
        end
    end
end

puts two_sum(nums, target)

#tests for two_sum
puts two_sum([1, 2, 3], 4) == [0, 2]
puts two_sum([1, 2, 3], 5) == [1, 2]
puts two_sum([1, 2, 3], 6) == nil
puts two_sum([1, 2, 3], 7) == nil
puts two_sum([1, 2, 3], 8) == nil
puts two_sum([1, 2, 3], 9) == nil
puts two_sum([1, 2, 3], 10) == nil