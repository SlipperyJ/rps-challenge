require 'game'

describe Game do
subject(:game) {described_class.new(player_move)}
let(:player_move) {"Rock"}

  context "#move_list" do
    it "Has a list of moves" do
      expect(game.move_list).to eq ["Rock", "Paper", "Scissors"]
    end
  end

  context "#current_move" do
    it "Can receive a move" do
      expect(game.current_move).to eq player_move
    end
  end

  context "#computer_turn" do
    it "Selects a random move when a game is played" do
      expect(game.move_list).to include(game.computer_turn)
    end
  end

  context "#results" do
    let(:computers_move) {"Scissors"}

    it "Determines a winner" do
      allow(game).to receive(:computer_turn).and_return(computers_move)
      game.computer_turn
      expect(game.results).to eq "Win"
    end
  end
end
