# A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.

# For example, number 9 has binary representation 1001 and contains a binary gap of length 2. The number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3. The number 20 has binary representation 10100 and contains one binary gap of length 1. The number 15 has binary representation 1111 and has no binary gaps.

# Write a function:

# def solution(n)
# that, given a positive integer N, returns the length of its longest binary gap. The function should return 0 if N doesn't contain a binary gap.

# For example, given N = 1041 the function should return 5, because N has binary representation 10000010001 and so its longest binary gap is of length 5.

# Assume that:

# N is an integer within the range [1..2,147,483,647].
# Complexity:

# expected worst-case time complexity is O(log(N));
# expected worst-case space complexity is O(1).

def solution(n)
  str = n.to_s(2)
  len = str.length
  max = 0
  current = 0
  i = 0
  start_p = i
  end_p = i
  while end_p < len
    if str[i] != "0"
      current = end_p - start_p
      max = current if current > max
      start_p = i
    elsif str[i] == "0"
      start_p = i if i == len - 1
    end
    end_p = i
    i += 1
  end
  max
end

puts solution(0) == 0
puts solution(9) == 2
puts solution(128) == 0
puts solution(1041) == 5
puts solution(529) == 4
puts solution(15) == 0