def dirReduc(arr)
  sentence = arr.join(" ")
  last_size = 0
  until (sentence.size == last_size )
    last_size = sentence.size
    sentence = sentence.gsub(/NORTH SOUTH|SOUTH NORTH|EAST WEST|WEST EAST/, "")
    sentence = sentence.gsub("  ", " ")
  end
  
  sentence.strip
end

OPOSSITE = {
  "NORTH" => "SOUTH",
  "SOUTH" => "NORTH",
  "EAST" => "WEST",
  "WEST" => "EAST",
}

def dir_reduc_v2(arr)
  stack = []
  arr.each do |word|
    OPOSSITE[word] == stack.last ? stack.pop : stack.push(word)
  end
  stack.to_a.join(', ')
end

a = ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]
puts dirReduc(a) # ["WEST"]

puts dir_reduc_v2(a) # ["WEST"]