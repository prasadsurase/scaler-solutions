class Solution
  def solve(arr)
    i = 1
    while i < arr.length
      arr[i] = arr[i-1] + arr[i]
      i += 1
    end
    # puts "new arr: #{arr}"
    arr
  end
end

puts "-" * 100
puts Solution.new.solve(1,1,1)
puts "-" * 100
puts Solution.new.solve(1,2,3,4,5)
