module IsPrime
  # Returns boolean (whether prime or not) and the smallest prime factor
  def self.check(num)
    if num < 2
      return false, 1
    elsif [2,3].include?(num)
      return true, 1
    end
    bool = true
    smallest_prime = 1
    (2..(Math.sqrt(num).to_i)).each do |fact|
      if num%fact == 0
        bool = false
        smallest_prime = fact
        break
      end
    end
    return bool, smallest_prime
  end
end