require 'date'

sundays_count = 0
(1901..2000).each do |year|
  (1..12).each do |month|
    sundays_count += 1 if (Date.new(year, month).wday == 0)
  end
end

puts sundays_count