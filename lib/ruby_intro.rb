# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  arr.each do |item|
    result += item
  end
  result
end

def max_2_sum arr
  result = 0
  
  return arr.max(2)[0] + arr.max(2)[1] if arr.any? and arr.length > 1
  
  return arr[0] if arr.any? and arr.length == 1
  
  result
end

def sum_to_n? arr, n
  result = false

  if arr.length > 1
    arr.each do |item|
      arr.delete(item)
      result = arr.include?(n - item)
      arr.insert(item)
      break if result
    end
  end
  result
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  
  return false if s.nil? or s.empty?

  s.downcase =~ /^[b-df-hj-np-tv-z].*/
end

def binary_multiple_of_4? s
  
  return false if s.nil? or s.empty?
  
  return s.to_i(2) % 4 == 0 if s =~ /^[01]+/
    
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
      raise ArgumentError if isbn.empty? or price <= 0

      @isbn = isbn
      @price = price
  end

  def price_as_string
    "$" + '%.2f' % @price
  end
end
