class Solution
  def call
    solve("PrAsAd")
    solve("hEllO WoRlD")
  end

  def solve(str)
    chars = str.split('')
    data = chars.map do |c|
      ord = c.ord
      if ord >= 92 && ord <= 122 # is lower case
        (ord - 32).chr
      elsif ord >= 65 && ord <= 90
        (ord + 32).chr
      else
        c
      end
    end
    data.join('')
  end
end

# puts '-' * 100
# puts Solution.new.solve("PrAsaD")
# puts '-' * 100
# puts Solution.new.solve("hEllO WoRlD")
