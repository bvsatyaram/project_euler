names_file = File.open("data/022.txt")
names = ""
names_file.each do |line|
  names += line
end
names = names.gsub("\"", "").split(",").sort

a_ascii = "A".bytes[0]

def alphabetical_value(str, a_ascii)
  str.bytes.collect{|val| val - a_ascii + 1}.reduce(:+)
end

name_scores = 0

names.each_index do |i|
  name_scores += (i+1)*alphabetical_value(names[i], a_ascii)
end

puts names.count
puts names[937]
puts alphabetical_value(names[937], a_ascii)
puts name_scores