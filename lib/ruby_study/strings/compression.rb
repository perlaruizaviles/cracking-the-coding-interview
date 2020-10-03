def compression(str)
  repetitions = 0
  compressed = ""
  last_char = str.chars[0]
  str.chars.each do |char|
    if char != last_char
      compressed = "#{compressed}#{last_char}#{repetitions}"
      last_char = char
      repetitions = 0
    end
    
    repetitions+=1
  end
  compressed = "#{compressed}#{str.chars[-1]}#{repetitions}"

  compressed.length > str.length ? str : compressed
end

puts compression("aabcccccaaa") # a3b1c5a3
puts compression("ab") # ab