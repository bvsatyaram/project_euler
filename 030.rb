POWER = 5

def sum_of_powers?(num, pwr)
  num == num.to_s.split("").collect(&:to_i).collect{|i| i**pwr}.reduce(:+)
end

sum = 0
(2..(POWER*(9**POWER))).each do |num|
  sum += num if sum_of_powers?(num, POWER)
end

puts sum