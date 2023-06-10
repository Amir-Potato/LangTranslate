const std = @import("std");

fn two_sum(nums: [4]i32, target: i32) [2]i64 {
    for (nums) |num, i| {
        for (nums) |num2, j| {
            if (i != j and num + num2 == target) {
                return [2]i64{ @intCast(i64, i), @intCast(i64, j) };
            }
        }
    }
    return [2]i64{ -1, -1 };
}
test "two_sum positive case" {
    const nums = [4]i32{ 2, 7, 11, 15 };
    const target = 9;
    const expected = [2]i64{ 0, 1 };
    const result = two_sum(nums, target);
    try std.testing.expectEqualSlices(i64, &expected, &result);
}

test "two_sum negative case" {
    const nums = [4]i32{ 2, 7, 11, 15 };
    const target = 30;
    const expected = [2]i64{ -1, -1 };
    const result = two_sum(nums, target);
    try std.testing.expectEqualSlices(i64, &expected, &result);
}

pub fn main() !void {
    const nums = [4]i32{ 2, 7, 11, 15 };
    const target = 26;
    const result = two_sum(nums, target);
    std.debug.print("Result: {any}\n", .{result});
}
