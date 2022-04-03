require 'pry'
require 'rspec'
require "./lib/board"
require './lib/player'


RSpec.describe Player do
  it "exists" do
    player = Player.new
    expect(player).to be_an_instance_of(Player)
  end

  xit "declares invalid selection" do
    player = Player.new
  end

  describe '#human_player' do

    it "selects colomn" do
      player = Player.new
      expect(player.board.board).to eq({
        :A=>[".", ".", ".", ".", ".", "."],
        :B=>[".", ".", ".", ".", ".", "."],
        :C=>[".", ".", ".", ".", ".", "."],
        :D=>[".", ".", ".", ".", ".", "."],
        :E=>[".", ".", ".", ".", ".", "."],
        :F=>[".", ".", ".", ".", ".", "."],
        :G=>[".", ".", ".", ".", ".", "."]
        })

      player.human_player("A")

      expect(player.board.board.to eq({
        :A=>[".", ".", ".", ".", ".", "X"],
        :B=>[".", ".", ".", ".", ".", "."],
        :C=>[".", ".", ".", ".", ".", "."],
        :D=>[".", ".", ".", ".", ".", "."],
        :E=>[".", ".", ".", ".", ".", "."],
        :F=>[".", ".", ".", ".", ".", "."],
        :G=>[".", ".", ".", ".", ".", "."]
       })
     end

    it "selects colomn with existing selection" do
      player = Player.new
      player.human_player("A")

      expect(player.board.board).to eq({
        :A=>[".", ".", ".", ".", ".", "X"],
        :B=>[".", ".", ".", ".", ".", "."],
        :C=>[".", ".", ".", ".", ".", "."],
        :D=>[".", ".", ".", ".", ".", "."],
        :E=>[".", ".", ".", ".", ".", "."],
        :F=>[".", ".", ".", ".", ".", "."],
        :G=>[".", ".", ".", ".", ".", "."]
        })
      player.human_player("A")

      expect(player.board.board).to eq({
        :A=>[".", ".", ".", ".", "X", "X"],
        :B=>[".", ".", ".", ".", ".", "."],
        :C=>[".", ".", ".", ".", ".", "."],
        :D=>[".", ".", ".", ".", ".", "."],
        :E=>[".", ".", ".", ".", ".", "."],
        :F=>[".", ".", ".", ".", ".", "."],
        :G=>[".", ".", ".", ".", ".", "."]
       })

      expect(player.human_player("A")).to eq(player.board)
    end
  end
end
  # board.generate_board
  # expect(board[:A][6]).to eq(".")
  # player.human_player
  # # input = "A"
  # expect(board[:A][6]).to eq("X")
  #expect(player).to piece(key)
