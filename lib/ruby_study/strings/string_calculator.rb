require 'byebug'

def calculator(str)
  str = str.gsub(/\s/, '')
  numbers = str.split(Regexp.union(%w(+ - / *)))
  ops = str.gsub(/\d/, '').chars
  total = numbers.shift.to_i
  
  return 0 if ops.length != numbers.length
  
  until numbers.empty? do
    n = numbers.shift.to_i
    symbol = ops.shift

    case symbol
    when "+"
      total+= n
    when "-"
      total-= n
    end
  end
  
  total
end

str = "1 + 4 - 6 + 4"
puts calculator(str) # 3