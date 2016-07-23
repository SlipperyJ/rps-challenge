require 'game'

describe Game do
subject(:game) {described_class.new}
  context "Moves" do
    it "Has a list of moves" do
      expect(game.move_list).to eq ["Rock", "Paper", "Scissors"]
    end
  end
end
