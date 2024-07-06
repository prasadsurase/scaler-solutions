package main

import "fmt"

func main() {
	fmt.Printf("%v\n", solve([]int{4, 3, 2, 6}, 1, 3))
	fmt.Printf("%v\n", solve([]int{4, 2, 2}, 0, 1))
}

func solve(arr []int, start, end int) []int {
	return arr[start : end+1]
}
