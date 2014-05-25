# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

NO_DIGITS = 3

def is_palindrome(num)
  num = num.to_s
  return num == num.reverse
end

def is_product_of_2_nums(num, digits)
  high = (10**digits - 1)
  low = (10**(digits - 1))
  bool = false
  high.downto(low).each do |fact|
    if num%fact == 0 && (num/fact >= low) && (num/fact <= high)
      bool = true
      break
    end
  end

  return bool
end

def get_largest_palindrome(low, high, digits)
  ans = 0
  high.downto(low).each do |num|
    if is_palindrome(num) && is_product_of_2_nums(num, digits)
      ans = num
      break
    end
  end
  if ans == 0
    puts "No such number"
  else
    puts ans
  end  
end

upper_limit = (10**NO_DIGITS - 1)**2
lower_limit = (10**(NO_DIGITS - 1))**2
get_largest_palindrome(lower_limit, upper_limit, NO_DIGITS)
