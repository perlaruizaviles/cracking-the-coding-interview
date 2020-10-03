require 'byebug'
require 'set'

def validSolution(board)
  x = 0
  until x >= 9
    y = 0
    until y >= 9
      array = []
      array << board[x][y..y+3]
      array << board[x+1][y..y+3]
      array << board[x+2][y..y+3]
      return false if array.flatten.to_set.length != 9
    
      y+=3
    end
    
    return false unless check_rows_and_columns(board, x)
    x+=1
    return false unless check_rows_and_columns(board, x)
    x+=1
    return false unless heck_rows_and_columns(board, x)
    x+=1
  end

  true
end

def check_rows_and_columns(board, x)
  row = board[x]
  return false if row.include?(0)
  return false unless valid_array(row) && valid_array(board.map { |array| array[x] })
end

def valid_array(array)
  return false if array.length != array.to_set.length
  true
end

matrix = [
  [1, 3, 2, 5, 7, 9, 4, 6, 8],
  [4, 9, 8, 2, 6, 1, 3, 7, 5],
  [7, 5, 6, 3, 8, 4, 2, 1, 9],
  [6, 4, 3, 1, 5, 8, 7, 9, 2],
  [5, 2, 1, 7, 9, 3, 8, 4, 6],
  [9, 8, 7, 4, 2, 6, 5, 3, 1],
  [2, 1, 4, 9, 3, 5, 6, 8, 7],
  [3, 6, 5, 8, 1, 7, 9, 2, 4],
  [8, 7, 9, 6, 4, 2, 1, 3, 5]
]

puts validSolution(matrix)