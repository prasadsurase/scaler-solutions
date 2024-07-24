class Solution
  def call
    solve([1, 3, 2]) # 2
    solve([2, 6, 1, 6, 9]) # 3
  end

  def solve(arr)
    min, max = find_min_max(arr)
    return 1 if min == max

    last_min_indx = -1
    last_max_indx = -1
    ans = arr.length
    i = 0
    while i < arr.length
      if arr[i] == max
        if last_min_indx != -1
          ans = find_min(ans, i - last_min_indx + 1)
        end
        last_max_indx = i
      elsif arr[i] == min
        if last_max_indx != -1
          ans = find_min(ans, i - last_max_indx + 1)
        end
        last_min_indx = i
      else
        ans = find_min(ans, arr.length)
      end

      i += 1
    end
    ans
  end

  def find_min_max(arr)
    inf = 10000000000
    min = inf
    max = -inf
    i = 0
    while i < arr.length
      min = find_min(arr[i], min)
      max = find_max(arr[i], max)
      i += 1
    end
    [min, max]
  end

  def find_min(a, b)
    a > b ? b : a
  end

  def find_max(a, b)
    a > b ? a : b
  end
end

# puts '-' * 100
# puts Solution.new.solve([1, 3, 2])
# puts '-' * 100
# puts Solution.new.solve([2, 6, 1, 6, 9])
