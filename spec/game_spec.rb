require 'game'

describe Game do
subject(:game) {described_class.new}
  it "Has a list of moves" do
    expect(game.move_list).to eq ["Rock", "Paper", "Scissors"]
  end

  it "receives a move" do
    expect(game).to respond_to(:move).with(1).argument
    game.move("Rock")
    expect(game.current_move).to eq "Rock" 
  end
end
