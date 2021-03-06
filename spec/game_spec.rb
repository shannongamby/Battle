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
    allow(player_2).to receive(:dead?).and_return(false)
    game.attack(player_2)
  end

  it "is player 1's turn at the beginning" do
    expect(game.current_turn).to eq player_1
  end

  it "ends the game when one player has 0HP" do
    allow(player_2).to receive(:decrease_hp)
    allow(player_2).to receive(:dead?).and_return(true)
    5.times do
      game.attack(player_2)
    end
    expect(game.finished?).to eq true
  end
end
