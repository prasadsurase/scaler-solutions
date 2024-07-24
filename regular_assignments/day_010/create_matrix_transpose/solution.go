package matrixTanspose

func Call() {
	solve([][]int{{1, 2, 3}, {4, 5, 6}, {7, 8, 9}})
	solve([][]int{{1, 2, 3, 4}, {5, 6, 7, 8}})
}

func solve(matrix [][]int) [][]int {
	transpose := [][]int{}
	rows := len(matrix)
	columns := len(matrix[0])

	for col := 0; col < columns; col++ {
		newRow := []int{}
		for row := 0; row < rows; row++ {
			newRow = append(newRow, matrix[row][col])
		}
		transpose = append(transpose, newRow)
	}
	return transpose
}
