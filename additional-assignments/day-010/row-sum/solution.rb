class Solution
  def solve(matrix)
    row = 0
    sums = []
    while row < matrix.length
      sums << matrix[row].sum
      row += 1
    end
    sums
  end
end

puts "-"
