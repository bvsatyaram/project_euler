require_relative 'prime_factorization'

module LCM
  # Returns LCM of two numbers *a* and *b*
  def self.get(a, b)
    fact1 = PrimeFactorization.new(a).get
    fact2 = PrimeFactorization.new(b).get

    lcm_fact = fact1
    fact2.each do |prime, power|
      lcm_fact[prime] ||= 0
      lcm_fact[prime] = [lcm_fact[prime], power].max
    end

    lcm_val = 1
    lcm_fact.each do |prime, power|
      lcm_val *= (prime**power)
    end

    return lcm_val
  end
end