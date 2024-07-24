class Solution
  def call
    solve([2, 1, 6, 4]) # 1
    solve([1, 1, 1]) # 3
    solve([1, 2, 3, 4, 5, 6, 7, 8, 9]) # 0
  end

  def solve(arr)
    prefix_even_sum_arr = create_even_prefix_sum_arr(arr)
    prefix_odd_sum_arr = create_odd_prefix_sum_arr(arr)
    i = 0
    count = 0
    while i < arr.length
      if i.zero?
        sum_odd = prefix_even_sum_arr[arr.length - 1] - prefix_even_sum_arr[i]
        sum_even = prefix_odd_sum_arr[arr.length - 1] - prefix_odd_sum_arr[i]
      else
        sum_odd = prefix_odd_sum_arr[i - 1] + (prefix_even_sum_arr[arr.length-1] - prefix_even_sum_arr[i-1+1])
        sum_even = prefix_even_sum_arr[i - 1] + (prefix_odd_sum_arr[arr.length-1] - prefix_odd_sum_arr[i-1+1])
      end
      count += 1 if sum_even == sum_odd
      i += 1
    end

    count
  end

  def create_odd_prefix_sum_arr(arr)
    i = 1
    prefix_sum = [0]
    while i < arr.length
      prefix_sum[i] = !(i % 2).zero? ? prefix_sum[i - 1] + arr[i] : prefix_sum[i - 1]
      i += 1
    end
    prefix_sum
  end

  def create_even_prefix_sum_arr(arr)
    i = 1
    prefix_sum = [arr[0]]
    while i < arr.length
      prefix_sum[i] = (i % 2).zero? ? prefix_sum[i - 1] + arr[i] : prefix_sum[i - 1]
      i += 1
    end
    prefix_sum
  end
end

# puts '-' * 100
# puts Solution.new.solve([2, 1, 6, 4])
# puts '-' * 100
# puts Solution.new.solve([1, 1, 1])
# puts '-' * 100
# puts Solution.new.solve([1, 2, 3, 4, 5, 6, 7, 8, 9])
