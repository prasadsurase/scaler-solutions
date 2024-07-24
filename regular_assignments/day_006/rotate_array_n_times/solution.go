package rotateArrayNTimes

func Call() {
	arr := []int{1, 2, 3, 4}
	k := 2
	solve(arr, k)

}
func solve(arr []int, k int) []int {
	if len(arr) == 0 {
		return arr
	}

	k %= len(arr)
	reverse(arr, 0, len(arr)-1)
	reverse(arr, 0, k-1)
	reverse(arr, k, len(arr)-1)
	return arr
}

func reverse(arr []int, start, end int) []int {
	i := start
	j := end
	for i < j {
		temp := arr[i]
		arr[i] = arr[j]
		arr[j] = temp
		i++
		j--
	}
	return arr
}
