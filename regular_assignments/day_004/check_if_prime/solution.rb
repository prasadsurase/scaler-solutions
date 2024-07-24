class Solution
  def call
    solve(17) # 1
    solve(10) # 0
    solve(4) # 0
  end

  def solve(num)
    count = factors_count(num)
    count == 2 ? 1 : 0
  end

  def factors_count(num)
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
