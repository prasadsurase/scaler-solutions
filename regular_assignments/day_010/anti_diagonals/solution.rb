class Solution
  def call
    solve([[1, 2, 3], [4, 5, 6], [7, 8, 9]]) # [[1, 0, 0], [2, 4, 0], [3, 5, 7], [6, 8, 0], [9, 0, 0]]
    solve([[1, 2, 3, 4], [5, 6, 7, 8]]) # [[1, 0, 0, 0], [2, 5, 0, 0], [3, 6, 0, 0], [4, 7, 0, 0], [8, 0, 0, 0]]
  end

  def solve(matrix)
    rows = matrix.length
    columns = matrix[0].length
    records = []

    col = 0
    while col < columns
      i = 0
      j = col
      new_row = []
      while i < columns && j >= 0 && i < rows && j< columns
        new_row << matrix[i][j]
        i += 1
        j -= 1
      end
      row_count = new_row.count
      while row_count < columns
        new_row << 0
        row_count += 1
      end
      records << new_row
      col += 1
    end

    row = 1
    while row < rows
      i = row
      j = columns - 1
      new_row = []

      while i < columns && j >= 0 && i < rows && j< columns
        new_row << matrix[i][j]
        i += 1
        j -= 1
      end

      row_count = new_row.count
      while row_count < columns
        new_row << 0
        row_count += 1
      end
      records << new_row
      row += 1
    end

    records
  end
end

# puts '-' * 100
# Solution.new.solve([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
# puts '-' * 100
# Solution.new.solve([[1, 2, 3, 4], [5, 6, 7, 8]])
