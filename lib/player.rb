class Player
  attr_reader :board
  def initialize
    @board = Board.new
  end
  # if column is full OR
  # if user input !="A" || "B" puts "Not a valid selection"
  # def invalid_selection
  # end

  #puts "Please select a column A-G"
  #gets.upcase
  #if gets == "A", place piece in A:[0] == X or O, A[:1]
  #board.generate_board
  def human_player(choice)
    row = @board.board[choice.to_sym]
    if !row.include?(".")
      puts "Row Full, Please try again"
      return @board
    end
    if row.last != "."
      require "pry";binding.pry
      row.reverse.each_with_index do |elm, index|
        if elm != "."
          elm
        else
          count = (row.count) - (index + 1)
          row.reverse
          row[count] = "X"
          return @board
        end
      end
    else
      row[5] = "X"
      return @board
    end
  end
end
    # row = @board.board[choice.to_sym]
    # if row.last != "."
    #   puts "Row Full, Please try again"
    #   return @board
    # end
    # if row.last != "."
    #    row.reverse.each_with_index do |elm, index|
    #       if elm == "."
    #       end
    #     end
    #   end
    # else
    #   row[5] = "X" # refactor
    #   return @board
    # end





  #sample.key, place piece in A[:0] == X or O
  # def computer_player
  #   #computer = o
  # end

# player = Player.new
# player.human_player


#-------- OLD METHOD --------#

# nu_row = @board.board[choice.to_sym]
# if row.last != "."
#   until row.last == "." do
#     nu_row.pop
#     element = nu_row.count - 1
#     row[element] = "X"

#human = x
# puts "Please select a column A-G"
# input = gets.upcase.chomp
# if input == "A" && @board[:A][6] == "."
#   @board[:A][6] = X
# elsif input == "A" && @board[:A][6] == "X" ||  @board[:A][6] == "O"
#   @board[:A][5] = X
#end
