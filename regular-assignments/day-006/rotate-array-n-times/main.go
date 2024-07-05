package main

import "fmt"

func main() {
	arr := []int{1, 2, 3, 4}
	k := 2

	if len(arr) == 0 {
		return
	}

	k %= len(arr)
	fmt.Printf("%v\n", arr)
	reverse(arr, 0, len(arr)-1)
	reverse(arr, 0, k-1)
	reverse(arr, k, len(arr)-1)
	fmt.Printf("%v\n", arr)
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
