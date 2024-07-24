package findBalancedArrayIndex

func Call() {
	solve([]int{2, 1, 6, 4})
	solve([]int{1, 1, 1})
	solve([]int{1, 2, 3, 4, 5, 6, 7, 8, 9})
}

func solve(arr []int) int {
	odd_prefix_sum := createOddPrefixSum(arr)
	even_prefix_sum := createEvenPrefixSum(arr)

	count := 0
	for i := 0; i < len(arr); i++ {
		sum_even := 0
		sum_odd := 0
		if i == 0 {
			sum_odd = even_prefix_sum[len(arr)-1] - even_prefix_sum[i]
			sum_even = odd_prefix_sum[len(arr)-1] - odd_prefix_sum[i]
		} else {
			sum_odd = odd_prefix_sum[i-1] + (even_prefix_sum[len(arr)-1] - even_prefix_sum[i+1-1])
			sum_even = even_prefix_sum[i-1] + (odd_prefix_sum[len(arr)-1] - odd_prefix_sum[i+1-1])
		}
		if sum_even == sum_odd {
			count++
		}
	}
	return count
}

func createEvenPrefixSum(arr []int) []int {
	sum := []int{arr[0]}
	for i := 1; i < len(arr); i++ {
		if i%2 == 0 {
			sum = append(sum, sum[i-1]+arr[i])
		} else {
			sum = append(sum, sum[i-1])
		}
	}
	return sum
}

func createOddPrefixSum(arr []int) []int {
	sum := []int{0}
	for i := 1; i < len(arr); i++ {
		if i%2 != 0 {
			sum = append(sum, sum[i-1]+arr[i])
		} else {
			sum = append(sum, sum[i-1])
		}
	}
	return sum
}
