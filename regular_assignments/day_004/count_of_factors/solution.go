package countOfFactors

func Call() {
	factorsCount(17)   // 2
	factorsCount(10)   // 4
	factorsCount(4)    // 3
	factorsCount(5556) // 12
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
