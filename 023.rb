require_relative "lib/sum_of_proper_factors"

LIMIT = 28123

@abundants = []
@sum_of_abundants_sum = 0

def abundant?(num)
  return num < SumOfProperFactors.new(num).get
end

(1..LIMIT).each do |num|
  @abundants.each do |abd|
    next if num < 2*abd
    if @abundants.include?(num - abd)
      @sum_of_abundants_sum += num
      break
    end
  end
  if abundant?(num)
    @abundants << num
  end
  if num%200 == 0
    puts "Current number is #{num}"
    puts "Abundants count is #{@abundants.count}" if num%100 == 0
  end
end

sum_of_non_abundants = (LIMIT*(LIMIT+1)/2)-@sum_of_abundants_sum
puts @sum_of_non_abundants