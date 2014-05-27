# TRIANGLE_FILE = File.open("data/067_1.txt")
TRIANGLE_FILE = File.open("data/067_2.txt")
rows = []
TRIANGLE_FILE.each do |line|
  rows << line.split(" ").collect(&:to_i)
end

(rows.size - 2).downto(0) do |row_count|
  this_row = rows[row_count]
  next_row = rows[row_count + 1]
  (0..(this_row.size-1)).each do |i|
    this_row[i] += [next_row[i], next_row[i+1]].max
  end
  rows[row_count] = this_row
end

puts rows[0][0]