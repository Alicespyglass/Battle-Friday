require 'player'

describe Player do
  subject(:volkswagen) {described_class.new("volkswagen")}
  subject(:polar_bear) { described_class.new("polar bear") }

  it "returns the name of the player" do
    expect(volkswagen.name).to eq "volkswagen"
  end

  it "has a default hp of #{Player::DEFAULT_HP}" do
    expect(volkswagen.hp).to eq Player::DEFAULT_HP
  end

  describe '#reduce_hp' do
    it "reduces polar bear's #{Player::DEFAULT_DAMAGE}hp" do
      expect{ polar_bear.reduce_hp }.to change {polar_bear.hp}.by -Player::DEFAULT_DAMAGE
    end
  end

  describe '#dead?' do
    it 'returns true if player has 0 hp' do
      allow(polar_bear).to receive(:hp) { 0 }
      expect(polar_bear.dead?).to eq true
    end
  end

end
