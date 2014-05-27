LIMIT = 1E6.to_i

def is_palidrome(num)
  num = num.to_s

  # Remove trailing zeros
  # num = num.match(/^([1-9]*[0-9]*[1-9])0*$/)[1]
  return num == num.reverse
end

# puts is_palidrome(121.to_s)
# puts is_palidrome(121.to_s(2))
# puts is_palidrome(585.to_s)
# puts is_palidrome(585.to_s(2))
# puts is_palidrome(21.to_s)
# puts is_palidrome(21.to_s(2))


sum = 0

(1..LIMIT).each do |num|
  sum += num if is_palidrome(num.to_s) && is_palidrome(num.to_s(2))
  puts "Current number: #{num}" if num%1000 == 0
end

puts sum