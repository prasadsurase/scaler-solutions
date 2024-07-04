class Solution
  def solve(num)
    i = 1
    count = 0
    # puts "Num: #{num}"
    while i * i <= num
      # puts "I: #{i}, Count: #{count}"
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

puts '-' * 100
puts Solution.new.solve(17)
puts '-' * 100
puts Solution.new.solve(10)
puts '-' * 100
puts Solution.new.solve(4)
puts '-' * 100
puts Solution.new.solve(5556)
