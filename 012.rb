DIVISORS_THRESHOLD = 500

require_relative 'lib/prime_factorization'

traingle_number = 1
nat_num = 1

factors_count = {}

class TraingleFactors
  def initialize
    @factors_count = {}
    @nat_num = 0
    @highest_divisors_count = 0
  end

  def divisors_count(num)
    @factors_count[num] ||= PrimeFactorization.new(num).get.values.collect{|i| i+1}.reduce(:*)
    return @factors_count[num]
  end

  def triangle_divisors_count(num)
    coprimes = []
    if num%2 ==0
      coprimes = [num/2, num+1]
    else
      coprimes = [num, (num+1)/2]
    end
    return coprimes.collect{|i| self.divisors_count(i)}.reduce(:*)
  end

  def get_traingle_with_min_factors(factors_threshold)
    while @highest_divisors_count <= factors_threshold
      @nat_num += 1
      factors_count = self.triangle_divisors_count(@nat_num)
      if factors_count > @highest_divisors_count
        @highest_divisors_count = factors_count
        traingle_number = @nat_num*(@nat_num+1)/2
        puts ""
        puts "Highest divisors count so far: #{factors_count}"
        puts "Triangle number is: #{traingle_number}"
        puts "Iteration count is: #{@nat_num}"
      end
      print "."
      @highest_divisors_count = [@highest_divisors_count, factors_count].max
    end
  end
end

TraingleFactors.new.get_traingle_with_min_factors(DIVISORS_THRESHOLD)