#include <iostream>
#include <vector>

class Solution
{
private:
  int m_currentIndex;
  int m_innerIndex;

public:
  Solution() : m_currentIndex(0), m_innerIndex(0) {}
  std::vector<int> twoSum(const std::vector<int> &nums, const int target);
};

int main()
{
  Solution s;

  std::vector<int> input = {2, 7, 11, 15};
  int target = 9;

  auto answer = s.twoSum(input, target);

  std::cout << "Answer: " << answer[0] << ", " << answer[1] << std::endl;
}

std::vector<int> Solution::twoSum(const std::vector<int> &nums, const int target)
{
  this->m_currentIndex = 0;
  this->m_innerIndex = 0;
  std::vector<int> final = {-1, -1};

  for (int number : nums)
  {
    for (int i : nums)
    {
      if (this->m_currentIndex != this->m_innerIndex)
      {
        if (number + i == target)
        {
          final = {this->m_currentIndex, this->m_innerIndex};
          return final;
        }
      }
      this->m_innerIndex++;
    }
    this->m_currentIndex++;
    this->m_innerIndex = 0;
  }

  return final;
}