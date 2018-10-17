require 'game'

describe Game do
  let(:player_2) { double :player_2 }

  it "should damage the player" do
    expect(player_2).to receive(:decrease_hp)
    subject.attack(player_2)
  end
end
