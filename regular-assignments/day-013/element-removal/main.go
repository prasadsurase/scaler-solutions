package main

import (
	"fmt"
	"slices"
	"sort"
)

func main() {
	fmt.Printf("%v\n", solve([]int{2, 1}))
	fmt.Printf("%v\n", solve([]int{5}))
	fmt.Printf("%v\n", solve([]int{8, 0, 10}))
}

func solve(arr []int) int {
	sort.Ints(arr)
	slices.Reverse(arr)

	cost := 0
	for i := 0; i < len(arr); i++ {
		for j := i; j < len(arr); j++ {
			cost += arr[j]
		}
	}
	return cost
}
