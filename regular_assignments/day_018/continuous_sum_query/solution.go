package continuousSumQuery

import "fmt"

func Call() {
	fmt.Printf("%+v\n", solve(8, [][]int{{1, 4, 3}, {0, 5, -1}, {2, 2, 4}, {4, 6, 3}}))
	fmt.Printf("%+v\n", solve(5, [][]int{{1, 2, 10}, {2, 3, 20}, {2, 5, 25}}))
}

func solve(n int, queries [][]int) []int {
	arr := make([]int, n)
	for i := 0; i < len(queries); i++ {
		strt := queries[i][0]
		end := queries[i][1]
		val := queries[i][2]

		if strt-1 >= 0 {
			arr[strt-1] += val
		}

		if end < len(arr) {
			arr[end] += (-1 * val)
		}
	}
	return createPrefixSum(arr)
}

func createPrefixSum(arr []int) []int {
	prefixSum := []int{arr[0]}
	for i := 1; i < len(arr); i++ {
		prefixSum = append(prefixSum, prefixSum[i-1]+arr[i])
	}
	return prefixSum
}
