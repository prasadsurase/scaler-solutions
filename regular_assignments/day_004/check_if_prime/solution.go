package checkIfPrime

func Call() {
	solve(17) // 1
	solve(10) // 0
	solve(4)  // 0
}

func solve(A int) int {
	isPrime := 0
	if factorsCount(A) == 2 {
		isPrime = 1
	}
	return isPrime
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
