package flipBinary

import "fmt"

func Call() {
	fmt.Printf("%v\n", solve("101"))
	fmt.Printf("%v\n", solve("101"))
	fmt.Printf("%v\n", solve("110000111001"))
}

func solve(str string) []int {
	ans := make([]int, 2)

	currentSum := 0
	maxSum := 0
	lIndex := 0
	rIndex := 0

	for i := 0; i < len(str); i++ {
		if str[i] == '1' {
			currentSum -= 1
		} else if str[i] == '0' {
			currentSum += 1
		}

		if currentSum > maxSum {
			maxSum = currentSum
			ans[0] = lIndex + 1
			ans[1] = rIndex + 1
		}
		if currentSum < 0 {
			currentSum = 0
			lIndex = i + 1
			rIndex = i + 1
		} else {
			rIndex = i + 1
		}
	}
	if maxSum == 0 {
		return []int{}
	}

	return ans
}
