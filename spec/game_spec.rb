require 'game'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }

  it "should present player 1" do
    expect(game.player_1).to eq player_1
  end

  it "should present player 2" do
    expect(game.player_2).to eq player_2
  end

  it "should damage the player" do
    expect(player_2).to receive(:decrease_hp)
    game.attack(player_2)
  end
end
