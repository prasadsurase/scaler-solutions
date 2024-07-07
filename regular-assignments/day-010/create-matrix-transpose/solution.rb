class Solution
  def solve(matrix)
    puts "Matrix: #{matrix}"
    rows = matrix.length
    columns = matrix[0].length
    if rows == columns
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
      puts "Transpose: #{matrix}"
      matrix
    else
      transpose = []
      col = 0
      while col < columns
        row = 0
        new_row = []
        while row < rows
          new_row << matrix[row][col]
          row += 1
        end
        transpose << new_row
        # puts "New row: #{new_row}"
        col += 1
      end
      puts "Matrix Transpose: #{transpose}"
      transpose
    end
  end
end

puts '-' * 100
Solution.new.solve([[1,2,3], [4,5,6], [7,8,9]])
puts '-' * 100
Solution.new.solve([[1,2,3,4], [5,6,7,8], [9,10,11,12], [13,14,15,16]])
# puts '-' * 100
# Solution.new.solve([[1,2,3,4], [5,6,7,8]])
# puts '-' * 100
# arr = [
#   [21,62,16,44,55,100,16,86,29],
#   [62,72,85,35,14,1,89,15,73],
#   [42,44,30,56,25,52,61,23,54],
#   [5,35,12,35,55,74,50,50,80],
#   [2,65,65,82,26,36,66,60,1],
#   [18,1,16,91,42,11,72,97,35],
#   [23,57,9,28,13,44,40,47,98]
# ]
# Solution.new.solve(arr)
