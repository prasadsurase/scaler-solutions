class Solution
  def call
    solve([1, 2, 3]) # [[1], [1, 2], [1, 2, 3], [2], [2, 3], [3]]
    solve([5, 2, 1, 4]) # [[1], [1, 4], [2], [2, 1], [2, 1, 4], [4], [5], [5, 2], [5, 2, 1], [5, 2, 1, 4]]
    solve([36, 63, 63, 26, 87, 28, 77, 93, 7]) # [[7], [26], [26, 87], [26, 87, 28], [26, 87, 28, 77], [26, 87, 28, 77, 93], [26, 87, 28, 77, 93, 7], [28], [28, 77], [28, 77, 93], [28, 77, 93, 7], [36], [36, 63], [36, 63, 63], [36, 63, 63, 26], [36, 63, 63, 26, 87], [36, 63, 63, 26, 87, 28], [36, 63, 63, 26, 87, 28, 77], [36, 63, 63, 26, 87, 28, 77, 93], [36, 63, 63, 26, 87, 28, 77, 93, 7], [63], [63], [63, 26], [63, 26, 87], [63, 26, 87, 28], [63, 26, 87, 28, 77], [63, 26, 87, 28, 77, 93], [63, 26, 87, 28, 77, 93, 7], [63, 63], [63, 63, 26], [63, 63, 26, 87], [63, 63, 26, 87, 28], [63, 63, 26, 87, 28, 77], [63, 63, 26, 87, 28, 77, 93], [63, 63, 26, 87, 28, 77, 93, 7], [77], [77, 93], [77, 93, 7], [87], [87, 28], [87, 28, 77], [87, 28, 77, 93], [87, 28, 77, 93, 7], [93], [93, 7]]
    solve([1, 2, 4, 4, 5, 5, 5, 7, 5]) # [[1], [1, 2], [1, 2, 4], [1, 2, 4, 4], [1, 2, 4, 4, 5], [1, 2, 4, 4, 5, 5], [1, 2, 4, 4, 5, 5, 5], [1, 2, 4, 4, 5, 5, 5, 7], [1, 2, 4, 4, 5, 5, 5, 7, 5], [2], [2, 4], [2, 4, 4], [2, 4, 4, 5], [2, 4, 4, 5, 5], [2, 4, 4, 5, 5, 5], [2, 4, 4, 5, 5, 5, 7], [2, 4, 4, 5, 5, 5, 7, 5], [4], [4], [4, 4], [4, 4, 5], [4, 4, 5, 5], [4, 4, 5, 5, 5], [4, 4, 5, 5, 5, 7], [4, 4, 5, 5, 5, 7, 5], [4, 5], [4, 5, 5], [4, 5, 5, 5], [4, 5, 5, 5, 7], [4, 5, 5, 5, 7, 5], [5], [5], [5], [5], [5, 5], [5, 5], [5, 5, 5], [5, 5, 5, 7], [5, 5, 5, 7, 5], [5, 5, 7], [5, 5, 7, 5], [5, 7], [5, 7, 5], [7], [7, 5]]
  end

  def solve(arr)
    result = []
    i = 0
    while i < arr.length
      j = i + 1
      result << [arr[i]]
      while j < arr.length
        result << arr[i..j]
        j += 1
      end
      i += 1
    end
    result.sort!
    result
  end
end

# puts '-' * 100
# Solution.new.solve([1,2,3])
# puts '-' * 100
# Solution.new.solve([5,2,1,4])
# puts '-' * 100
# Solution.new.solve([36,63,63,26,87,28,77,93,7])
# puts '-' * 100
# Solution.new.solve([1,2,4,4,5,5,5,7,5])
