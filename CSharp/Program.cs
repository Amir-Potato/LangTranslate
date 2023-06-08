
Solution s = new Solution();

int[] input = { 2, 7, 11, 15 };

Console.WriteLine(s.twoSum(input, 9));

public class Solution
{
  public (int, int) twoSum(int[] nums, int target)
  {
    int current_index = 0;
    int inner_index = 0;
    (int, int) final = (-1, -1);


    foreach (int number in nums)
    {
      foreach (int i in nums)
      {
        if (current_index != inner_index)
        {
          if ((number + i) == target)
          {
            final = (current_index, inner_index);
            return final;
          }
        }
        inner_index++;
      }
      current_index++;
      inner_index = 0;
    }

    return final;
  }
}


