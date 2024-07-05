class Solution
  def solve(arr, k)
    return arr if (k % arr.length).zero?

    k %= arr.length
    reverse(arr, 0, arr.length - 1)
    reverse(arr, 0, k - 1)
    reverse(arr, k, arr.length - 1)
    arr
  end

  def reverse(arr, strt, endd)
    i = strt
    j = endd
    while i < j
      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp
      i += 1
      j -= 1
    end
    arr
  end
end

puts '-' * 100
Solution.new.solve([1, 2, 3, 4], 2)
puts '-' * 100
Solution.new.solve([2, 5, 6], 1)
