package goodPair

func Call() {
	solve([]int{1, 2, 3, 4}, 7)
	solve([]int{1, 2, 4}, 4)
	solve([]int{1, 2, 2}, 4)
}

func solve(arr []int, sum int) int {
	found := 0
	for i := 0; i < len(arr); i++ {
		for j := i + 1; j < len(arr); j++ {
			if arr[i]+arr[j] == sum {
				found = 1
			}
		}
	}
	return found
}
