longest_cycle_length = 0

def get_longest_length(num)
  length = 0
  found_reminders = {1 => 1}
  multiplier = 1
  position = 1
  while (multiplier != 0)
    multiplier = (10*multiplier)%num
    position += 1
    if found_reminders[multiplier].nil?
        found_reminders[multiplier] = position
    else
        length = position - found_reminders[multiplier]
        break
    end
  end
  if multiplier == 0
    return 0
  else
    return length
  end
end

999.downto(1).each do |num|
  break if num < longest_cycle_length
  longest_cycle_length = [longest_cycle_length, get_longest_length(num)].max
  puts "Current num is: #{num}"
  puts "Current strike is #{longest_cycle_length}"
end

puts longest_cycle_length