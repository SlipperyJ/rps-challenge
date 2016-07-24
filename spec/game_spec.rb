require 'game'

describe Game do
subject(:game) {described_class.new(player_move)}
let(:player_move) {"Rock"}
let(:computers_move) {"Scissors"}

  context "#current_move" do
    it "Can receive a move" do
      expect(game.current_move).to eq player_move
    end
  end

  context "#results" do
    let(:computers_move) {"Scissors"}
    subject(:game) {described_class.new(player_move, computers_move)}
    it "Determines a winner" do
      expect(game.results).to eq "Win"
    end
  end
end
