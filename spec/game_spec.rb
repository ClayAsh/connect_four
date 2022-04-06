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

    expect(game.horizontal_winner).to eq(player.human_player)
  end

  xit "can declare a #diagonal_winner" do
    game = Game.new
    board = Board.new
    player = Player.new

    player.human_player("D")
    player.human_player("C")
    player.human_player("C")
    player.human_player("B")
    player.human_player("B")
    player.human_player("B")
    player.human_player("A")
    player.human_player("A")
    player.human_player("A")
    player.human_player("A")

    expect(player.board.board).to eq({
      :A=>[".", ".", "X", "X", "X", "X"],
      :B=>[".", ".", ".", "X", "X", "X"],
      :C=>[".", ".", ".", ".", "X", "X"],
      :D=>[".", ".", ".", ".", ".", "X"],
      :E=>[".", ".", ".", ".", ".", "."],
      :F=>[".", ".", ".", ".", ".", "."],
      :G=>[".", ".", ".", ".", ".", "."]
      })

    expect(game.diagonal_winner).to eq(player.human_player)
  end
end
