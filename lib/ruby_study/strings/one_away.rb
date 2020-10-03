def one_away(str, str2)


  if str.length >= str2.length
    longest = str
    shortes = str2
  else 
    shortes = str
    longest = str2
  end

  # Iteraring the longest string we can generalize and only validate the case when the second string has a removal ie when is shorter.
  diferences = 0
  second_index = 0
  longest.chars.each do |char|
    if char!= shortes.chars[second_index]
      if longest.length != shortes.length
        # when one char was removed
        second_index-=1         
      end
      diferences+=1
    end

    second_index+=1
    return false if diferences > 1
  end

  true
end

puts one_away("pale", "ple")
puts one_away("pales", "pale")
puts one_away("pale", "bale")
puts one_away("pale", "bake")
puts one_away("pale", "pasle")
puts one_away("pasle", "pale")
puts one_away("passle", "pale")