require 'player'

describe Player do

  subject(:adam) { described_class.new('Adam') }
  subject(:steve) { described_class.new('Steve') }


  it "should return the player name" do
    expect(adam.name).to eq "Adam"
  end

  it "should display HP" do
    expect(adam.hp).to eq 50
  end

  it "should decrease HP by 10" do
    steve.decrease_hp
    expect(steve.hp).to eq 40
  end

  it "should be alive at start of game" do
    expect(adam.dead?).to eq false
  end

  it "should be dead if HP is 0" do
    5.times do
      steve.decrease_hp
    end
    expect(steve.dead?).to eq true
  end

end
