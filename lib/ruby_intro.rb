# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  counter = 0
  if arr.length == 0
    return 0
  else
    arr.each do |num|
      counter += num
    end
  end
  return counter
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    sortedArr = arr.sort
    return sortedArr[sortedArr.length - 1] + sortedArr[sortedArr.length - 2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
