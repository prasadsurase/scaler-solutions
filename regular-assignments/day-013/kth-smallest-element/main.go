package main

import (
	"fmt"
	"sort"
)

func main() {
	fmt.Printf("%v\n", solve([]int{2, 1, 4, 3, 2}, 3))
	fmt.Printf("%v\n", solve([]int{1, 2}, 2))
	fmt.Printf("%v\n", solve([]int{8, 16, 80, 55, 32, 8, 38, 40, 65, 18, 15, 45, 50, 38, 54, 52, 23, 74, 81, 42, 28, 16, 66, 35, 91, 36, 44, 9, 85, 58, 59, 49, 75, 20, 87, 60, 17, 11, 39, 62, 20, 17, 46, 26, 81, 92, 2}, 9))
}

func solve(arr []int, b int) int {
	sort.Ints(arr)
	return arr[b-1]
}
