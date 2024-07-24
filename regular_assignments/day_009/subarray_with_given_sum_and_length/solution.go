package subArrayWithGiveSumAndLength

func Call() {
	solve([]int{4, 3, 2, 6, 1}, 3, 11)
	solve([]int{4, 3, 2, 6, 1}, 4, 6)
}

func solve(arr []int, expectedLen, expectedSum int) int {
	prefixSumArr := createPrefixSum(arr)
	exists := 0
	i := 0
	j := expectedLen - 1
	for j < len(arr) {
		sum := 0
		if i == 0 {
			sum = prefixSumArr[j]
		} else {
			sum = prefixSumArr[j] - prefixSumArr[i-1]
		}
		if sum == expectedSum {
			exists = 1
		}
		i++
		j++
	}
	return exists
}

func createPrefixSum(arr []int) []int {
	prefix_sum := []int{arr[0]}
	for i := 1; i < len(arr); i++ {
		prefix_sum = append(prefix_sum, prefix_sum[i-1]+arr[i])
	}
	return prefix_sum
}
