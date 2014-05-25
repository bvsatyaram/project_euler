PRIME_COUNTER = 10001

require_relative 'lib/is_prime'

iteration_counter = 0
num = 1

while iteration_counter < PRIME_COUNTER
  num += 1
  iteration_counter += 1 if IsPrime.check(num)[0]
end

puts num