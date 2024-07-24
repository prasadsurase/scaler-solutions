package smallestSubArrayWithMinMaxElements

func Call() {
	solve([]int{1, 3, 2})
	solve([]int{2, 6, 1, 6, 9})
}

func solve(arr []int) int {
	min, max := findMinMax(arr)
	if min == max {
		return 1
	}
	lastMinIndx := -1
	lastMaxIndx := -1
	ans := len(arr)
	for i := 0; i < ans; i++ {
		if arr[i] == max {
			if lastMinIndx != -1 {
				ans = findMin(ans, i-lastMinIndx+1)
			}
			lastMaxIndx = i
		} else if arr[i] == min {
			if lastMaxIndx != -1 {
				ans = findMin(ans, i-lastMaxIndx+1)
			}
			lastMinIndx = i
		} else {
			ans = findMin(ans, len(arr))
		}
	}
	return ans
}

func findMinMax(arr []int) (int, int) {
	inf := 10000000000
	min := inf
	max := -inf
	for i := 0; i < len(arr); i++ {
		min = findMin(arr[i], min)
		max = findMax(arr[i], max)
	}
	return min, max
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
