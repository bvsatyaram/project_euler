require_relative 'is_prime'

class PrimeFactorization
  def initialize(num)
    @number = num
    @factors = {}
  end

  def calc
    bool, smallest_prime = IsPrime.check(@number)
    if bool
      @factors[@number] ||= 0
      @factors[@number] += 1
    else
      @factors[smallest_prime] ||= 0
      @factors[smallest_prime] += 1
      @number /= smallest_prime
      self.calc
    end
  end

  def get
    self.calc
    return @factors
  end
end