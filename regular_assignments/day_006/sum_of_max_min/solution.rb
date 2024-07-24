class Solution
  def call
    solve([1,2,3,4,5]) # 6
  end

  def solve(arr)
    inf = 10000000000
    min = inf
    max = -inf
    i = 0
    while i < arr.length
      min = find_min(arr[i], min)
      max = find_max(arr[i], max)
      i += 1
    end
    max + min
  end

  def find_min(a, b)
    a > b ? b : a
  end

  def find_max(a, b)
    a > b ? a : b
  end
end
