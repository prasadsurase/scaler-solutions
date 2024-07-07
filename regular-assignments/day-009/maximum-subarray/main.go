package main

import "fmt"

func main() {
	fmt.Printf("%v\n", maxSubarray(5, 12, []int{2, 1, 3, 4, 5}))
	fmt.Printf("%v\n", maxSubarray(3, 1, []int{2, 2, 2}))
}

func maxSubarray(size int, limit int, arr []int) int {
	max := 0
	for i := 0; i < len(arr); i++ {
		current_sum := 0
		for j := i; j < len(arr); j++ {
			current_sum += arr[j]
			if current_sum <= limit && current_sum > max {
				max = current_sum
			}
		}
	}
	return max
}
