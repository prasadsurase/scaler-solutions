class Solution
  def call
    solve([4, 3, 2, 6, 1], 3, 11) # 1
    solve([4, 2, 2, 5, 1], 4, 6) # 0
  end

  def solve(arr, expected_len, expected_sum)
    prefix_sum_arr = create_prefix_sum_arr(arr)
    exists = 0
    i = 0
    j = expected_len-1
    while j < arr.length
      sum = 0
      sum = if i.zero?
              prefix_sum_arr[j]
            else
              prefix_sum_arr[j] - prefix_sum_arr[i - 1]
            end
      exists = 1 if sum == expected_sum
      i += 1
      j += 1
    end
    exists
  end

  def create_prefix_sum_arr(arr)
    prefix_sum_arr = []
    i = 0
    while i < arr.length
      if i.zero?
        prefix_sum_arr[i] = arr[i]
      else
        prefix_sum_arr[i] = prefix_sum_arr[i - 1] + arr[i]
      end
      i += 1
    end
    prefix_sum_arr
  end
end

# puts '-' * 100
# puts Solution.new.solve([4, 3, 2, 6, 1], 3, 11)
# puts '-' * 100
# puts Solution.new.solve([4, 2, 2, 5, 1], 4, 6)
