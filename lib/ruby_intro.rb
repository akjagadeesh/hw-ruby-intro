# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  Integer zero = 0
  if arr.length == 0
    return zero
  else
    Integer r_sum = 0
    for nums in arr
      r_sum = r_sum + nums
    
    end
      return r_sum
  end
  
end

def max_2_sum arr
  # YOUR CODE HERE
  
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    biggest= -1.0/0
    biggest_2= -1.0/0
  
    for nums in arr
      if(nums>biggest)
        biggest_2=biggest
        biggest = nums
      elsif (nums > biggest_2 )
        biggest_2=nums
      
      
      end 
    end
    
    return biggest+biggest_2
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 0
    return false
  end
  
  combos = arr.combination(2).to_a
  for combo in combos
    sum = max_2_sum(combo)
    if sum == n
      return true
    end
    
  end
  
  return false
  
end

# Part 2

def hello(name)
  if name == nil
    return nil
  else
    return "Hello, " + name
  end
end

def starts_with_consonant? s
  if s.length == 0
    return false
  elsif (/\W/.match(s[0]))
    return false
  elsif (/[AEIOUaeiou]/.match(s[0]))
    return false
  else
    return true
  end
  
end

def binary_multiple_of_4? s
  
  if not (/\A[+-]?\d+(\.\d+)?\z/.match(s))
    return false
  end

  num=s.to_i
  puts num
  end_condition=1
  last_digit = 0
  dec_num = 0
  base = 1
  
  while(end_condition!=0)
    end_condition = num/10
    last_digit = num % 10
    num = end_condition
    dec_num = dec_num+(last_digit*base)
    base = base * 2
  end
  if(dec_num % 4 == 0)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_reader :isbn
  attr_writer :isbn
  attr_writer :price
  attr_reader :price
  
  def initialize(bisbn,bprice)
    raise ArgumentError if(bisbn.length == 0 || bprice <= 0)
    @isbn = bisbn
    @price = bprice
  end
  
  def price_as_string
    @price = '%.2f' % @price
    price_s = "$" + @price.to_s
    return price_s
    
  end
end
