require_relative 'player'

class Game
  attr_reader :player1, :player2, :current_player

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @opponent = @player2
    @current_player = @player1
  end
  
  def attack
    @opponent.reduce_hp
    switch
  end

  def message
    if lose? == true
      "#{@current_player.name} loses!"
    else
      "Attacked #{@current_player.name}'s monster for 10 damage!"
    end
    end


  private
  def switch
    if @opponent == @player2
      @opponent = @player1
      @current_player = @player2
    else 
      @opponent = @player2
      @current_player = @player1
    end
  end

  def lose?
    @current_player.check? == true
  end
end