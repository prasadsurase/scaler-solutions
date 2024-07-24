package elementRemovalCost

import (
	"slices"
	"sort"
)

func main() {
	solve([]int{2, 1})
	solve([]int{5})
	solve([]int{8, 0, 10})
}

func solve(arr []int) int {
	sort.Ints(arr)
	slices.Reverse(arr)

	cost := 0
	for i := 0; i < len(arr); i++ {
		for j := i; j < len(arr); j++ {
			cost += arr[j]
		}
	}
	return cost
}
