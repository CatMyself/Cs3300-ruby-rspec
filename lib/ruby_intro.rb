# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.sum
end

def max_2_sum arr
  arr.max(2).sum
end

def sum_to_n? arr, n
  found = false
  for i in arr do

    check = arr.shift()

    for values in arr do
      if n == check + values
       found = true
      end

    end
  end
  return found
end 
# Part 2

def hello(name)
  name = "Hello, " + name
end

def starts_with_consonant? s
  if s.empty?
    return false
  end
  
  c = s.downcase
  
  if !c.nil?
    "bcdfghjklmnpqrstvwxyz".include?(c[0])
  end
end
  


def binary_multiple_of_4? s
  if s.empty? || s.nil?
    return false
  end
  s = s.reverse
  stringNum = s.chars 
  i = 0
  accumulator = 0
  for bValue in stringNum
    if "0" == bValue || "1" == bValue
      
      accumulator =  accumulator + (2**i * bValue.to_i)
      i += 1;
    else
     return false    
    end
  end
  
  if 0 == accumulator % 4
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  @isbn = ""
  @price = 0

  def initialize(isbn, price)
 
    if isbn.empty? || isbn.nil?
      raise ArgumentError.new("Bad input for ISBN")
    end

    @isbn = isbn
    
    if 0 >= price.to_i
      raise ArgumentError.new("Bad input for price")
    end

    @price = price
  end

  def isbn=(input)
    @isbn = input
  end

  def isbn
    @isbn
  end

  def price=(price)
    @price = price.to_f
  end

  def price
    @price
  end


  def price_as_string
  sprintf("$%.2f",@price)
  end

end
