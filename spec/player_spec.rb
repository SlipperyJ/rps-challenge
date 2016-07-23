require 'player'

describe Player do
  subject(:player) {described_class.new("Ross")}

  it "has a name" do
    expect(player.name).to eq "Ross"
  end
end
