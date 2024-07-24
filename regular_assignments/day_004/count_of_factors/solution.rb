class Solution
  def call
    solve(17) # 2
    solve(10) # 4
    solve(4) # 3
    solve(5556) # 12
  end

  def solve(num)
    i = 1
    count = 0
    while i * i <= num
      if i * i == num
        count += 1
      elsif (num % i).zero?
        count += 2
      end
      i += 1
    end
    count
  end
end

# puts '-' * 100
# puts Solution.new.solve(17)
# puts '-' * 100
# puts Solution.new.solve(10)
# puts '-' * 100
# puts Solution.new.solve(4)
# puts '-' * 100
# puts Solution.new.solve(5556)
