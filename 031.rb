DENOMINATIONS = [1,2,5,10,20,50,100,200]

@next_denominations = {}
(1..(DENOMINATIONS.size-1)).each do |i|
  @next_denominations[DENOMINATIONS[i]] = DENOMINATIONS[i-1]
end

def make_change(amount, denomination)
  next_denomination = @next_denominations[denomination]
  return 1 if next_denomination.nil?

  no_ways = 0
  (0..(amount/denomination)).each do |i|
    no_ways += make_change(amount-i*denomination, next_denomination)
  end

  return no_ways
end

puts make_change(200,200)