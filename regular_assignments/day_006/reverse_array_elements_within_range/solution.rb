class Solution
  def call
    solve([1, 2, 3, 4], 2, 3) # [1, 2, 4, 3]
    solve([2, 5, 6], 0, 2) # [6, 5, 2]
  end

  def solve(arr, b, c)
    i = b
    j = c
    while i < j
      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp
      i += 1
      j -= 1
    end
    arr
  end
end

# puts '-' * 100
# puts Solution.new.solve([1, 2, 3, 4], 2, 3)
# puts '-' * 100
# puts Solution.new.solve([2, 5, 6], 0, 2)
