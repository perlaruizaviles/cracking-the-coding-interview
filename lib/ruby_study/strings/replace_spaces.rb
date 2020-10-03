def replace_spaces(array, real_length)
  spaces_counter=0
  array.each do |char|
    spaces_counter+=1 if char == ' '
  end

  index = array.length - 1
  until(index < 0)
    if array[real_length-1] == ' '
      array[index] = '0'
      array[index - 1] = '2'
      array[index - 2] = '%'
      index-=3
    else
      array[index] = array[real_length-1]
      index-=1
    end
    real_length-=1
  end

  array
end

chars_array = "Mr John Smith    ".chars
puts replace_spaces(chars_array, 13).join('')

# Regex
puts "Replacing with regex: #{chars_array.join('').gsub(/\s/, '%20')}"
