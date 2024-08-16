class Solution
  def call
    solve(5)
    puts "\n"
    solve(9)
    puts "\n"
    solve(10)
    puts "\n"
    solve(77)
  end

  def solve(n)
    cprint(1, n)
  end

  def cprint(i, n)
    if i > n
      return
    else
      print i
      print " "
      cprint(i+1, n)
    end
  end
end
