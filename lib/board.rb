
class Board
  attr_reader :board
  def initialize
    @board = [
      ["A","B","C","D","E","F","G"], #0
      [".",".",".",".",".",".","."], #1 Top row
      [".",".",".",".",".",".","."], #2
      [".",".",".",".",".",".","."],  #3
      [".",".",".",".",".",".","."], #4
      [".",".",".",".",".",".","."], #5
      [".",".",".",".",".",".","."]  #6 Bottom row
    ]

  end

  def welcome_message
    puts "Welcome to Connect Four!"
  end

  def generate_board
  board.each do |row|
    row.each do|colomn|
       colomn.to_s + " "
      end
      puts row.join("")
    end
  end
end

board =  Board.new
board.welcome_message
board.generate_board
