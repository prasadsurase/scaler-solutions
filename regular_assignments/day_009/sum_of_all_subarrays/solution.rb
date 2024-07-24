class Solution
  def call
    subarraySum([1, 2, 3]) # 20
    subarraySum([2, 1, 3]) # 19
  end

  def subarraySum(arr)
    sum = 0
    i = 0
    while i < arr.length
      freq = (i + 1) * (arr.length - i)
      contribution = freq * arr[i]
      sum += contribution
      i += 1
    end
    sum
  end
end

# puts '-' * 100
# puts Solution.new.subarraySum([1,2,3])
# puts '-' * 100
# puts Solution.new.subarraySum([2,1,3])
