board = [" "," "," "," "," "," "," "," "," "]


def display_board(board)
  puts " #{board[0]} " '|' " #{board[1]} " '|' " #{board[2]} "
  puts '-----------'
  puts " #{board[3]} " '|' " #{board[4]} " '|' " #{board[5]} "
  puts '-----------'
  puts " #{board[6]} " '|' " #{board[7]} " '|' " #{board[8]} "
end

def valid_move?(board, index)
  index <= 8 && index >=0 && !position_taken?(board, index)
end



   #code your #position_taken? method here!
def position_taken?(board, index)
  !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def move(board, index, value="X")
 board[index] = value
end

def input_to_index(inp)
  inp = inp.to_i
  inp = inp -1
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(board,input)
     move(board, input)
     display_board(board)
  else
    turn(board)
   end
 end
