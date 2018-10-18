class Game

  attr_reader :player_1, :player_2, :current_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = @player_1
  end

  def attack(player)
    player.decrease_hp
  end

  def current_player
    @current_turn
  end

  def opposing_player
    if @current_turn == @player_1
      @player_2
    elsif @current_turn == @player_2
      @player_1
    end
  end

  def switch_turns
    if @current_turn == @player_1
      @current_turn = @player_2
    elsif @current_turn == @player_2
      @current_turn = @player_1
    end
  end

end
