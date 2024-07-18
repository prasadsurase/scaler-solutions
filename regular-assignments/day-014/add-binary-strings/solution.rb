class Solution
  def addBinary(a, b)
    puts "A: #{a}, length: #{a.length}"
    puts "B: #{b}, length: #{b.length}"

    a_len = a.length
    b_len = b.length

    min_length = a.length < b.length ? a.length : b.length
    max_length = a.length > b.length ? a.length : b.length

    str = '0' * (max_length - min_length)

    if a_len > b_len
      b = "#{str}#{b}"
    else
      a = "#{str}#{a}"
    end

    puts "A: #{a}, length: #{a.length}"
    puts "B: #{b}, length: #{b.length}"

    result = []
    carry = '0'

    i = max_length - 1
    while i >= 0
      puts "I: #{i}, a[#{i}]: #{a[i]}, b[#{i}]: #{b[i]}, carry: #{carry}, result: #{result}"
      val, carry = determine(a[i], b[i], carry)
      result = [val] + result
      i -= 1
    end

    result = ['1'] + result if carry == '1'
    result.join('')
  end

  def determine(x, y, carry)
    cnt = [x,y,carry].count('1')
    case cnt
    when 0
      ['0', '0']
    when 1
      ['1', '0']
    when 2
      ['0', '1']
    when 3
      ['1', '1']
    end
  end
end

puts "-" * 100
res = Solution.new.addBinary('11', '11')
puts "Result: #{res}, right?: #{res == '110'}"

puts "-" * 100
res = Solution.new.addBinary('101', '010')
puts "Result: #{res}, right?: #{res == '111'}"

puts "-" * 100
res = Solution.new.addBinary('101', '101')
puts "Result: #{res}, right?: #{res == '1010'}"

puts "-" * 100
res = Solution.new.addBinary('1010011', '1001001')
puts "Result: #{res}, right?: #{res == '10011100'}"

puts "-" * 100
res = Solution.new.addBinary('101001', '100101')
puts "Result: #{res}, right?: #{res == '1001110'}"

puts "-" * 100
res = Solution.new.addBinary('101001', '0101')
puts "Result: #{res}, right?: #{res == '101110'}"

puts "-" * 100
res = Solution.new.addBinary('1010110111001101101000', '1000011011000000111100110')
puts "Result: #{res}, right?: #{res == '1001110001111010101001110'}"
