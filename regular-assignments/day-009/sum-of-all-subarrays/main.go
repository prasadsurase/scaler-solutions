package main

import "fmt"

func main() {
	fmt.Printf("%v\n", subArraySum([]int{1, 2, 3}))
	fmt.Printf("%v\n", subArraySum([]int{2, 1, 3}))
}

func subArraySum(arr []int) int64 {
	sum := 0
	for i := 0; i < len(arr); i++ {
		freq := (i + 1) * (len(arr) - i)
		contribution := freq * arr[i]
		sum += contribution
	}
	return int64(sum)
}
