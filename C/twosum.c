#include <stdio.h>
#include <stdlib.h>

int length(void *arr)
{
  return sizeof(arr) / sizeof(arr[0]);
}

struct solution
{
  int currentIndex;
  int innerIndex;
};

void two_sum(struct solution *this, int nums[], int target, int final[2])
{
  this->currentIndex = 0;
  this->innerIndex = 0;
  final[0] = -1;
  final[1] = -1;

  for (int index_y = 0; index_y < length(nums); index_y++)
  {
    int number = nums[index_y];
    for (int index_x = 0; index_x < length(nums); index_x++)
    {
      int i = nums[index_x];
      if (this->currentIndex != this->innerIndex)
      {
        if (number + i == target)
        {
          final[0] = this->currentIndex;
          final[1] = this->innerIndex;
        }
      }
      this->innerIndex++;
    }
    this->currentIndex++;
    this->innerIndex = 0;
  }
}

int main()
{
  struct solution *s = malloc(sizeof(struct solution));

  int input[] = {2, 7, 11, 15};
  int target = 9;
  int final[2];

  two_sum(s, input, target, final);

  printf("%i, %i", final[0], final[1]);
}