package reverseArrayElementsWithinRange

func Call() {
	solve([]int{1, 2, 3, 4}, 2, 3)
	solve([]int{2, 5, 6}, 0, 2)
}

func solve(arr []int, b, c int) []int {
	i := b
	j := c
	for i < j {
		temp := arr[i]
		arr[i] = arr[j]
		arr[j] = temp
		i += 1
		j -= 1
	}
	return arr
}
