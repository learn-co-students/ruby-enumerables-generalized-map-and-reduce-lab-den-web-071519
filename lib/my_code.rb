require 'pry'

def map(array)
  new_array = array.map {|el|
  yield(el)
  }
  new_array
end

## using the INTENDED "correct answer" from the previous lesson as it pertains to
## the map method, not the reduce method.

## we basically need to go back and see WHAT IS THE GENERALIZED VERSION of reduce
## that only has a few changes per reduce method iteration, per the code below
## regarding the method above.

##MAP, below. Need to find REDUCE's version of this.

## yielding is identifying that VARIABILITY. The variability here is in
## line: new.push() –– inside those brackets.

##IMPORTANT: the return value of the BLOCK will be the return value of the expression.
## i.e. why we can throw it up to the block and we don't need to change the
## yield code within. If memo && n are true, then the return value is true.

## they mention if/then logic at the end of the written explanation, so there
## is a good chance that they want me to include some logic here...

## let's start with returning a running total when not given a starting point.

## okay, we've created the correct answer from the previous section. Now, let's create
## the correct answer for questions of truthy/falsy...
def reduce(source_array, starting_point = 0)
    new_array = []
    i = 0
    while i < source_array.length
      if !!starting_point == false
      starting_point = yield(starting_point, source_array[i])
    elsif !!starting_point == true
      starting_point = yield(source_array[i], starting_point)
      end
      i += 1
    end
    starting_point
end

 #binding.pry

 ## Okay, we know we need to create a function called reduce.
 ## the goal is for this one function to encapsulate several different tasks.
 ## in fact, 6 tasks. We need this one general funciton, which contains a yield
 ## to a specific block, to give us the goods we need.

## in one case, we are returning the final value aka _starting point's final
## value

## in the other cases, we are returning true or false based on the elements
## within the given array.

## in all of these situations, we know these things to be true:
## there is a source array
## there is a default starting point which may or may not be useful, depending
## we need to use yield.
## we need to iterate through each element, yielding to the block as we go.

## let's try to use the while loop. before that, let's read the whole lab again.

## immediately, one important difference is that they used a while loop and
## created a NEW, empty array. We should incorporate that into our yielding method.
