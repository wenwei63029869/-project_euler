def nst_prime(n)
  counter = 0
  i = 2
  loop do
    counter += 1 if prime?(i)
    break if counter == n
    i += 1
  end
  i
end

def prime?(num)
  return true if num < 4
  i = 2
  while i <= Math.sqrt(num)
    return false if num % i == 0
    i += 1
  end
  true
end

puts nst_prime(3)
puts nst_prime(6)



