def special_pythagorean_triplet(num)
  largest = -1
  return largest if num < 6
  # allowence for a and b
  c_i = 3
  while (c = num - c_i) > c_i / 2
    a = 1
    while (b = c_i - a) > a
      current = pythagoren_triplet?(a, b, c)
      largest = current if current > largest
      a += 1
    end
    c_i += 1
  end
  largest
end

def pythagoren_triplet?(a, b, c)
  return a ** 2 + b ** 2 == c ** 2 ? a * b * c : -1
end

puts special_pythagorean_triplet(12) == 60
puts special_pythagorean_triplet(4) == -1

# a + b + c = num
# a < b < c
# a^2 + b ^ 2 = c ^2