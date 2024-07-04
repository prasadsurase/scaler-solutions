package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	if len(os.Args) < 2 {
		fmt.Println("Please provide an integer argument")
		return
	}

	num, err := strconv.Atoi(os.Args[1])
	if err != nil {
		os.Exit(1)
	}

	fmt.Printf("%v\n", factorsCount(num))
}

func factorsCount(num int) int {
	count := 0
	for i := 1; i*i <= num; i++ {
		if i*i == num {
			count += 1
		} else if num%i == 0 {
			count += 2
		}
	}
	return count
}
