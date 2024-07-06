package main

import (
	"fmt"
)

func main() {
	fmt.Printf("%v\n", solve([]int{1, 2, 3}))
	fmt.Printf("%v\n", solve([]int{5, 2, 1, 4}))
	fmt.Printf("%v\n", solve([]int{36, 63, 63, 26, 87, 28, 77, 93, 7}))
}

func solve(arr []int) [][]int {
	result := [][]int{}
	for i := 0; i < len(arr); i++ {
		j := i + 1
		result = append(result, arr[j-1:j])
		for j < len(arr) {
			result = append(result, arr[i:j+1])
			j += 1
		}
	}

	// sort.SliceStable(result, func(i, j int) bool {
	// 	return result[i][0] < result[j][0]
	// })

	return result
}
