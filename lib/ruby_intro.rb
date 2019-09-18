# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  result = 0
  arr.each do |num|
    result += num
  end
  result
end

def max_2_sum arr
  if (arr.length == 0)
    return 0
  end
  if (arr.length == 1)
    return arr[0]
  end
  sorted_arr = arr.sort
  result = sorted_arr[-1] + sorted_arr[-2]
end

def sum_to_n? arr, n
  i = 1
  arr.each do |ele|
    subarr = arr.drop(i)
    subarr.each do |element|
      if (ele + element == n)
        return true
      end
    end
    i += 1
  end
  return false
end

# Part 2

def hello(name)
  return 'Hello, ' + name
end

def starts_with_consonant? s
  if s =~ /^[a-z]/i
    return s =~ /^[^aeiou]/i
  end
  return false
end

def binary_multiple_of_4? s
  if s =~ /^[01]*$/
    if s == '0'
      return true
    end
    return s =~ /^0*1[01]*00$/
  end
  return false
end

# Part 3

class BookInStock
  def initialize(new_isbn, new_price)
    if new_isbn == '' or new_price <= 0
      raise ArgumentError
    end
    @isbn = new_isbn
    @price = new_price
  end

  def isbn
    @isbn
  end
  
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price
    @price
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    '$' + '%.2f' % @price.to_s
  end

end
