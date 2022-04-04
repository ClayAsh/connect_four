class Board
  attr_reader :board, :welcome_message, :generate_board
  def initialize
    @board = {
      A: [".",".",".",".",".","."],
      B: [".",".",".",".",".","."],
      C: [".",".",".",".",".","."],
      D: [".",".",".",".",".","."],
      E: [".",".",".",".",".","."],
      F: [".",".",".",".",".","."],
      G: [".",".",".",".",".","."]
    }
  end
  def welcome_message
    return "Welcome to Connect Four!"
  end
  def generate_board
    print_key = ""
      board.each_key do |key|
        print_key <<  key.to_s
      end
       puts print_key
      6.times do |index|
        board.each_key do |value|
      print board[value][index]
    end
      puts " "
    end
  end
end
  # def empty?
  # end
  # def full?
  # end
  board = Board.new
  board.welcome_message
  board.generate_board
