class Solution
  def call
    solve([2, 1, 2])
    solve([2, 1, 1])
    solve([1, 1, 1])
    solve([3,3,4,2,4,4,2,4])
    solve([3,4,3,2,4,4,4,4])
  end

  def solve(arr)
    puts "Arr: #{arr}"
    majority_element = arr[0]
    count = 1
    i = 1
    while i < arr.length
      if count == 0
        majority_element = arr[i]
        count += 1
      else
        arr[i] == majority_element ? count += 1 : count -= 1
      end
      i += 1
    end
    i = 0
    freq = 0
    while i < arr.length
      if arr[i] == majority_element
        freq += 1
      end
      i += 1
    end

    if freq > (arr.length / 2)
      return majority_element
    end

    -1
  end
end
