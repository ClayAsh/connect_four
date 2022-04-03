require 'pry'
class Player
  attr_reader :board
  def initialize
    @board = Board.new
  end

  def human_player(choice)
    values_to_s = board.board.values.join
    if !values_to_s.include?(".")
       puts "The game is a draw."
    end
    row = @board.board[choice.to_sym]
    if !row.include?(".")
      puts "Row Full, Please try again"
      return @board
    end
    if row.last != "."
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


  def computer_player
    values_to_s = board.board.values.join
    if !values_to_s.include?(".")
       puts "The game is a draw."
    end
    keys = @board.board.keys
    choice = keys.sample
    row = @board.board[choice.to_sym]

    if !row.include?(".")
      row = @board.board[choice.to_sym]
    end

    if row.last != "."
      row.reverse.each_with_index do |elm, index|
        if elm != "."
          elm
        else
          count = (row.count) - (index + 1)
          row.reverse
          row[count] = "O"
          return @board
        end
      end
    else
      row[5] = "O"
      return @board
    end
  end
end
