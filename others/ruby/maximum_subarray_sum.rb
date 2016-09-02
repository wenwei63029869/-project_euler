def create_modulo_array(arr, m)
  i = 0
  result = []
  while i < arr.length
    result.push(arr[i] % m)
  end
  result
end

def max_subarray_sum(arr, n, m)
  arr = create_modulo_array(arr, m)
  p1 = 0
  p2 = 0
  ans
  while p2 <= n
    if arr[p1..p2]
  end
end