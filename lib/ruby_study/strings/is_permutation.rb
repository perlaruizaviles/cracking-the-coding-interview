def is_permutation?(str, str2)
  str.chars.sort == str2.chars.sort
end

puts is_permutation?("aaab", "abaa")
puts is_permutation?("ab", "abaa")

def is_permutation2?(str, str2)
  counter = {}

  str.chars.each do |char|
    counter[char] = counter[char] ? counter[char]+=1 : 1
  end

  str2.chars.each do |char|
    return false if counter[char] == nil || counter[char] == 0

    counter[char]-=1
  end

  true
end
puts is_permutation2?("aaab", "abaa")
puts is_permutation2?("ab", "abaa")

# Ruby Way
puts "Ruby way permutations #{"aaab".chars.permutation.include?("aaab".chars)}"
puts "Ruby way permutations #{"ab".chars.permutation.include?("abaa".chars)}"