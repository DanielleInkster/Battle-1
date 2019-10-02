require 'game'

describe Game do

  let (:player) { double :player}

  describe '#attack_player' do
  it 'forwards the attack to the player object' do
    expect(player).to receive(:reduce_hp)
    subject.attack_player(player)
  end
end

end