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
  sortedArr = arr.sort
  for i in 0..sortedArr.length - 1
    for j in (i+1)..sortedArr.length - 1
      if (sortedArr[i] + sortedArr[j] == n)
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  return s =~ /\A[bBcCdDfFgGhHjJkKlLmMnNpPqQrRsStTvVwWxXyYzZ]/
end

def binary_multiple_of_4? s
  return s.to_i(2) % 4 == 0 && s =~ /^[0-1]+$/i
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn == "" || price <= 0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end
  
  def price_as_string
    decimal = (price * 100).to_i % 100
    return (decimal < 10) ? "$" + price.to_i.to_s + ".0" + decimal.to_s : "$" + price.to_i.to_s + "." + decimal.to_s
    
  end
end