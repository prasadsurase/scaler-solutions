package findFactorial

import "fmt"

func Call() {
	fmt.Printf("n: %v, factorial: %v\n", 4, solve(4))
}

func solve(n int) int {
	if n == 0 {
		return 1
	} else {
		return n * solve(n-1)
	}
}
