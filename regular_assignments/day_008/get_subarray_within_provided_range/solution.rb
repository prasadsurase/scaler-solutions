class Solution
  def call
    solve([1,2,3,4,5], 0, 3)
  end

  def solve(arr, b, c)
    arr[b..c]
  end
end
