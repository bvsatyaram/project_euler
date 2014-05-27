def pandigital_product?(a,b)
  str = a.to_s + b.to_s + (a*b).to_s
  (str.size == 9) && (str.split("").collect(&:to_i).sort == (1..9).to_a)
end

pandigital_products = []

(2..989).each do |a|
  bstart = (a>9) ? 123 : 1234
  bend = 10000/(a+1)
  (bstart..bend).each do |b|
    if pandigital_product?(a,b)
      pandigital_products << a*b
    end    
  end
end

puts pandigital_products.uniq.reduce(:+)