class Solution
  def call
    solve([[1,2,3], [4,5,6], [7,8,9]]) # [[7, 4, 1], [8, 5, 2], [9, 6, 3]]
    solve([[1,2], [3,4]]) # [[3, 1], [4, 2]]
  end

  def solve(matrix)
    rows = matrix.length
    columns = matrix[0].length

    row = 0
    while row < rows
      col = row+1
      while col < columns
        temp = matrix[row][col]
        matrix[row][col] = matrix[col][row]
        matrix[col][row] = temp
        col += 1
      end
      row += 1
    end
    row = 0
    while row < rows
      i = 0
      j = matrix[row].length - 1
      while i < j
        temp = matrix[row][i]
        matrix[row][i] = matrix[row][j]
        matrix[row][j] = temp
        i += 1
        j -= 1
      end
      row += 1
    end
    matrix
  end
end

# puts '-' * 100
# Solution.new.solve([[1,2,3], [4,5,6], [7,8,9]])
# puts '-' * 100
# Solution.new.solve([[1,2], [3,4]])
