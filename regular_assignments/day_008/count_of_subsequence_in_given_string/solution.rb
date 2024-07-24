class Solution
  def call
    solve("ABCGAG") # 3
    solve("GAB") # 0
  end

  def solve(str)
    count_a = 0
    ans = 0
    i = 0
    while i < str.length
      if str[i] == 'A'
        count_a += 1
      elsif str[i] == 'G'
        ans += count_a
      end
      i += 1
    end
    ans
  end
end

# puts '-' * 100
# puts Solution.new.solve("ABCGAG")
# puts '-' * 100
# puts Solution.new.solve("GAB")
