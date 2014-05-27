LIMIT = 1000

fib_n_minus_1 = 1
fib_n_minus_2 = 1
fib_n = 0
n = 2

while fib_n.to_s.size < LIMIT
  n += 1
  fib_n = fib_n_minus_1 + fib_n_minus_2
  fib_n_minus_2 = fib_n_minus_1
  fib_n_minus_1 = fib_n
  if n%1000 == 0
    puts "Current n is #{n}"
    puts "Current fib has #{fib_n.to_s.size} digits"
  end
end

puts n
puts fib_n