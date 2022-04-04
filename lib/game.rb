
class Game
  attr_reader :turn
  def initialize
    # @winning_combos = :A[0]#ect
  end


  def play_game
  board = Board.new
  board.welcome_message

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
end

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
