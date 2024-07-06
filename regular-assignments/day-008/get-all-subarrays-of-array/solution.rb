class Solution
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
    puts "Result: #{result}"
    result
  end
end

puts '-' * 100
Solution.new.solve([1,2,3])
puts '-' * 100
Solution.new.solve([5,2,1,4])
puts '-' * 100
Solution.new.solve([36,63,63,26,87,28,77,93,7])
