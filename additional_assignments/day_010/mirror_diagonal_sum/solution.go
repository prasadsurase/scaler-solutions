package mirrorDiagonalSum

func Call() {
	solve([][]int{{1, 2, 3}, {4, 5, 6}, {7, 8, 9}})
}

func solve(matrix [][]int) int {
	sum := 0
	rows := len(matrix)
	columns := len(matrix[0])
	row := 0
	col := columns - 1

	for row < rows && col >= 0 {
		sum += matrix[row][col]
		col--
		row++
	}

	return sum
}
