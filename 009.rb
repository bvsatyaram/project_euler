# a + b + c = 1000 & a < b < c
# => 1000 = a + b + c < c + c + c => c > 333
# => 1000 = a + b + c > a + a + a  = 3a => a < 334

LIMIT = 1000

break_loop = false
(((LIMIT/3).to_i)..(LIMIT - 3)).each do |c|
  break if break_loop
  (1..(LIMIT/3).to_i).each do |a|
    b = Math.sqrt(c*c - a*a)
    if a + b + c == LIMIT
      puts (a * b * c).to_i
      puts "#{a} #{b} #{c}"
      break_loop = true
      break
    end
  end
end