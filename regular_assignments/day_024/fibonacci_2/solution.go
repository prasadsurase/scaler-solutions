package fibonacci_2

import "fmt"

func Call() {
	fmt.Printf("n: %v, val: %v\n", 2, findAthFibonacci(2))
	fmt.Printf("n: %v, val: %v\n", 9, findAthFibonacci(9))
}

func findAthFibonacci(n int) int {
	return fibonacci(n)
}

func fibonacci(n int) int {
	if n == 0 {
		return 0
	} else if n == 1 {
		return 1
	} else {
		return fibonacci(n-1) + fibonacci(n-2)
	}
}
