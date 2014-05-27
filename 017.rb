LIMIT = 1000

class NumTranslator
  def ones_string(num)
    num_string = case num
    when 1
      "one"
    when 2
      "two"
    when 3
      "three"
    when 4
      "four"
    when 5
      "five"
    when 6
      "six"
    when 7
      "seven"
    when 8
      "eight"
    when 9
      "nine"
    when 0
      ""
    end

    return num_string
  end

  def eleventies_string(num)
    num_string = case num
    when 10
      "ten"
    when 11
      "eleven"
    when 12
      "twelve"
    when 13
      "thirteen"
    when 14
      "fourteen"
    when 15
      "fifteen"
    when 16
      "sixteen"
    when 17
      "seventeen"
    when 18
      "eighteen"
    when 19
      "nineteen"
    end

    return num_string
  end

  def tens_string(num)
    num_string = case num
    when 2
      "twenty"
    when 3
      "thirty"
    when 4
      "forty"
    when 5
      "fifty"
    when 6
      "sixty"
    when 7
      "seventy"
    when 8
      "eighty"
    when 9
      "ninety"
    end

    return num_string
  end

  def number_to_english_word(num)
    num = num.to_i
    if num >1000 || num < 1
      puts "The number #{i} is out of range"
      return      
    end

    return "One Thousand" if num == 1000

    num_word = ""

    hundreds_digit = num/100
    num_word += (ones_string(hundreds_digit) + " hundred ") if hundreds_digit > 0
    num_word += "and " if (hundreds_digit > 0) && (num%100 != 0)
    tens_digit = (num%100)/10
    case tens_digit
    when 0
      num_word += ones_string(ones_digit = num%10)
    when 1
      num_word += eleventies_string(num%100)
    else
      num_word += tens_string(tens_digit)
      num_word += ones_string(ones_digit = num%10)
    end

    return num_word
  end

  def letters_count(num)
    return number_to_english_word(num).gsub(" ", "").size
  end
end

puts (1..LIMIT).collect{|i| NumTranslator.new.letters_count(i)}.reduce(:+)
