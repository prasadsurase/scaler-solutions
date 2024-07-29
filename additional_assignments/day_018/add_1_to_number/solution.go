package add1ToNumber

func Call() {
	solve([]int{1, 2, 3})
	solve([]int{9, 9, 9})
	solve([]int{0, 9, 9, 9})
	solve([]int{0, 0, 9, 9, 9})
	solve([]int{0, 0, 3, 7, 6, 4, 0, 5, 5, 5})
}

func solve(arr []int) []int {
	carry := false
	arrLen := len(arr)

	// [0,9,0,9]

	arr[arrLen-1] += 1
	if arr[arrLen-1] > 9 {
		arr[arrLen-1] = 0
		carry = true
	}

	// iterate over all the N-2 elements. ie. [0,9,0]
	for i := arrLen - 2; i >= 0; i-- {
		if carry {
			arr[i] += 1
		}
		if arr[i] > 9 {
			arr[i] = 0
			carry = true
		} else {
			carry = false
		}
	}

	if carry {
		arr = append([]int{1}, arr...)
	}

	update := true
	i := 0
	for ; i < len(arr); i++ {
		if arr[i] == 0 && update {
			continue
		} else {
			update = false
			break
		}
	}
	arr = arr[i:]
	return arr
}
