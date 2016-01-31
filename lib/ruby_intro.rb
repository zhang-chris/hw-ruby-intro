# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do |num|
  	total += num
  end
  return total
end

def max_2_sum arr
  if arr.length == 0
  	return 0
  elsif arr.length == 1
  	return arr[0]
  else
  	first = nil
  	second = nil
  	arr.each do |x|
  		if first == nil or x > first
  			second = first
  			first = x
  		elsif second == nil or x > second
  			second = x
  		end
  	end
  end
  return first + second
end


def sum_to_n? arr, n
  if arr.length == 0
    return false
  elsif arr.length == 1
    return false
  else 
    (0..(arr.length-1)).each do |x|
      (0..(arr.length-1)).each do |y|
        if x != y
          if arr[x] + arr[y] == n
            return true
          end
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s =~ /\A[b-df-hj-np-tv-z]/i
    return true
  end 
  return false
end

def binary_multiple_of_4? s
  if s !~ /^[0-1]+/
    return false
  elsif s.length < 2 and s == "0"
    return true
  elsif s.length >= 2 and s[-2..-1] == "00"
    return true
  else
    return false
  end
end

# Part 3

class BookInStock

  def initialize(isbn, price)
    if isbn == "" or price <= 0
      raise ArgumentError.new("Invalid Argument")
    end
    @isbn = isbn
    @price = price
  end

  attr_accessor:isbn
  attr_accessor:price

  def price_as_string
    final = "$"
    p = @price.to_s
    if p.include? "."
      if p[-2..-1].include? "."
        final += p + "0"
      else
        final += p
      end
    else
      final += p + ".00"
    end
    return final
  end
end
