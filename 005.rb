# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

LIMIT = 20

require_relative 'lib/lcm'
lcm = 1
(1..LIMIT).each do |num|
  lcm = LCM.get(lcm, num)
end

puts lcm