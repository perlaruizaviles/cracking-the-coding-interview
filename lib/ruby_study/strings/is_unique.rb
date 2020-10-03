require 'set'

def is_unique?(str)
  return if str.length > 128

  array = Array.new(128, 0)
  str.chars.each do |char|
    return false if array[char.ord] == 1

    array[char.ord] = 1
  end
  
  true
end
# ruby way
puts "Ruby way is_unique: #{[1,2,3,1].to_set == [1,2,3,1]}"

puts is_unique?("44")
puts is_unique?("117")
puts is_unique?("132")

