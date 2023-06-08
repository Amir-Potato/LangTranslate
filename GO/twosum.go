package main

import "fmt"

type solution struct {
	currentIndex int
	innerIndex   int
}

func twoSum(this *solution, nums [4]int, target int) [2]int {
	this.currentIndex = 0
	this.innerIndex = 0
	final := [2]int{-1, -1}

	for _, number := range nums {
		for _, i := range nums {
			if this.currentIndex != this.innerIndex {
				if number+i == target {
					final[0] = this.currentIndex
					final[1] = this.innerIndex
					return final
				}
			}
			this.innerIndex++
		}
		this.currentIndex++
		this.innerIndex = 0
	}
	return final
}

func main() {
	s := solution{}

	nums := [4]int{2, 7, 11, 15}
	target := 9

	answer := twoSum(&s, nums, target)

	fmt.Println(answer)
}
