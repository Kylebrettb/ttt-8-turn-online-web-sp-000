def position_taken?(board,index)
   if (board[index] == "" || board[index] == " " || board[index] == nil)
        false
    else
        true
    end
end


def valid_move?(board,index)
  index.between?(0,8) && !position_taken?(board, index)
end


def display_board (board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
 user_input.to_i - 1
end

def move(board,position,player = "X")
  board[position] = player
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip 
 index= input_to_index(input)
  valid_move?(board,index)
  
end

