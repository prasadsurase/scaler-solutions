package addBinaryIntegers

import (
	"strings"
)

func main() {
	solve("11", "11")
	solve("101", "010")
	solve("101", "101")
	solve("1010011", "1001001")
	solve("101001", "100101")
	solve("101001", "0101")
	solve("1010110111001101101000", "1000011011000000111100110")
}

func solve(a, b string) string {
	i := len(a) - 1
	j := len(b) - 1
	result := []string{}

	carry := ""

	for i >= 0 && j >= 0 {
		resp := determine(a[i], b[j], carry)
		carry = resp[1]
		result = append([]string{resp[0]}, result...)
		i--
		j--
	}

	str := ""
	itr := 0

	if len(a) > len(b) {
		str = a
		itr = i
	} else {
		str = b
		itr = j
	}

	for itr >= 0 {
		resp := determine(str[itr], '0', carry)
		carry = resp[1]
		result = append([]string{resp[0]}, result...)

		itr--
	}

	if carry == "1" {
		result = append([]string{"1"}, result...)
	}

	return strings.Join(result, "")
}

func determine(x, y byte, carry string) []string {
	arr := []string{string(x), string(y), carry}
	count := 0
	for i := 0; i < len(arr); i++ {
		if arr[i] == "1" {
			count += 1
		}
	}

	switch count {
	case 0:
		return []string{"0", "0"}
	case 1:
		return []string{"1", "0"}
	case 2:
		return []string{"0", "1"}
	case 3:
		return []string{"1", "1"}
	}
	return []string{}
}
