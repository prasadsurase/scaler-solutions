class Solution
  def call
    solve([2, 4, 1], 2)
    solve([3,2,6,5,0,3], 2)
  end

  def solve(arr, transactions_limit)
    profit = 0
    itr = 0
    while itr < transactions_limit
      max, max_index = find_max_and_its_index(arr)
      min, max_index = find_min_and_its_index(arr[])
      itr += 1
    end

    max = arr.max
    max_index = ind
    puts profit
  end

  def find_max_and_its_index(arr)
    max = arr.max
    indx = arr.index(max)
    [max, indx]
  end
end

puts "-" * 100
puts Solution.new.solve([2, 4, 1], 2)
puts "-" * 100
puts Solution.new.solve([3,2,6,5,0,3], 2)
