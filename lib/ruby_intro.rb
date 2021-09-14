# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length == 0 
    return 0
  else
    return arr.reduce(:+)
  end
  # YOUR CODE HERE
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr.sort! {|x, y| y <=> x}
    return arr[0] + arr[1]
  end
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  if arr.length == 0
    return false
  elsif arr.length == 1
    return false
  else
    r = arr.length - 1
    arr.sort!
    i = 0
    while i < r
      if arr[i] + arr[r] == n 
        return true
      elsif arr[i] + arr[r] < n
        i = i + 1
      else
        r = r - 1
      end
    end
    return false
  end
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  return "Hello, #{name}"
  # YOUR CODE HERE
end

def starts_with_consonant? s
  if s.match(/^[a-zA-Z].*/i)
    if s.match(/^[aeiou].*/i)
      return false
    else
      return true
    end
  else
    return false
  end
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s_int = s.to_i(2)
  if s != "0" and s_int == 0
    return false
  elsif s_int % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn,price)
     # assign instance variables
    raise ArgumentError.new("Not valid isbn") if isbn.strip == ""
    raise ArgumentError.new("Not valid price") if price <= 0
    @isbn, @price = isbn, price
  end
     # accessor methods
  def isbn
    @isbn
  end
  def price
    @price
  end

   # setter methods
  def isbn= newisbn
    @isbn = newisbn
  end
  def price= newprice
    @price = newprice
  end
# YOUR CODE HERE
  def price_as_string 
    return "$#{'%.2f' % @price}"
  end
end
