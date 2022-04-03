require "pry"
require "rspec"
require "./lib/board"

RSpec.describe Board do
  it "exists" do
  board = Board.new

  expect(board).to be_an_instance_of(Board)
  end

  it "welcomes the player " do
    board = Board.new
  expect(board.welcome_message).to eq("Welcome to Connect Four!")

  end

  it "generates the game board" do
    board = Board.new
    expect(board.generate_board).to eq(6)

  end
end


#---ALT----#
# OLD WELCOME METHOD ATTEMPTS
# welcome = message('welcome')
# board.welcome.message
# expect(welcome).to have_received(:message).with("welcome")
# board.welcome_message
