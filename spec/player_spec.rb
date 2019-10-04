require 'player'

describe Player do
  subject(:player) { described_class.new(name: "Dave") }
  it "knows its name" do
    expect(subject.name).to eq("Dave")
  end

  describe '#reduce_hp' do
    it 'lowers the hp attribute by random amount' do
      subject.reduce_hp
      expect(subject.hp).to be < 60
    end
  end

  describe '#check?' do
    it 'checks if the player is out of hp' do
      60.times do
        subject.reduce_hp
      end
      expect(subject.check?).to eq true
    end
  end

  describe '#lose' do
    it 'puts a message if the player loses' do
      60.times do
        subject.reduce_hp
      end
      expect(subject.check?).to eq true
    end
  end
end
