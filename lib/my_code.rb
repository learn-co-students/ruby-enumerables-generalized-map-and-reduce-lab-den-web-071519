# Your Code Here
def map(source_array, &block)
  source_array.map(&block)
end

def reduce(source_array, starting_point = 0)
  if source_array.all? {|n| n.is_a? (Integer)}
    source_array.reduce(starting_point) {|total, n| total + n}
  else
    if source_array[0]
      source_array.reduce(true) {|bool, n| n == false ? bool = false : bool}
    else
      source_array.reduce(false) {|bool, n| n == true ? bool = true : bool}
    end
  end
end
