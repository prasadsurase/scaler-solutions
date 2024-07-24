class Solution
  def call
    solve('prasad')
    solve('madam')
    solve('anamadam')
    solve('acacacb')
    solve('amadamanaalaana')
  end

  def solve(str)
    puts "String: #{str}"
    max_len_str = str[0]

    if (str.length < 2)
      max_len = str.length
      max_len_str = str
      return max_len_str
    end

    len = str.length
    max_left = 0
    max_len = 1
    left = 0
    right = 0
    start = 0
    while start < len && len - start > max_len / 2
      left = right = start;
      while (right < len - 1 && str[right + 1] == str[right])
        right += 1
      end

      start = right + 1;
      while (right < len - 1 && left > 0 && str[right + 1] == str[left - 1])
        right += 1
        left -= 1
      end

      if (max_len < right - left + 1)
        max_left = left;
        max_len = right - left + 1;
        max_len_str = str[left..right]
      end
    end
    max_len_str
  end
end

puts '-' * 100
puts Solution.new.solve('prasad')
puts '-' * 100
puts Solution.new.solve('madam')
puts '-' * 100
puts Solution.new.solve('anamadam')
puts '-' * 100
puts Solution.new.solve('acacacb')
puts '-' * 100
puts Solution.new.solve('abb')
puts '-' * 100
puts Solution.new.solve('surase')
puts '-' * 100
puts Solution.new.solve('aaaabaaa')
puts '-' * 100
puts Solution.new.solve('cacaccbabcabbbaacbbbbcaaaccaacbabcaccbccaacccaacbbaaabbbabcaaabc')
