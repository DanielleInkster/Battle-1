require 'player'

class Game
  attr_reader :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @opponent = @player2
  end
  
  def attack
    @opponent.reduce_hp
    switch
  end

  private
  def switch
    if @opponent == @player2
      @opponent = @player1
    else 
      @opponent = @player2
    end
  end
end