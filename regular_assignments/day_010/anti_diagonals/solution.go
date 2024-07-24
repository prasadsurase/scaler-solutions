package matrixOfAntiDiagonalElements

func Call() {
	// fmt.Printf("%v\n", diagonal([][]int{{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}))
	diagonal([][]int{{1, 2, 3, 4}, {5, 6, 7, 8}})
}

func diagonal(matrix [][]int) [][]int {
	rows := len(matrix)
	columns := len(matrix[0])
	records := [][]int{}

	for col := 0; col < columns; col++ {
		i := 0
		j := col
		newRow := []int{}
		for i < columns && j >= 0 && i < rows && j < columns {
			newRow = append(newRow, matrix[i][j])
			i++
			j--
		}
		for rowCount := len(newRow); rowCount < columns; rowCount++ {
			newRow = append(newRow, 0)
		}
		records = append(records, newRow)
	}

	for row := 1; row < rows; row++ {
		i := row
		j := columns - 1
		newRow := []int{}
		for i < columns && j >= 0 && i < rows && j < columns {
			newRow = append(newRow, matrix[i][j])
			i++
			j--
		}
		for rowCount := len(newRow); rowCount < columns; rowCount++ {
			newRow = append(newRow, 0)
		}
		records = append(records, newRow)
	}

	return records
}
