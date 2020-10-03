require 'byebug'

def rotate(matrix)
  new_matrix = Array.new(matrix[0].length){Array.new(matrix.length)}
  matrix.each_with_index do |sub_array, index|
    limit_y = matrix.length - 1
    sub_array.each_with_index do |item, sub_index|
      new_matrix[sub_index][limit_y - index] = item
    end
  end
  new_matrix
end

def rotate_swap(matrix)
  max_x = matrix[0].length - 1
  index = 0
  until (index >= matrix.length / 2)
    array = matrix[index]
    sub_index = index
    until sub_index >= array.length - 1 - index
      # Firts swap
      temp = matrix[sub_index][max_x - index] # 3, 4
      matrix[sub_index][max_x - index] = array[sub_index] # set 1, 1

      # Second swap
      temp2 = matrix[max_x-index][max_x-sub_index] # 9
      matrix[max_x-index][max_x-sub_index] = temp # set 3, 4

      # Third swap
      temp = matrix[max_x-sub_index][index] # 7
      matrix[max_x-sub_index][index] = temp2 # set 9

      # Fourth swap
      array[sub_index] = temp # set 7
      sub_index+=1
    end
    index+=1
  end

  matrix
end

matrix = [
  [1,2,3],
  [4,5,6],
  [7,8,9]
]

matrix = [
  [1,2,3,4],
  [5,6,7,8],
  [9,10,11,12],
  [13,14,15,16]
]

puts rotate_swap(matrix).to_a.map(&:inspect)
