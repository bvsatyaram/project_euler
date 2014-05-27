require_relative "prime_factorization"

class SumOfProperFactors
  def initialize(num)
    @num = num
  end

  def get
  return 0 if @num == 0
  prime_factors = PrimeFactorization.new(@num).get
  return 0 if prime_factors.keys.size == 1
  sums_of_powers_of_primes = []
  prime_factors.keys.each do |prime_factor|
    sums_of_powers_of_primes << (((prime_factor**(prime_factors[prime_factor]+1))-1)/(prime_factor-1))
  end

  return sums_of_powers_of_primes.reduce(:*) - @num
end
end