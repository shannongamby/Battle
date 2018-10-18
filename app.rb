require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    if @game.current_turn == @game.player_1
      @game.attack(@game.player_2)
    elsif @game.current_turn == @game.player_2
      @game.attack(@game.player_1)
    end
    erb :attack
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect '/play'
  end

  run! if app_file == $0

end
