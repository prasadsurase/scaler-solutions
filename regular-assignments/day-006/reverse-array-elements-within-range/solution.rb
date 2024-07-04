class Solution
  def solve(arr, b, c)
    i = b
    j = c
    while i < j
      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp[]
      i += 1
      j -= 1
    end
    arr
  end
end

puts '-' * 100
arr = [1, 2, 3, 4]
puts Solution.new.solve(arr, 2, 3)
puts '-' * 100
puts Solution.new.solve([2, 5, 6], 0, 2)
