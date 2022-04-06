# require './lib/board'
# require './lib/player'
class Game
  attr_reader :turn, :board, :player
  def initialize
    @board = Board.new
    @player = Player.new
    # @winning_combos = :A[0]#ect
  end

  def play_game
  board = Board.new
  board.welcome_message
  # require 'pry'; binding.pry

  puts "Enter p to play. Enter q to quit."
  user_input = gets.chomp
  until %w[p q].include?(user_input)
    puts "That's not a valid selection, please try again!"
    user_input = gets.chomp
  end
      if user_input == "p"
        board.generate_board
        turn
      else user_input == "q"
        puts "Goodbye!"
      end
    end


  def turn
    player = Player.new
    10.times do # until win
    puts "Please choose a column, A-G and press return!"
    choice = gets.chomp.upcase
    until %w[A B C D E F G].include?(choice)
      puts "That's not a valid column, please try again!"
      choice = gets.chomp.upcase
    end
      if %w[A B C D E F G].include?(choice)
        player.human_player(choice)
        player.board.generate_board
        #check for win
        player.computer_player
        player.board.generate_board
        #check for win
      end
    end
  end
  def column_winner
    row_1 =  @board.board[:A]
    row_2 =  @board.board[:B]
    row_3 =  @board.board[:C]
    row_4 =  @board.board[:D]
    row_5 =  @board.board[:E]
    row_6 =  @board.board[:F]
    row_7 =  @board.board[:G]

    # require 'pry';binding.pry
      if row_1.join.include?("XXXX")
        return "Player 1 Wins!"

      elsif row_1.join.include?("OOOO")
        return "Aww, the Computer Wins!"

      end

      if row_2.join.include?("XXXX")
        return "Player 1 Wins!"

      elsif row_2.join.include?("OOOO")
        return "Aww, the Computer Wins!"

      end

      if row_3.join.include?("XXXX")
        return "Player 1 Wins!"

      elsif row_3.join.include?("OOOO")
        return "Aww, the Computer Wins!"

      end

      if row_4.join.include?("XXXX")
        return "Player 1 Wins!"

      elsif row_4.join.include?("OOOO")
        return "Aww, the Computer Wins!"

      end

      if row_5.join.include?("X X X X")
        return "Player 1 Wins!"

      elsif row_5.join.include?("OOOO")
        return "Aww, the Computer Wins!"

      end

      if row_6.join.include?("X X X X")
        return "Player 1 Wins!"

      elsif row_6.join.include?("OOOO")
        return "Aww, the Computer Wins!"

      end

      if row_7.join.include?("X X X X")
        return "Player 1 Wins!"

      elsif row_7.join.include?("OOOO")
        return "Aww, the Computer Wins!"
    end
  end
  def horizontal_winner
    @board.keys
  end
end

#  require 'pry'; binding.pry

  # def win
  #   #vertical win
  #   board.board[:A] include?(X X X X)
  #   #horizontal win
  #   board.board A6, B6, D6, C6 == X X X X
  #   #diagnal win
  #   #check for in @winning_combos
  #   #puts winner
  # end
# end
# game = Game.new
# require 'pry'; binding.pry
