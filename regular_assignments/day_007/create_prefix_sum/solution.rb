class Solution
  def call
    solve([1,1,1]) # [1, 2, 3]
    solve([1,2,3,4,5]) # [1, 3, 6, 10, 15]
  end

  def solve(arr)
    i = 1
    while i < arr.length
      arr[i] = arr[i-1] + arr[i]
      i += 1
    end
    arr
  end
end

# puts "-" * 100
# puts Solution.new.solve([1,1,1])
# puts "-" * 100
# puts Solution.new.solve([1,2,3,4,5])
