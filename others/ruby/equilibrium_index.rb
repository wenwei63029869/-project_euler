# Assume that:
# N is an integer within the range [0..100,000];
# each element of array A is an integer within the range [−2,147,483,648..2,147,483,647].
 # given a zero-indexed array A consisting of N integers, returns any of its equilibrium indices. The function should return −1 if no equilibrium index exists.

def solution(a)
  sum = a.inject(0) {|sum, x| sum = sum + x}
  len = a.length
  right = 0
  start = 1
  if len == 0
    return -1
  elsif sum - a[0] == right
    return 0
  elsif sum - a[len-1] == right
    return len - 1
  end
  while start < len - 1
    temp = sum - a[start]
    right += a[start-1]
    return start if temp % 2 == 0 && temp / 2 == right
    start += 1
  end
  -1
end

puts solution([-1, 3, -4, 5, 1, -6, 2, 1]) == 1