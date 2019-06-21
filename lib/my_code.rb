def map(array)
    array.collect { |i| yield(i) }
end


def reduce(array, starting_point = nil)
    total = 0
    i = 0

    if starting_point
        total = starting_point
        i = 0
    else
        total = array[0]
        i = 1
    end

    while i < array.length
        total = yield(total, array[i])
        i += 1
    end
    total
end
