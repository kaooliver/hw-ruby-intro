# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  if arr.empty?
    return 0
  end
  arr.sort!
  l = arr.length
  if l == 1
    return arr[0]
  end
  arr[l-1]+arr[l-2]
end

def sum_to_n? arr, n
  if arr.empty?
    return false
  end
  if arr.length == 1
    return false
  end
  for i in 0..arr.length-2
    for j in i+1..arr.length-1
      if arr[i]+arr[j] == n
        return true
      end
    end
  end
return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if s.empty?
    return false
  end
  arr = ["B","C","D","F","G","H","I","J","K","L","M","N","P","Q","R","S","T","V","W","X","Y","Z"]
  s = s.upcase
  s = s.chars
  for i in 0..arr.length-1
    if s[0] == arr[i]
      return true
    end
  end
  return false
end

def binary_multiple_of_4? s
  if s.empty?
    return false
  end

  c = s.chars
  for i in 0..c.length-1
    if c[i] != "0" && c[i] != "1"
      return false
    end
  end

  n = s.to_i(2)
  if n%4 == 0
    return true
  else
    return false
  end

end

# Part 3

class BookInStock
  attr_accessor:isbn
  attr_accessor:price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty?
    raise ArgumentError if price < 0
    raise ArgumentError if price == 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    sprintf("$%2.2f", price)
  end


end
