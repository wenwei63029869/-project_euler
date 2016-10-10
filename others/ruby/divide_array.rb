# you can write to stdout for debugging purposes, e.g.
# A[0] = 5
# A[1] = 5
# A[2] = 1
# A[3] = 7
# A[4] = 2
# A[5] = 3
# A[6] = 5
# x = 5
# answer = 4
# puts "this is a debug message"

# def solution(x, a)
#   left = 0
#   right = a.length - 1
#   left_count = 0
#   right_count = 0
#   k = 0
#   while left <= right
#     puts "left: #{left}"
#     puts "right: #{right}"
#     puts "left_count: #{left_count}"
#     puts "right_count: #{right_count}"
#     if a[left] == x
#       left_count += 1
#     end
#     if a[right] != x
#       right_count += 1
#     end
#     if left_count == right_count
#       k = right
#       left += 1
#     else
#       left += 1
#       right -= 1
#     end
#     puts "left_count: #{left_count}"
#     puts "right_count: #{right_count}"
#     puts "-----------------------"
#   end
#   k
# end

def solution(x, a)
  len = a.length
  equals = 0
  not_equals = 0
  current_equals_count = 0
  current_not_equals_count = 0
  k = 0
  a.each {|num| equals += 1 if num == x}
  return k if equals == 0
  not_equals = len - equals
  while current_equals_count != (not_equals - current_not_equals_count)
    a[k] == x ? current_equals_count += 1 : current_not_equals_count += 1
    k += 1
  end
  k
end

arr1 = [5,5,1,7,2,3,5]

puts solution(5, arr1)
puts solution(5, arr1) == 4

arr2 = [5,5,1,7,5,1,2,3,5]
puts solution(5, arr2)
puts solution(5, arr2) == 5

arr3 = []
puts solution(5, arr3)
puts solution(5, arr3) == 0

arr4 = [5,5,1,7,5,1,2,3,5]
puts solution(10, arr4)
puts solution(10, arr4) == 0