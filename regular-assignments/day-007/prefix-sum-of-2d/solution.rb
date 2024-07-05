class Solution
  # @param a : array of integers
  # @param b : array of array of integers
  # @return an array of long

  def range_sum(arr, q)
    prefix_sum = create_prefix_array(arr)
    i = 0
    op = []
    while i < q.count
      l = q[i][0]
      r = q[i][1]
      sum = 0
      sum += l.zero? ? prefix_sum[r] : prefix_sum[r] - prefix_sum[l-1]
      # puts "L: #{l}, R: #{r}, Sum: #{sum}"
      i += 1
      op << sum
    end
    op
  end

  def create_prefix_array(arr)
    i = 0
    prefix_arr = []
    sum = 0
    while i < arr.length
      sum += arr[i]
      prefix_arr << sum
      i+= 1
    end
    # puts "Arrd: #{arr }, Prefix Sum: #{prefix_arr}"
    prefix_arr
  end
end

puts "-" * 100
puts Solution.new.range_sum([1, 2, 3, 4, 5], [[0, 3], [1, 2]])
puts "-" * 100
puts Solution.new.range_sum([2, 2, 2], [[0, 0], [1, 2]])
