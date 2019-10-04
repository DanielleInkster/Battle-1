require 'sinatra/base'
require './lib/game'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(name: params[:name1])
    player2 = Player.new(name: params[:name2])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @lastaction = session[:lastaction]
    erb :play
  end

  get '/attack' do
    session[:lastaction] = :attack
    @game = Game.instance
    @game.attack
    redirect '/play'
  end


  run! if app_file == $0
end
