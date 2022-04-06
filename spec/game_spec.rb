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
    game.column_winner
    expect(player.board)
  end

  it "can declare a diagonal winner" do
    game = Game.new
    expect(player.board)
  end
end
