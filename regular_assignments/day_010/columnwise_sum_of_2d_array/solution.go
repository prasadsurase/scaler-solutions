package columnWiseSumOfMatrix

func Call() {
	solve([][]int{{1, 2, 3, 4}, {5, 6, 7, 8}, {9, 2, 3, 4}})
	solve([][]int{{1, 1, 1}, {1, 1, 1}, {1, 1, 1}})
}

func solve(matrix [][]int) []int {
	sum := matrix[0]
	for i := 1; i < len(matrix); i++ {
		for j := 0; j < len(matrix[i]); j++ {
			sum[j] += matrix[i][j]
		}
	}
	return sum
}
