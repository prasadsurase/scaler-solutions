class Solution
  def call
    n = 2
    puts "n: #{n}, val: #{findAthFibonacci(n)}"
    n = 9
    puts "n: #{n}, val: #{findAthFibonacci(n)}"
  end

  def findAthFibonacci(n)
    fibonacci(n)
  end

  def fibonacci(n)
    if n == 0
      return 0
    elsif n == 1
      return 1
    else
      return fibonacci(n-1) + fibonacci(n-2)
    end
  end
end
