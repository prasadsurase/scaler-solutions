class Solution
  def solve(str)
    puts "String: #{str}"
    cnt = 0
    i = 0
    while i < str.length
      cnt += 1 if str[i] == "1"
      i += 1
    end
    return cnt if cnt == str.length

    cnt = 0
    i = 0
    while i < str.length
      cnt += 1 if str[i] == "0"
      i += 1
    end
    return 0 if cnt == str.length

    i = 0
    max_count = 0
    while i < str.length
      if str[i] == '0'
        # count on the left side.
        l = 0
        j = i - 1
        while j >= 0 && str[j] == '1'
          l += 1
          j -= 1
        end

        # count on the right side.
        r = 0
        j = i + 1
        while j < str.length && str[j] == '1'
          r += 1
          j += 1
        end

        #calculate max count
        if l != 0 && r != 0
          max_count = [max_count, l + r + 1].max
        else
          max_count = [max_count, l + r].max
        end
      end
      i += 1
    end

    max_count
  end
end

puts '-' * 100
puts Solution.new.solve('1')
puts '-' * 100
puts Solution.new.solve('0')
puts '-' * 100
puts Solution.new.solve('10')
puts '-' * 100
puts Solution.new.solve('101')
puts '-' * 100
puts Solution.new.solve('01')
puts '-' * 100
puts Solution.new.solve('111')
puts '-' * 100
puts Solution.new.solve('00')
puts '-' * 100
puts Solution.new.solve('000')
puts '-' * 100
puts Solution.new.solve('000000000000000')
puts '-' * 100
puts Solution.new.solve('110110111')
puts '-' * 100
puts Solution.new.solve('01110110110')
puts '-' * 100
puts Solution.new.solve('00000011111111')
puts '-' * 100
puts Solution.new.solve('1000010001111110')
