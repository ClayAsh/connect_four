require 'rspec'
require './lib/board'
require './lib/player'
require './lib/game'

RSpec.describe Game do
  it "exists" do
    game = Game.new
    expect(game).to be_an_instance_of(Game)
  end

  it "can declare a column winner" do
    game = Game.new
    board = Board.new
    player = Player.new

    player.human_player("A")
    player.human_player("A")
    player.human_player("A")
    player.human_player("A")
    game.column_winner

    expect(game.column_winner).to eq(human_player)
  end

  it "can declare a horizontal_winner" do
    game = Game.new
    board = Board.new
    player = Player.new

    expect(player.board)
  end

  it "can declare a diagonal winner" do
    game = Game.new
    board = Board.new
    player = Player.new


    expect(player.board)
  end
end
