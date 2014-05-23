UPPER_LIMIT = 4E6

buffer_array = [1,2]
sum = 0

while buffer_array[1] < UPPER_LIMIT
  sum += buffer_array[1] if buffer_array[1]%2 == 0
  buffer_array = buffer_array[1], buffer_array[0] + buffer_array[1]
end

puts sum