def largest_product_in_a_series(n, k, num)
  str = num.to_s
  current_product = 1
  largest_product = 0
  start_p = 0
  end_p = 0
  count = 0
  loop do
    break if end_p == n
    if str[end_p] == '0'
      end_p += 1
      start_p = end_p
      count = 0
      current_product = 1
    else
      current_product *= str[end_p].to_i
      count += 1
      end_p += 1
    end
    if count == k
      largest_product = current_product if current_product > largest_product
      current_product = current_product / str[start_p].to_i
      start_p += 1
      count -= 1
    end
  end
  largest_product
end

puts largest_product_in_a_series(10, 5, 3675356291)

puts largest_product_in_a_series(10, 5, 2709360626) == 0