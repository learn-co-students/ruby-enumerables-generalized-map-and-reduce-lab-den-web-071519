def map(array)
  new_array = []
  array.length.times { |i|
   new_array << yield(array[i])
  }
  return new_array
end

def reduce(array, starting_val = nil)
  if starting_val
    total = starting_val
    i = 0
  else
    total = array[0]
    i = 1
  end
  while i < array.length
  total = yield(total, array[i])
  i += 1
end
return total
end

