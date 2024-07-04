class Solution
  def solve(arr , k)
    i = 0
    exists = 0
    while i < arr.length
      j = i+1
      while j < arr.length
        return 1 if (arr[i] + arr[j]) == k

        j += 1
      end
      i += 1
    end
    exists
  end
end

puts "-" * 100
puts Solution.new.solve([1,2,3,4], 7)
puts "-" * 100
puts Solution.new.solve([1,2,4], 4)
puts "-" * 100
puts Solution.new.solve([1,2,2], 4)
