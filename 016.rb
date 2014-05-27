POWER = 1000

num = 2**POWER
puts num.to_s.split("").collect(&:to_i).reduce(:+)