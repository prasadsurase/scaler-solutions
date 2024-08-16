class Solution
  def call
    a = 5
    b = 7
    puts "a: #{a}, b: #{b}, highest mod: #{solve(a,b)}"
    a = 30
    b = 7
    puts "a: #{a}, b: #{b}, highest mod: #{solve(a,b)}"
    a = 61
    b = 5
    puts "a: #{a}, b: #{b}, highest mod: #{solve(a,b)}"
    a = 6816621
    b = 8157697
    puts "a: #{a}, b: #{b}, highest mod: #{solve(a,b)}"
  end

  def solve(a, b)
    mod = 0
    if a > b
      mod = a - b
    else
      mod = b - a
    end
    if calculate_mod(a, mod) == calculate_mod(b, mod)
      return mod
    end
    return 0
  end

  def calculate_mod(a, b)
    if a >= 0
      while a >= b
        a -= b
      end
      return a
    else
      while a < b
        a += b
      end
      return a - b
    end
  end
end
