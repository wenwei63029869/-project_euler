def is_prime?(num)
    n=num.floor
    return false if n < 2
    max=Math.sqrt(n).floor
    (2..max).none?{|k| 0==n % k}
end

def largest_prime_factor(num)
  ans = 2
  return ans if num <= 2
  i = 2
  while i <= num
    if num % i == 0 && is_prime?(i)
      ans = [ans, i].max
    end
    i += 1
  end
  ans
end

puts largest_prime_factor(10) == 5
puts largest_prime_factor(17) == 17
puts largest_prime_factor(13195) == 29
