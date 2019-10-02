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
end
