def check_prime(num)
  i = 2
  while i < num
    return false if num % i == 0
    i += 1
  end
  true
end

def largest_prime_factor(num)
  ans = 2
  return ans if num <= 2
  i = 2
  while i <= num
    if num % i == 0 && check_prime(i)
      ans = [ans, i].max
    end
    i += 1
  end
  ans
end

puts largest_prime_factor(10)
puts largest_prime_factor(17)
puts largest_prime_factor(13195)
