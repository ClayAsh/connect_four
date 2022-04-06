require './lib/board'
require './lib/player'
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
    col_1 =  @board.board[:A]
    col_2 =  @board.board[:B]
    col_3 =  @board.board[:C]
    col_4 =  @board.board[:D]
    col_5 =  @board.board[:E]
    col_6 =  @board.board[:F]
    col_7 =  @board.board[:G]

    # require 'pry';binding.pry
      if col_1.join.include?("XXXX")
        return "Player 1 Wins!"

      elsif col_1.join.include?("OOOO")
        return "Aww, the Computer Wins!"

      end

      if col_2.join.include?("XXXX")
        return "Player 1 Wins!"

      elsif col_2.join.include?("OOOO")
        return "Aww, the Computer Wins!"

      end

      if col_3.join.include?("XXXX")
        return "Player 1 Wins!"

      elsif col_3.join.include?("OOOO")
        return "Aww, the Computer Wins!"

      end

      if col_4.join.include?("XXXX")
        return "Player 1 Wins!"

      elsif col_4.join.include?("OOOO")
        return "Aww, the Computer Wins!"

      end

      if col_5.join.include?("X X X X")
        return "Player 1 Wins!"

      elsif col_5.join.include?("OOOO")
        return "Aww, the Computer Wins!"

      end

      if col_6.join.include?("X X X X")
        return "Player 1 Wins!"

      elsif col_6.join.include?("OOOO")
        return "Aww, the Computer Wins!"

      end

      if col_7.join.include?("X X X X")
        return "Player 1 Wins!"

      elsif col_7.join.include?("OOOO")
        return "Aww, the Computer Wins!"
    end
  end
  def horizontal_winner
    row_1 = @board.board[:A][0], @board.board[:B][0], @board.board[:C][0], @board.board[:D][0], @board.board[:E][0], @board.board[:F][0], @board.board[:G][0]
    row_2 = @board.board[:A][1], @board.board[:B][1], @board.board[:C][1], @board.board[:D][1], @board.board[:E][1], @board.board[:F][1], @board.board[:G][1]
    row_3 = @board.board[:A][2], @board.board[:B][2], @board.board[:C][2], @board.board[:D][2], @board.board[:E][2], @board.board[:F][2], @board.board[:G][2]
    row_4 = @board.board[:A][3], @board.board[:B][3], @board.board[:C][3], @board.board[:D][3], @board.board[:E][3], @board.board[:F][3], @board.board[:G][3]
    row_5 = @board.board[:A][4], @board.board[:B][4], @board.board[:C][4], @board.board[:D][4], @board.board[:E][4], @board.board[:F][4], @board.board[:G][4]
    row_6 = @board.board[:A][5], @board.board[:B][5], @board.board[:C][5], @board.board[:D][5], @board.board[:E][5], @board.board[:F][5], @board.board[:G][5]

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
  end
  def diagonal_winner
    diag_1 = @board.board[:A][0], @board.board[:B][1], @board.board[:C][2], @board.board[:D][3], @board.board[:E][4], @board.board[:F][5]
    diag_2 = @board.board[:B][0], @board.board[:C][1], @board.board[:D][2], @board.board[:E][3], @board.board[:F][4], @board.board[:G][5]
    diag_3 = @board.board[:C][0], @board.board[:D][1], @board.board[:E][2], @board.board[:F][3], @board.board[:G][4]
    diag_4 = @board.board[:D][0], @board.board[:E][1], @board.board[:F][2], @board.board[:G][3]
    diag_5 = @board.board[:D][0], @board.board[:C][1], @board.board[:B][2], @board.board[:A][3]
    diag_6 = @board.board[:E][0], @board.board[:D][1], @board.board[:C][2], @board.board[:B][3], @board.board[:A][4]
    diag_7 = @board.board[:F][0], @board.board[:E][1], @board.board[:D][2], @board.board[:C][3], @board.board[:B][4], @board.board[:A][4]
    diag_8 = @board.board[]
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
game = Game.new
require 'pry'; binding.pry
