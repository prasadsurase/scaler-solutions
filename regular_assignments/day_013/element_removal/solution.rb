class Solution
  def call
    solve([2,1]) # 4
    solve([5]) # 5
    solve([8,0,10]) # 26
  end

  def solve(arr)
    arr = arr.sort.reverse
    cost = 0
    i = 0
    while i < arr.length
      cost += sumation(arr[i..-1])
      i += 1
    end
    cost
  end

  def sumation(arr)
    sum = 0
    i = 0
    while i < arr.length
      sum+= arr[i]
      i += 1
    end
    sum
  end
end

# puts '-' * 100
# puts Solution.new.solve([2,1])
# puts '-' * 100
# puts Solution.new.solve([5])
# puts '-' * 100
# puts Solution.new.solve([8,0,10])
