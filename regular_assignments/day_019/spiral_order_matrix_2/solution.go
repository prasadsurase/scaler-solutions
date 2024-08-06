package spiralOrderMatrix2

import "fmt"

func Call() {
	generateMatrix(1)
	generateMatrix(2)
	generateMatrix(3)
	generateMatrix(4)
	generateMatrix(5)
	generateMatrix(21)
}

func generateMatrix(size int) [][]int {
	if size == 1 {
		return [][]int{{1}}
	}
	mat := make([][]int, size)
	for i := 0; i < len(mat); i++ {
		mat[i] = make([]int, size)
	}
	cntr := 1
	i := 0
	j := 0
	for size > 1 {
		//first row
		for k := 1; k < size; k++ {
			mat[i][j] = cntr
			cntr++
			j++
		}

		//last column
		for k := 1; k < size; k++ {
			mat[i][j] = cntr
			cntr++
			i++
		}

		//last row
		for k := 1; k < size; k++ {
			mat[i][j] = cntr
			cntr++
			j--
		}

		// first column
		for k := 1; k < size; k++ {
			mat[i][j] = cntr
			cntr++
			i--
		}
		i++
		j++
		size -= 2
	}
	if size == 1 {
		mat[len(mat)/2][len(mat)/2] = cntr
	}
	printMat(mat)

	return mat
}

func printMat(mat [][]int) {
	for i := 0; i < len(mat); i++ {
		for j := 0; j < len(mat); j++ {
			fmt.Printf("%3d ", mat[i][j])
		}
		fmt.Println()
	}
}
