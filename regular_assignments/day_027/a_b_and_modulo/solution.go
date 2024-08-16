package aBAndModulo

import "fmt"

func Call() {
	a := 5
	b := 7
	fmt.Printf("a: %v, b: %v, highest mod: %v\n", a, b, solve(a, b))
	a = 30
	b = 7
	fmt.Printf("a: %v, b: %v, highest mod: %v\n", a, b, solve(a, b))
	a = 61
	b = 5
	fmt.Printf("a: %v, b: %v, highest mod: %v\n", a, b, solve(a, b))
	a = 6816621
	b = 8157697
	fmt.Printf("a: %v, b: %v, highest mod: %v\n", a, b, solve(a, b))
}

func solve(a, b int) int {
	mod := 0
	if a > b {
		mod = a - b
	} else {
		mod = b - a
	}
	if calculateMod(a, mod) == calculateMod(b, mod) {
		return mod
	}
	return 0
}

func calculateMod(a, b int) int {
	if a >= 0 {
		for a >= b {
			a -= b
		}
		return a
	} else {
		for a < b {
			a += b
		}
		return a - b
	}
}
