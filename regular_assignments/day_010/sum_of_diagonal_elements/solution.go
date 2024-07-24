package sumOfDiagonalElements

func main() {
	solve([][]int{{1, 1, 1}, {1, 1, 1}, {1, 1, 1}})
}

func solve(matrix [][]int) int {
	sum := 0
	for i := 0; i < len(matrix); i++ {
		sum += matrix[i][i]
	}
	return sum
}
