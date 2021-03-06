require 'game'

RSpec.describe Game do
  subject(:game) { described_class.new }
  let(:player1) { double :player }
  let(:player2) { double :player }

  it 'accepts 2 variabes on instantiation' do
    expect(game)
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end



end