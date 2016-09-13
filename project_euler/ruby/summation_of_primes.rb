def summation_of_primes(num)
  if num < 2
    return 0
  elsif num < 3
    return num
  end
  i = 3
  sum = 2
  loop do
    if i % 2 != 0 && is_prime?(i)
      sum += i
    end
    i += 1
    break if i > num
  end
  sum
end

def is_prime?(num)
    n=num.floor
    return false if n < 2
    max=Math.sqrt(n).floor
    (2..max).none?{|k| 0==n % k}
end

puts summation_of_primes(5) == 10
puts summation_of_primes(10) == 17


