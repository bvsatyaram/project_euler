LIMIT = 100

sum_square = (1..LIMIT).collect{|i| i*i}.reduce(:+)
square_sum = ((1..LIMIT).reduce(:+))**2

puts square_sum - sum_square