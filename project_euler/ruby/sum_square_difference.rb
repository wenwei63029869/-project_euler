def sum_square_difference(n)
  i = 1
  sum = 0
  while i < n
    if i != n - 1
      sum += i * (((i + 1) + n) * (n - i) / 2)
    else
      sum += i * n
    end
    i += 1
  end
  sum * 2
end

def sum_square_difference1(n)
  i = 1
  square_sum = 0
  sum = (((1 + n) * n) / 2)
  sum_square = sum * sum
  while i <= n
    square_sum += i * i
    i += 1
  end
  sum_square - square_sum
end

# puts sum_square_difference(2)
puts sum_square_difference(10000000)
puts sum_square_difference1(10000000)




# 2
# 1 + 2^2 = 5
# (1 + 2)^2 = 9
# 4

# 3
# 1 + 2^2 + 3^2 = 14
# (1 + 2 + 3)^2 = 36
# 22
# 1 + 2 + 3
# 1 * (2 + 3) * (3-1) / 2 = 5
# 2 * (3) = 6

