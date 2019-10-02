require 'player'

class Game

  def attack_player(player)
    player.reduce_hp
  end
end