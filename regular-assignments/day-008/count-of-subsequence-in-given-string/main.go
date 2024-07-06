package main

import "fmt"

func main() {
	fmt.Printf("%v\n", solve("ABCGAG"))
	fmt.Printf("%v\n", solve("GAB"))
}

func solve(str string) int {
	countA := 0
	ans := 0
	for i := 0; i < len(str); i++ {
		if str[i] == 'A' {
			countA++
		} else if str[i] == 'G' {
			ans += countA
		}
	}
	return ans
}
