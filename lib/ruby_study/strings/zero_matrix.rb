require 'byebug'

def zero_matrix(matrix)
  map_coords = { x: [], y: [] }
  matrix.each_with_index do |sub_array, index|
    sub_array.each_with_index do |item, sub_index|
      if item == 0
        map_coords[:x] << index
        map_coords[:y] << sub_index   
      end
    end
  end
  
  clean_matrix = clear_row_and_column2(map_coords, matrix)
end

def clear_row_and_column(map_coords, matrix)
  matrix.each_with_index do |sub_array, index|
    sub_array.each_with_index do |_item, sub_index|
      if map_coords[:x].include?(index) || map_coords[:y].include?(sub_index)
        sub_array[sub_index] = 0
      end
    end
  end
  matrix
end

def clear_row_and_column2(map_coords, matrix)
  map_coords[:x].uniq.each do |row_index|
    matrix[row_index] = Array.new(matrix[row_index].length, 0)
  end

  map_coords[:y].uniq.sort.each do |column_index|
    matrix.each do |sub_array|
      sub_array[column_index] = 0
    end
  end

  matrix
end

matrix = [
  [1,0,3,13],
  [4,5,6,16],
  [7,8,0,10]
]

puts zero_matrix(matrix).map(&:inspect)