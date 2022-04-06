require 'rspec'
require './lib/board'
require './lib/player'
require './lib/game'

RSpec.describe Game do
  it "exists" do
    game = Game.new
    expect(game).to be_an_instance_of(Game)
  end

  xit "can declare a #column_winner" do
    game = Game.new
    board = Board.new
    player = Player.new

    player.human_player("A")
    player.human_player("A")
    player.human_player("A")
    player.human_player("A")

    expect(player.board.board).to eq({
      :A=>[".", ".", "X", "X", "X", "X"],
      :B=>[".", ".", ".", ".", ".", "."],
      :C=>[".", ".", ".", ".", ".", "."],
      :D=>[".", ".", ".", ".", ".", "."],
      :E=>[".", ".", ".", ".", ".", "."],
      :F=>[".", ".", ".", ".", ".", "."],
      :G=>[".", ".", ".", ".", ".", "."]
      })

    game.column_winner

    expect(game.column_winner).to eq(player.human_player)
  end

  xit "can declare a #horizontal_winner" do
    game = Game.new
    board = Board.new
    player = Player.new

    player.human_player("A")
    player.human_player("B")
    player.human_player("C")
    player.human_player("D")
    game.horizontal_winner

    expect(game.horizontal_winner).to eq(player.human_player)
  end

  xit "can declare a #diagonal_winner" do
    game = Game.new
    board = Board.new
    player = Player.new

    player.human_player("D")
    player.computer_player("C")
    player.human_player("C")
    player.computer_player("B")
    player.human_player("A")
    player.computer_player("B")
    player.human_player("B")
    player.computer_player("A")
    player.human_player("A")
    player.computer_player("E")
    player.human_player("A")
    game.diagonal_winner

    expect(player.board.board).to eq({
      :A=>[".", ".", "X", "X", "O", "X"],
      :B=>[".", ".", ".", "X", "O", "O"],
      :C=>[".", ".", ".", ".", "X", "O"],
      :D=>[".", ".", ".", ".", ".", "X"],
      :E=>[".", ".", ".", ".", ".", "O"],
      :F=>[".", ".", ".", ".", ".", "."],
      :G=>[".", ".", ".", ".", ".", "."]
      })

    expect(game.diagonal_winner).to eq(player.human_player)
  end
end
