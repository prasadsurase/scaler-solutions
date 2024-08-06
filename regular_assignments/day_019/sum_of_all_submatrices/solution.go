package sumofAllSubmatrices

import (
	"fmt"
)

func Call() {
	mat := [][]int{{1, 1}, {1, 1}}
	fmt.Printf("Matrix: %v, total: %v\n", mat, solve(mat))
	mat = [][]int{{1, 2}, {3, 4}}
	fmt.Printf("Matrix: %v, total: %v\n", mat, solve(mat))
}

func solve(mat [][]int) int {
	total := 0
	n := len(mat)
	m := len(mat[0])
	for i := 0; i < n; i++ {
		for j := 0; j < m; j++ {
			topLeft := (i + 1) * (j + 1)
			bottomRight := (n - i) * (m - j)
			contribution := mat[i][j] * topLeft * bottomRight
			total += contribution
		}
	}
	return total
}
