require 'game'

describe Game do
  let (:player1) { double :player1 }
  let (:player2) { double :player2 }

  subject(:game) { described_class.new(player1, player2) }

  it 'allows access to players' do
    expect(player1).to receive(:name)
    subject.player1.name
  end

  describe '#attack_player' do
    it 'forwards the attack to the player object' do
      expect(player2).to receive(:reduce_hp)
      subject.attack
    end

    it 'allows players to alternate turns' do
      expect(player1).to receive(:reduce_hp)
      allow(player2).to receive(:reduce_hp)
      subject.attack
      subject.attack
    end
  end

end