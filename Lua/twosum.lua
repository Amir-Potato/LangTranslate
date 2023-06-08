local nums = { 2, 4, 5, 15 }
local target = 9

local function twosum(nums, target)
    for i, num in ipairs(nums) do
        for j , num2 in ipairs(nums) do
            if i ~= j and num + num2 == target then
                return i, j
            end
        end
    end
end

local result1, result2 = twosum(nums, target)
print(string.format("nums = %s", table.concat(nums, ", ")))
print(string.format("target = %d", target))
print(string.format("result is:\n %d %d", result1, result2))

print("Also note that a feature of LUA is that indexing starts at 1, not 0.\n")
print(string.format("Therefore, the result for the function with traditional indexing would be:\n %d %d", result1 - 1 , result2 - 1))
