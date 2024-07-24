class Solution
  def call
    solve([[1, -2, -3], [-4, 5, -6][-7, -8, 9]])
  end

  def solve(mat)
    r = mat.size
    c = mat[0].size

    sum = 0
    i = 0
    while i < r
      sum += mat[i][i]
      i += 1
    end
    sum
  end
end
