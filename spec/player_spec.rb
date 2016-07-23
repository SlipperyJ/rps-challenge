require 'player'

describe Player do
  subject(:player) {described_class.new("Ross")}

  it "has a name" do
    expect(player.name).to eq "Ross"
  end

  #context "#Move" do
  #  it "has a rock move" do
  #    player.move("rock")
  #  end
  #end
end
