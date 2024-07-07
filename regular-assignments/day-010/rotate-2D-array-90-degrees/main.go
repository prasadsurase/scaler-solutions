package main

import "fmt"

func main() {
	matrix := [][]int{{1, 2, 3}, {4, 5, 6}, {7, 8, 9}}
	solve(&matrix)
	fmt.Printf("%v\n", matrix)
	matrix = [][]int{{1, 2, 3, 4}, {5, 6, 7, 8}, {9, 10, 11, 12}, {13, 14, 15, 16}}
	solve(&matrix)
	fmt.Printf("%v\n", matrix)
}

func solve(matrix *[][]int) {
	rows := len(*matrix)
	columns := rows

	// transpose
	for row := 0; row < rows; row++ {
		for col := row + 1; col < columns; col++ {
			temp := (*matrix)[row][col]
			(*matrix)[row][col] = (*matrix)[col][row]
			(*matrix)[col][row] = temp
		}
	}

	// reverse each row
	for row := 0; row < rows; row++ {
		i := 0
		j := columns - 1
		for i < j {
			temp := (*matrix)[row][i]
			(*matrix)[row][i] = (*matrix)[row][j]
			(*matrix)[row][j] = temp
			i++
			j--
		}
	}
}
