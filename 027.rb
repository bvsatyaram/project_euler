require_relative 'lib/is_prime'
LIMIT = 999

def quad(a, b, n)
  return (n*n) + (a*n) + b
end

maximum_primes_count_index = 0
maximum_primes_count_coefs = [0, 0]
((-LIMIT)..LIMIT).each do |b|
  next unless IsPrime.check(b)[0]
  ((-LIMIT)..LIMIT).each do |a|
    next unless IsPrime.check(quad(a,b,maximum_primes_count_index+1))[0]
    ncount = 0
    while IsPrime.check(quad(a,b,ncount+1))[0]
      ncount += 1
    end
    if ncount > maximum_primes_count_index
      maximum_primes_count_index = ncount
      maximum_primes_count_coefs = [a,b]
      puts "Max primes count is #{ncount}"
      puts "That's for coeffs: #{a} and #{b}"
    end
  end
end

puts maximum_primes_count_coefs.reduce(:*)