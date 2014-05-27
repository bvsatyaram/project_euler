require_relative "lib/sum_of_proper_factors"

LIMIT = 10000

def sum_of_proper_divisors(num)
  SumOfProperFactors.new(num).get
end

amicable_nums = []
sum_of_amicable_nums = 0
(2..(LIMIT-1)).each do |num|
  next if amicable_nums.include?(num)
  sum_for_num = sum_of_proper_divisors(num)
  if (num != sum_for_num) && (sum_of_proper_divisors(sum_for_num) == num)
    amicable_nums << num
    amicable_nums << sum_for_num
  end
end

amicable_nums = amicable_nums.uniq.sort.select{|i| i < LIMIT}
puts amicable_nums.join(", ")
puts amicable_nums.reduce(:+)