class Solution
  def solve(matrix)
    rows = matrix.length
    columns = matrix[0].length
    sum = 0
    row = 0
    col = columns-1

    while row < rows && col >= 0
      sum += matrix[row][col]
      col -= 1
      row += 1
    end
    sum
  end
end

puts '-' * 100
puts Solution.new.solve([[1,2,3], [4,5,6], [7,8,9]])
