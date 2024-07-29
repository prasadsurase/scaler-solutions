package trappedRainWater

func Call() {
	arr := []int{1, 2, 3, 2, 1}
	solve(arr)
	arr = []int{2, 1, 3, 2, 1, 2, 4, 3, 2, 1, 3, 1}
	solve(arr)
}

func solve(arr []int) int {
	// return bruteForce(arr)
	return optimizedSolution(arr)
}

func optimizedSolution(arr []int) int {
	if len(arr) < 2 {
		return 0
	}
	prefixMax := calculatePrefixMax(arr)
	suffixMax := calculateSuffixMax(arr)

	ans := 0
	for i := 1; i < len(arr)-1; i++ {
		maxLeft := prefixMax[i-1]
		maxRight := suffixMax[i+1]
		min := 0
		if maxLeft > maxRight {
			min = maxRight
		} else {
			min = maxLeft
		}
		water := min - arr[i]

		if water > 0 {
			ans += water
		}
	}
	return ans
}

func bruteForce(arr []int) int {
	if len(arr) < 2 {
		return 0
	}

	ans := 0
	for i := 1; i < len(arr)-1; i++ {
		maxLeft := maxHeight(arr, 0, i-1)
		maxRight := maxHeight(arr, i+1, len(arr)-1)
		min := 0
		if maxLeft > maxRight {
			min = maxRight
		} else {
			min = maxLeft
		}
		water := min - arr[i]

		if water > 0 {
			ans += water
		}
	}
	return ans
}

func maxHeight(arr []int, start, end int) int {
	max := 0
	if start == end {
		max = arr[start]
	}
	for i := start; i <= end; i++ {
		if arr[i] > max {
			max = arr[i]
		}
	}
	return max
}

func calculatePrefixMax(arr []int) []int {
	pf := make([]int, len(arr), cap(arr))
	max := 0
	for i := 0; i < len(arr); i++ {
		if arr[i] > max {
			max = arr[i]
		}
		pf[i] = max
	}
	return pf
}

func calculateSuffixMax(arr []int) []int {
	sf := make([]int, len(arr), cap(arr))
	max := 0
	for i := len(arr) - 1; i >= 0; i-- {
		if arr[i] > max {
			max = arr[i]
		}
		sf[i] = max
	}
	return sf
}
