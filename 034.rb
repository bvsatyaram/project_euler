@factorials = {0 => 1}

(1..9).each do |i|
  @factorials[i] = (1..i).reduce(:*)
end

sum = 0
# 7*9! is 2540160
(10..2540160).each do |i|
  puts "Current number is #{i}" if i%1000 == 0
  if i == i.to_s.split("").collect(&:to_i).collect{|digit| @factorials[digit]}.reduce(:+)
    sum += i
  end
end

puts sum