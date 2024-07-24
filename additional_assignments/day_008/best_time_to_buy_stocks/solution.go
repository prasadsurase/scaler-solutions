import "math"

func solve(arr []int, transactionsLimit int) int {
	if len(arr) < transactionsLimit {
		t_ik0, t_ik1 := 0, math.MinInt
		for _, price := range arr {
			t_ik0 = max(t_ik0, t_ik1+price)
			t_ik1 = max(t_ik1, t_ik0-price)
		}
		return t_ik0
	}

	T_ik0 := make([]int, transactionsLimit+1)
	T_ik1 := make([]int, transactionsLimit+1)

	for i, _ := range T_ik1 {
		T_ik1[i] = math.MinInt
	}

	for _, price := range arr {
		for i := transactionsLimit; i > 0; i-- {
			T_ik0[i] = max(T_ik0[i], T_ik1[i]+price)
			T_ik1[i] = max(T_ik1[i], T_ik0[i-1]-price)
		}
	}
	return T_ik0[transactionsLimit]
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

/*
T[i][k][0] = max(T[i][k][0], T[i][k][1] + price)
T[i][k][1] = max(T[i][k][1], T[i][k-1][0] - price)
*/
