package sumOfMinMax

func Call() {
	solve([]int{1, 2, 3, 4, 5})
}

func solve(arr []int) int {
	inf := 10000000000
	min := inf
	max := -inf
	for i := 0; i < len(arr); i++ {
		min = findMin(arr[i], min)
		max = findMax(arr[i], max)
	}
	return max + min
}

func findMin(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func findMax(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}
