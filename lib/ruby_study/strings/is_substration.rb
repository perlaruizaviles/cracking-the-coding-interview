def is_substration(s1, s2)
  return false if s1.length == 0 || s1.length != s2.length

  first_letter = s1.chars[0]
  s2.chars.each_with_index do |char, index|
    if first_letter == char
      new_string = "#{s2[index..-1]}#{s2[0...index]}"
      return true if new_string == s1
    end
  end

  false
end

# Better version
def is_substration2(s1, s2)
  "#{s1}#{s1}".include?(s2)
end

puts is_substration2("waterbottle","erbottlewat")
puts is_substration2("chocolate","techocola")
puts is_substration2("gel","elg")
puts is_substration2("book","ookh")
