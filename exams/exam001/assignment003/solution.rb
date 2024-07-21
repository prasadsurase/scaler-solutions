class Solution
  def call
    solve([1,-1,0], [[0, 2], [1, 2]])
    solve([-1, -2], [[0, 0], [1, 1]])
  end

  def solve(arr, q)
    i = 0
    op = []
    while i < q.count
      l = q[i][0]
      r = q[i][1]
      count = arr[l..r].count{|x| x > -1 }
      i += 1
      op << count
    end
    op
  end
end

# puts "-" * 100
# Solution.new.solve([1,-1,0], [[0, 2], [1, 2]])
# puts "-" * 100
# Solution.new.solve([-1, -2], [[0, 0], [1, 1]])
