NUMBER = 100

def fact(n)
  return (1..n).reduce(:*)
end

puts fact(NUMBER).to_s.split("").collect(&:to_i).reduce(:+)