package printFirstNNaturalNumbers

import "fmt"

func Call() {
	solve(10)
}

func solve(n int) {
	print(1, n)
}

func print(i, n int) {
	if i > n {
		return
	} else {
		fmt.Printf("%v ", i)
		print(i+1, n)
	}
}
