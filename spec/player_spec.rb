require 'player'

describe Player do
  subject(:player) { described_class.new(name: "Dave") }
  it "knows its name" do
    expect(subject.name).to eq("Dave")
  end
end
