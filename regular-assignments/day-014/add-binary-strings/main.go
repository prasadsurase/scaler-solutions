package main

import "fmt"

func main() {
	fmt.Printf("%v\n", solve("11", "11"))
	fmt.Printf("%v\n", solve("101", "010"))
	fmt.Printf("%v\n", solve("101", "101"))
	fmt.Printf("%v\n", solve("1010011", "1001001"))
	fmt.Printf("%v\n", solve("101001", "100101"))
	fmt.Printf("%v\n", solve("101001", "0101"))
	fmt.Printf("%v\n", solve("1010110111001101101000", "1000011011000000111100110"))
}

func solve(a, b string) string {
	aLen := len(a)
	bLen := len(b)

	minLength = aLen < bLen ? aLen : bLen
  maxLength = aLen > bLen ? aLen : bLen

}
