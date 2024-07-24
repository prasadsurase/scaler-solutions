class Solution
  def call
    addBinary('11', '11') # '110'
    addBinary('101', '010') # '111'
    addBinary('101', '101') # '1010'
    addBinary('1010011', '1001001') # '10011100'
    addBinary('101001', '100101') # '1001110'
    addBinary('101001', '0101') # '101110'
    addBinary('11111', '111') # '101110'
    addBinary('1010110111001101101000', '1000011011000000111100110') # '1001110001111010101001110'
  end

  def addBinary(a, b)
    result1 = firstApproach(a, b)
    result2 = secondApproach(a, b)
    result1
  end

  def firstApproach(a,b)
    i = a.length - 1
    j = b.length - 1
    result = []
    carry = '0'

    while i >= 0 && j >= 0
      val, carry = determine(a[i], b[j], carry)
      result = [val] + result

      i -= 1
      j -= 1
    end

    if a.length > b.length
      str = a
      itr = i
    else
      str = b
      itr = j
    end

    while itr >= 0
      val, carry = determine(str[itr], '0', carry)
      result = [val] + result

      itr -= 1
    end

    result = ['1'] + result if carry == '1'
    result.join('')
  end

  def secondApproach(a,b)
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

    result = []
    carry = '0'

    i = max_length - 1
    while i >= 0
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

# puts "-" * 100
# addBinary('11', '11')
# puts "Result: #{res}, right?: #{res == '110'}"

# puts "-" * 100
# addBinary('101', '010')
# puts "Result: #{res}, right?: #{res == '111'}"

# puts "-" * 100
# addBinary('101', '101')
# puts "Result: #{res}, right?: #{res == '1010'}"

# puts "-" * 100
# addBinary('1010011', '1001001')
# puts "Result: #{res}, right?: #{res == '10011100'}"

# puts "-" * 100
# addBinary('101001', '100101')
# puts "Result: #{res}, right?: #{res == '1001110'}"

# puts "-" * 100
# addBinary('101001', '0101')
# puts "Result: #{res}, right?: #{res == '101110'}"

# puts "-" * 100
# addBinary('11111', '111')
# puts "Result: #{res}, right?: #{res == '101110'}"

# puts "-" * 100
# addBinary('1010110111001101101000', '1000011011000000111100110')
# puts "Result: #{res}, right?: #{res == '1001110001111010101001110'}"
