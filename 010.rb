require_relative 'lib/is_prime'

LIMIT = 2E6

sum = 0
(2...LIMIT).each do |num|
  sum += num if IsPrime.check(num)[0]
end

puts sum