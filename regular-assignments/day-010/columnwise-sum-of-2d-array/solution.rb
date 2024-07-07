class Solution
  def solve(matrix)
    sum = matrix[0]
    i = 1
    while i < matrix.length
      j = 0
      while j < matrix[i].length
        sum[j] += matrix[i][j]
        j += 1
      end
      i += 1
    end
    sum
  end
end

puts '-' * 100
puts Solution.new.solve([[1, 2, 3, 4], [5, 6, 7, 8], [9, 2, 3, 4]])
