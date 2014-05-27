# 9! is 362880 which goes twice in 1E6.
# So, the first digit is 2
# Lexical order of the largest number less than 2E5 is 2*(9!)
# So, 274240th number after 2E5 is the required number
#
# 8! goes 6 times in 274240
# So, the second digit is 7
# So, we need to find 32320th term starting 2701345689
# That is 8001st term from the end
LIMIT = 8001

lexical_order = 0
2798654310.downto(2701345689).each do |num|
  if num.to_s.split("").sort.join("") == "0123456789"
    lexical_order += 1
    puts "Current lexical order is #{lexical_order}" if lexical_order%100 == 0
    if lexical_order == LIMIT
      puts num
      break
    end
  end
end

puts lexical_order