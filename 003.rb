# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

MYNUM = 600851475143

require_relative 'lib/is_prime'

def get_largest_prime(num)
  bool, smallest_prime = IsPrime.check(num)
  if bool
    return num
  else
    num /= smallest_prime
    return get_largest_prime(num)
  end  
end

puts get_largest_prime(MYNUM)