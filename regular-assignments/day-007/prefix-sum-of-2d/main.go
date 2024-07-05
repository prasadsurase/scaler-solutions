package main

import "fmt"

func main() {
	fmt.Printf("%v\n", rangeSum([]int{1, 2, 3, 4, 5}, [][]int{{0, 3}, {1, 2}}))
	fmt.Printf("%v\n", rangeSum([]int{2, 2, 2}, [][]int{{0, 0}, {1, 2}}))
}

func rangeSum(arr []int, queries [][]int) []int64 {
	prefixSum := createPrefix(arr)
	op := []int64{}
	for i := 0; i < len(queries); i++ {
		l := queries[i][0]
		r := queries[i][1]
		sum := 0
		if l == 0 {
			sum += prefixSum[r]
		} else {
			sum += (prefixSum[r] - prefixSum[l-1])
		}
		op = append(op, int64(sum))
	}
	return op
}

func createPrefix(arr []int) []int {
	prefixSum := []int{}
	sum := 0
	for i := 0; i < len(arr); i++ {
		sum += arr[i]
		prefixSum = append(prefixSum, sum)
	}

	return prefixSum
}
