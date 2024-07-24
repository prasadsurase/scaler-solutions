class Solution
  def call
    kthsmallest([2,1,4,3,2], 3) # 2
    kthsmallest([1,2], 2) # 2
    kthsmallest([8,16,80,55,32,8,38,40,65,18,15,45,50,38,54,52,23,74,81,42,28,16,66,35,91,36,44,9,85,58,59,49,75,20,87,60,17,11,39,62,20,17,46,26,81,92, 2], 9) # 17
  end

  def kthsmallest(arr, b)
    arr = arr.sort
    arr[b-1]
  end
end

# puts '-' * 100
# puts Solution.new.kthsmallest([2,1,4,3,2], 3)
# puts '-' * 100
# puts Solution.new.kthsmallest([1,2], 2)
# puts '-' * 100
# puts Solution.new.kthsmallest([8,16,80,55,32,8,38,40,65,18,15,45,50,38,54,52,23,74,81,42,28,16,66,35,91,36,44,9,85,58,59,49,75,20,87,60,17,11,39,62,20,17,46,26,81,92, 2], 9)
