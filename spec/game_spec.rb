require 'game'

describe Game do

subject(:game) { described_class.new( volkswagen, polar_bear ) }
let(:volkswagen) { double(:volkswagen) }
let(:polar_bear) { double(:polar_bear) }

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player1).to eq(volkswagen)
    end
  end

  describe '#player2' do
    it 'retrieves the second player' do
      expect(game.player2).to eq(polar_bear)
    end
  end

  describe '#attack' do
    it 'attacks player' do
      expect(polar_bear).to receive(:reduce_hp)
      game.attack(polar_bear)
    end
  end

  describe '#current_turn' do
    it 'player 1 goes first' do
      expect(game.current_turn).to eq volkswagen
    end
  end

  describe '#opponent' do
    it 'returns current opponent' do
      expect(game.opponent).to eq polar_bear
    end
  end

  describe "#switch turns" do
    it 'switches the turn' do
      game.switch_turns
      expect(game.current_turn).to eq polar_bear
    end
  end

end
