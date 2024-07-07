package main

import "fmt"

func main() {
	fmt.Printf("%v\n", solve([][]int{{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}))
}

func solve(matrix [][]int) []int {
	sums := []int{}
	for row := 0; row < len(matrix); row++ {
		sums = append(sums, sum(matrix[row]))
	}
	return sums
}

func sum(arr []int) int {
	sum := 0
	for i := 0; i < len(arr); i++ {
		sum += arr[i]
	}
	return sum
}
