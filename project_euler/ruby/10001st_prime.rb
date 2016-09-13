def nst_prime(n)
  counter = 0
  i = 2
  loop do
    counter += 1 if is_prime?(i)
    break if counter == n
    i += 1
  end
  i
end

def is_prime?(num)
    n=num.floor
    return false if n < 2
    max=Math.sqrt(n).floor
    (2..max).none?{|k| 0==n % k}
end

puts nst_prime(3)
puts nst_prime(6)



