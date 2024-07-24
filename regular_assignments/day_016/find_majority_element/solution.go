package findmajorityelement

import "fmt"

func Call() {
	fmt.Printf("%v\n", solve([]int{2, 1, 2}))
	fmt.Printf("%v\n", solve([]int{1, 1, 1}))
	fmt.Printf("%v\n", solve([]int{3, 3, 4, 2, 4, 4, 2, 4}))
	fmt.Printf("%v\n", solve([]int{3, 4, 3, 2, 4, 4, 4, 4}))
}

func solve(arr []int) int {
	majorityElement := arr[0]
	count := 1
	for i := 1; i < len(arr); i++ {
		if count == 0 {
			majorityElement = arr[i]
			count++
		} else {
			if arr[i] == majorityElement {
				count++
			} else {
				count--
			}
		}
	}
	return majorityElement
}
