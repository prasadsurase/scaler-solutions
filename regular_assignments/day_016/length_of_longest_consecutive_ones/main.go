package main

import "fmt"

func main() {
	inputs := []string{"1", "0", "10", "101", "01", "111", "00", "000", "000000000000000", "110110111",
		"01110110110", "00000011111111", "11010110000000000", "1000010001111110"}
	for _, str := range inputs {
		fmt.Println("=================================================================")
		fmt.Printf("input string %v, output: %v\n", str, solve(str))
	}
}

func solve(str string) int {
	maxCount := 0
	zeroIsPresent := false
	oneIsPresent := false

	for i := 0; i < len(str); i++ {
		if str[i] == '0' {
			zeroIsPresent = true
		}
		if str[i] == '1' {
			oneIsPresent = true
		}
	}
	if zeroIsPresent && oneIsPresent {
		for i := 0; i < len(str); i++ {
			if str[i] == '1' {
				oneIsPresent = true
			}
			if str[i] == '0' {
				zeroIsPresent = true
				// count on the left side.
				l := 0
				j := i - 1
				for j >= 0 && str[j] == '1' {
					l++
					j--
				}

				// count on the right side.
				r := 0
				j = i + 1
				for j < len(str) && str[j] == '1' {
					r++
					j++
				}
				fmt.Println("---------------------------")
				fmt.Printf("Max count: %v, l: %v, r: %v, l+r+1: %v\n", maxCount, l, r, l+r+1)
				if l == 0 { // no 1s on the left the current 0
					_, maxCount = minMax(maxCount, r)
				} else if r == 0 {
					_, maxCount = minMax(maxCount, l)
				} else if maxCount < (l + r) {
					maxCount = (l + r)
				}
			}
		}
	} else if zeroIsPresent && !oneIsPresent {
		return 0
	} else if !zeroIsPresent && oneIsPresent {
		return len(str)
	}
	// if zeroIsPresent && oneIsPresent && maxCount < len(str) {
	// 	maxCount = len(str)
	// }
	return maxCount
}

func minMax(a, b int) (int, int) {
	if a < b {
		return a, b
	}
	return b, a
}
