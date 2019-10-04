class Player
  attr_reader :name, :hp

  def initialize(name:)
    @name = name
    @hp = 60
  end

  def reduce_hp
    @hp -= 10
  end

  def check?
    @hp == 0
  end
end
