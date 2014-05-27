LIMIT = 1E6

require_relative 'lib/is_prime'

def next_circular_num(num)
  num[-1] + num[0..(-2)]
end

def circular_numbers(num)
  num = num.to_s
  nums = [num]

  (num.size-1).times do
    num = num[-1] + num[0..(-2)]
    nums << num
  end

  return nums.collect(&:to_i).uniq
end

def circular_prime?(num)
  return false unless IsPrime.check(num)[0]

  all_primes = true
  circular_numbers(num).each do |cnum|
    all_primes &&= IsPrime.check(cnum)[0]
  end

  return all_primes
end

count = 0

(2..LIMIT).each do |num|
  if num%1000 == 0
    puts "Current Number is #{num}"
    puts "Circular primes count is #{count}"
  end
  count += 1 if circular_prime?(num)
end

puts count