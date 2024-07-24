class Solution
  def solve(arr)
    ans = 0
    i = 0
    while i < arr.length
      cnt = 0
      j = i + 1
      while j < arr.length
        if arr[j] > arr[i]
          cnt += 1
        else
          ans += cnt
        end
        j += 1
      end
      i += 1
    end
    ans
  end
end

puts '-' * 100
puts Solution.new.solve([1, 2, 4, 3])
puts '-' * 100
puts Solution.new.solve([2, 1, 2, 3])
puts '-' * 100
puts Solution.new.solve([2, 5, 1, 3, 0])
puts '-' * 100
puts Solution.new.solve([26,23,23,16,27,18,7])
