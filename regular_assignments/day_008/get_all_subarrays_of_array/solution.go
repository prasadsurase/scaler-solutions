package allSubArrays

func Call() {
	solve([]int{1, 2, 3})
	solve([]int{5, 2, 1, 4})
	solve([]int{36, 63, 63, 26, 87, 28, 77, 93, 7})
}

func solve(arr []int) [][]int {
	result := [][]int{}
	for i := 0; i < len(arr); i++ {
		j := i + 1
		result = append(result, arr[j-1:j])
		for j < len(arr) {
			result = append(result, arr[i:j+1])
			j += 1
		}
	}
	return result
}
