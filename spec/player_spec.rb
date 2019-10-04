require 'player'

describe Player do
  subject(:player) { described_class.new(name: "Dave") }
  it "knows its name" do
    expect(subject.name).to eq("Dave")
  end

  describe '#reduce_hp' do
    it 'lowers the hp attribute by 10' do
      subject.reduce_hp
      expect(subject.hp).to eq 50
    end
  end

  describe '#check?' do
    it 'checks if the player is out of hp' do
      6.times do
        subject.reduce_hp
      end
      expect(subject.check?).to eq true
    end
  end

  describe '#lose' do
    it 'puts a message if the player loses' do
      6.times do
        subject.reduce_hp
      end
      expect(subject.check?).to eq true
    end
  end
end
