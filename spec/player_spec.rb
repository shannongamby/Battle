require 'player'

describe Player do

  subject { described_class.new('Adam') }

  it "should return the player name" do
    expect(subject.name).to eq "Adam"
  end
end
