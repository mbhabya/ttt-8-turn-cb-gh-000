def turn(board)
  puts "Please enter 1-9:"
  # input = gets.strip
  index = input_to_index(input)
  position_taken?(board,index)
  valid_move?(board,index)
  move(board,index)

end
     def move(board,index,value="X")
      board[index]=value
      return board
    end
      def input_to_index(input)
        return input.to_i - 1
      end
   def position_taken?(board,index)
    return false if((board[index] == "")||(board[index] == " ")||(board[index] == nil))
    else
    true
  end
     def valid_move?(board,index)
       return true if position_taken?(board,index)== false && index.between?(0,8)
      else
      false
     end
 