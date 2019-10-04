class Player
  attr_reader :name, :hp, :random

  def initialize(name:)
    @name = name
    @hp = 60
  end

  def reduce_hp
    @hp -= random
  end

  def random
    [1,2,5,10].sample
  end

  def check?
    @hp <= 0
  end
end
