package main

func main() {

	solve([]int{1, 1, 1})
}

func solve(arr []int) []int {
	prefix_sum := []int{arr[0]}
	for i := 1; i < len(arr); i++ {
		prefix_sum = append(prefix_sum, prefix_sum[i-1]+arr[i])
	}
	return prefix_sum
}
