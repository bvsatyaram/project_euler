@facts = []

def remove_element(array, ele_single_array)
  if array.uniq == ele_single_array
    return array.uniq
  else
    return array - ele_single_array
  end
end

(12..99).each do |denom|
  (11..(denom-1)).each do |numer|
    actual_number = numer.to_f/denom
    numer_digits = [numer/10, numer%10]
    denom_digits = [denom/10, denom%10]
    common_digits = numer_digits & denom_digits
    if common_digits.size == 1 && common_digits[0] != 0
      silly_numer = remove_element(numer_digits, common_digits)[0]
      silly_denom = remove_element(denom_digits, common_digits)[0]
      begin
        silly_number = (silly_numer.to_f)/silly_denom
      rescue
        puts numer
        puts denom
        puts "Gone"
      end
      if actual_number == silly_number
        @facts << [silly_numer, silly_denom]
      end
    end
  end
end


final_numer = @facts.collect{|fact| fact[0]}.reduce(:*)
final_denom = @facts.collect{|fact| fact[1]}.reduce(:*)

puts @facts.size

puts final_numer
puts final_denom