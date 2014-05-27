GRID_SIZE = 1001

@prev_val_1 = 9
@prev_val_2 = 7
@prev_val_3 = 5
@prev_val_4 = 3

def first_quardrant_val(n)
  return @prev_val_1 if n == 1
  @prev_val_1 += 8*n
  @prev_val_1
end

def second_quadrant_val(n)
  return 7 if n == 1
  @prev_val_2 +=  8*n - 2
  @prev_val_2
end

def third_quadrant_val(n)
  return 5 if n == 1
  @prev_val_3 +=  8*n - 4
  @prev_val_3
end

def fourth_quadrant_val(n)
  return 3 if n == 1
  @prev_val_4 +=  8*n -6
  @prev_val_4
end

sum = 1
(1..((GRID_SIZE-1)/2)).each do |n|
  sum += first_quardrant_val(n)
  sum += second_quadrant_val(n)
  sum += third_quadrant_val(n)
  sum += fourth_quadrant_val(n)
end

puts sum