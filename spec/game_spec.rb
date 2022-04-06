require 'rspec'
require './lib/board'
require './lib/player'
require './lib/game'

RSpec.describe Game do
  it "exists" do
    game = Game.new
    expect(game).to be_an_instance_of(Game)
  end

  it "can declare a #column_winner" do
    game = Game.new
    board = Board.new
    player = Player.new

    player.human_player("A")
    player.human_player("A")
    player.human_player("A")
    player.human_player("A")
    game.column_winner

    expect(game.column_winner).to eq(player.human_player)
  end

  it "can declare a #horizontal_winner" do
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

  it "can declare a #diagonal_winner" do
    game = Game.new
    board = Board.new
    player = Player.new


    expect()
  end
end
