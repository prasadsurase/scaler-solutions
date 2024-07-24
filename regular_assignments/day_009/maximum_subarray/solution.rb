class Solution
  def call
    maxSubarray(5,12, [2, 1, 3, 4, 5]) # 12
    maxSubarray(3,1, [2, 2, 2]) # 0
  end

  def maxSubarray(arr_length, upper_limit, arr)
    i = 0
    max = 0
    while i < arr_length
      current_sum = 0
      j = i
      while j < arr_length
        current_sum += arr[j]
        if current_sum <= upper_limit
          max = max > current_sum ? max : current_sum
        end
        j += 1
      end
      i += 1
    end
    max
  end

  def create_prefix_sum(arr)
    i = 0
    prefix_sum_arr = []
    while i < arr.length
      prefix_sum_arr[i] = if i.zero?
                            arr[i]
                          else
                            prefix_sum_arr[i - 1] + arr[i]
                          end
      i += 1
    end
    prefix_sum_arr
  end
end

# puts '-' * 100
# puts Solution.new.maxSubarray(5,12, [2, 1, 3, 4, 5])
# puts '-' * 100
# puts Solution.new.maxSubarray(3,1, [2, 2, 2])
