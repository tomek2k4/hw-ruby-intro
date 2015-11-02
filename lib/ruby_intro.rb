# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
	unless array.is_a? Array
	  puts "Input is not an array"
	  return
	end
    sum = 0
	if array != []
	  array.each do |element|
		unless element.is_a? Integer
		  puts "One of the element is not Integer"
		  return
		end
		sum += element
	  end
	end
    return sum
end

def max_2_sum(array)
	unless array.is_a? Array
	  puts "Input is not an array"
	  return
	end
    sum = 0
	if array != []
	  if array.length == 1
		return array[0]
	  else
		array.sort!
		array.reverse!
		sum = array[0] + array[1]
	  end
	end
    return sum
end

def sum_to_n?(array,n)
	unless array.is_a? Array
	  puts "Input is not an array"
	  return
	end

	array.each do |element|
	  unless element.is_a? Integer
	    puts "one of element is not integer"
		return false
	  end
	end

	result = false

    sum = 0
	if array != []
	  if array.length == 1
		return false
	  else
	    sums = Hash.new(false)
		combinations = array.combination(2)

		combinations.each do |subarray|
		  sum = subarray[0] + subarray[1]
		  sums[sum] = true
        end
		puts "#{sums}"
		return sums[n]
	  end
	else
	  return false
	end

end

# Part 2

def hello(name)
  return nil unless name.is_a? String
  return "Hello, " + name
end

def starts_with_consonant?(s)
  if s =~ /^[^aeiouAEIOU\W\d][a-zA-Z]*$/
    return true
  else
    return false
  end
end

def binary_multiple_of_4?(s)
  if s.length == 0 
  	return false
  end
  if s =~ /^[0]*$/
  	return true
  elsif s =~ /^[10]*00$/
  	return true
  else
  	return false
  end
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn,price)
    raise ArgumentError, 'Isbn is an empty string' if isbn.length == 0
    raise ArgumentError, 'Price is less or equal zero' if price<=0
    @isbn = isbn
	  @price = price
  end

  def price_as_string
    return "\$#{format("%.2f",@price)}"
  end
end
