def is_palindrome_permutation(str)
  str = str.gsub(/\W/, '').downcase
  odd_is_allowed = str.length % 2 == 0 ? false : true

  char_map = {}
  odd_counter = 0
  str.chars.each do |char|
    if char_map.include?(char)
      odd_counter-=1 if char_map[char] % 2 == 1
      char_map[char]+=1
    else
      char_map[char] = 1
      odd_counter+=1
    end
  end

  return false if !odd_is_allowed && odd_counter > 0 || odd_is_allowed && odd_counter > 1

  true
end

puts is_palindrome_permutation("Tac Coat")