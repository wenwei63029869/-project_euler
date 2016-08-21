arr = [12, 16, 22, 30, 35, 39, 42, 45, 48, 50, 53, 55, 56]
# arr = [12, 16, 22, 30, 35]
# k = 4, x = 35

def find_node(k, x, array)
  result = []
  len = array.length
  l = find_crossover(x, array.length-1, 0, array)
  r = l + 1
  count = 0

  l -= 1 if array[l] == x

  while l > 0 && r < len && count < k
    if x - array[l] <= array[r] - x
      result << array[l]
      l -= 1
    else
      result << array[r]
      r += 1
    end
    count += 1
  end

  while r < len && count < k
    result << array[r]
    r += 1
    count += 1
  end

  while l > 0 && count < k
    result << array[l]
    l -= 1
    count += 1
  end

  return result
end



def find_crossover(x, high, low, array)
  if array[high] <= x
    return high
  end
  if array[low] >= x
    return low
  end

  mid = (high+low)/2
  if x >= array[mid] && x < array[mid+1]
    return mid
  end
  if x > array[mid]
    return find_crossover(x, high, mid+1, array)
  else
    return find_crossover(x, mid-1, low, array)
  end
end

p find_node(4, 35, arr)

