def find_smallest_multiple(n)
  i = 1
  ans = 1
  while i <= n
    if ans % i != 0
      count = 2
      while i % count != 0
        count += 1
      end
      while ans % i != 0
        ans *= count
      end
    end
    i += 1
  end
  ans
end

puts find_smallest_multiple(3)
puts find_smallest_multiple(100)