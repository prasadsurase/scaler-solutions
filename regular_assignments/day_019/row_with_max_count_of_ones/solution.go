package rowWithMaxCountOfOnes

import "fmt"

func Call() {
	mat := [][]int{{0, 1, 1}, {0, 0, 1}, {0, 1, 1}}
	fmt.Printf("Matrix: %v, ans: %v\n", mat, solve(mat))
	mat = [][]int{{0, 0, 0, 0}, {0, 0, 0, 1}, {0, 0, 1, 1}, {0, 1, 1, 1}}
	fmt.Printf("Matrix: %v, ans: %v\n", mat, solve(mat))
	mat = [][]int{{0, 0, 1, 1}, {0, 0, 1, 1}, {0, 0, 1, 1}, {1, 1, 1, 1}}
	fmt.Printf("Matrix: %v, ans: %v\n", mat, solve(mat))
}

func solve(mat [][]int) int {
	n := len(mat)
	i := 0
	j := n - 1
	ans := 0

	for j >= 0 && i < n {
		for j >= 0 && mat[i][j] == 1 {
			j -= 1
			ans = i
		}
		i += 1
	}
	return ans
}
