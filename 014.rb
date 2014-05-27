class CollatzSequence
  def initialize
    @longest_chain_length = 0
    @longest_chain_number = 0
    @nat_num = 0
  end

  def next_collatz_num(num)
    if num%2 == 0
      return num/2
    else
      return 3*num+1
    end
  end

  def collatz_length(num)
    length = 1
    while num != 1
      num = self.next_collatz_num(num)
      length += 1
    end
    return length
  end

  def track_largest_chain(limit)
    (2...limit).each do |num|
      current_length = self.collatz_length(num)
      if current_length > @longest_chain_length
        @longest_chain_length = current_length
        @longest_chain_number = num
        puts ""
        puts "Highest chain length so far: #{@longest_chain_length}"
        puts "HIghest chain generating number: #{@longest_chain_number}"
      end
      # print "."
    end
  end
end

CollatzSequence.new.track_largest_chain(1E6)