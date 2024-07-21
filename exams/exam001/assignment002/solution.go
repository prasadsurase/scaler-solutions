package assignment002

func Call() {
	solve("PrAsAd")
	solve("hEllO WoRlD")
}

func solve(str string) string {
	runes := []byte(str)
	for indx, r := range runes {
		if r >= 92 && r <= 122 { // is lower case
			runes[indx] = (r - 32)
		} else if r >= 65 && r <= 90 {
			runes[indx] = (r + 32)
		}
	}
	return string(runes)
}
