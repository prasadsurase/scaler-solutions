class Solution
  def solve(matrix)
    rows = matrix.length
    columns = matrix[0].length
    records = []

    col = 0
    while col < columns
      i = 0
      j = col
      puts "1)  i: #{i}, j: #{j}"
      new_row = []
      while i < columns && j >= 0 && i < rows && j< columns
        puts "11. i: #{i}, j: #{j}"
        puts "11. mat[#{i}][#{j}]: #{matrix[i][j]}"
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
      puts "Records: #{records}"
      col += 1
    end

    row = 1
    while row < rows
      i = row
      j = columns - 1
      puts "i: #{i}, j: #{j}"
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
      puts "Records: #{records}"
      row += 1
    end

    records
  end
end

puts '-' * 100
Solution.new.solve([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
puts '-' * 100
Solution.new.solve([[1, 2, 3, 4], [5, 6, 7, 8]])
