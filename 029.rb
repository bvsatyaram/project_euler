LIMIT = 100

powers = []
(2..LIMIT).each do |a|
  (2..a).each do |b|
    powers << a**b
    powers << b**a unless a == b
  end
end

puts powers.uniq.size