def largest_palindrome_product(arr, num)
  binary_search(arr, 0, arr.length - 1, num)
end

def get_all_palindorme_products
  p1 = 100
  result = []
  check_existence = {}
  loop do
    p2 = p1
    loop do
      product = p2 * p1
      if palindorme?(product) && six_digit(product)
        if !check_existence[product]
          result.push(product)
          check_existence[product] = 1
        end
      end
      p2 += 1
      break if p2 > 999
    end
    p1 += 1
    break if p1 > 999
  end
  result
end

def palindorme?(num)
  str = num.to_s
  return str.reverse == str
end

def six_digit(num)
  return num.to_s.length == 6
end

def merge_sort(arr)
  len = arr.length
  result = []
  mid = (arr.length - 1) / 2
  return arr if arr.length < 2
  l_half = merge_sort(arr[0..mid])
  r_half = merge_sort(arr[(mid + 1)..(len - 1)])
  merge_arr(l_half, r_half)
end

def merge_arr(arr1, arr2)
  result = []
  arr1_len = arr1.length
  arr2_len =  arr2.length
  arr1_p = 0
  arr2_p = 0
  while arr1_p < arr1_len || arr2_p < arr2_len
    if !arr2[arr2_p] || (arr1[arr1_p] && (arr1[arr1_p] < arr2[arr2_p]))
      result.push(arr1[arr1_p])
      arr1_p += 1
    else
      result.push(arr2[arr2_p])
      arr2_p += 1
    end
  end
  result
end

def binary_search(arr, start_p, end_p, num)
  if start_p == end_p
    return arr[start_p] < num ? arr[start_p] : arr[start_p - 1]
  end
  mid = start_p + (end_p - start_p) / 2
  return arr[mid - 1] if num == arr[mid]
  return num > arr[mid] ? binary_search(arr, mid + 1, end_p, num) : binary_search(arr, start_p, mid - 1, num)
end

puts sorted_palindorme_products = merge_sort(get_all_palindorme_products)

# puts binary_search([1, 2, 3, 4, 5, 7, 8], 0, 6, 6)
# puts merge_sort([1,3,2,4]) == [1,2,3,4]

# puts palindorme?(1001) == true
# puts palindorme?(12001) == false

puts largest_palindrome_product(sorted_palindorme_products, 101110) == 101101
puts largest_palindrome_product(sorted_palindorme_products, 800000) == 793397