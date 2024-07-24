package longest_palindromic_substring

func Call() {
	solve("prasad")
	solve("madam")
	solve("anamadam")
	solve("acacacb")
	solve("amadamanaalaana")
}

func solve(str string) string {
	maxLenStr := str[0]
	maxLen := 1

	if (len(str) < 2) {
		return str
	}
	maxLeft = 0
	
	left := 0
	right := 0
	start := 0
	for (start < len(str)) && ((len(str) - start) > maxLen / 2) {
		left := start
		right := start
		while (right < len - 1 && str[right + 1] == str[right]) {
			right += 1
		}

		start = right + 1;
		for (right < len - 1 && left > 0 && str[right + 1] == str[left - 1]) {
			right += 1
			left -= 1
		}

		if (maxLen < right - left + 1) {
			maxLeft = left;
			maxLen = right - left + 1;
			maxLenStr = str[left:right]
		}
	}
	return maxLenStr
}
