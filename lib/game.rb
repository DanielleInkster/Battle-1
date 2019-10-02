require 'player'

class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end
  
  def attack_player2
    @player2.reduce_hp
  end
end