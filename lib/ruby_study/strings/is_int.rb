require 'byebug'

def to_int(str)
  str = str.gsub(' ', '')

  return 0 if str !~ /\d-*/
  # for negatives lets asumme that is at the star
  negative = str =~ /-/ ? true : false
  str[0] = '' if negative

  numbers_map = ("0".."9").map.with_index { |number, index| [number, index] }.to_h

  value = str
            .chars
            .reverse
            .map.with_index { |char, index| numbers_map[char]*10**index }.sum

  negative ? value * -1 : value
end

puts to_int("asd")
puts to_int("123")
puts to_int("-100")
puts to_int("- 30 0")
