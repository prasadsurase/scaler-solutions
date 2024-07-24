package assignment003

func Call() {
	solve([]int{1, -1, 0}, [][]int{{0, 2}, {1, 2}})
	solve([]int{-1, -2}, [][]int{{0, 0}, {1, 1}})
}

func solve(arr []int, queries [][]int) []int {
	op := []int{}
	count := 0

	for i := 0; i < len(queries); i++ {
		l := queries[i][0]
		r := queries[i][1]
		count = 0
		for _, x := range arr[l : r+1] {
			if x > -1 {
				count++
			}
		}
		op = append(op, count)
	}
	return op
}
