require 'sinatra/base'
require 'player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(name: params[:name1])
    $player2 = Player.new(name: params[:name2])
    # session[:name2hp] = 60
    redirect '/play'
  end

  get '/play' do
    @lastaction = session[:lastaction]
    erb :play
  end

  get '/attack' do
    session[:lastaction] = :p1attack
    $player2.reduce_hp
    redirect '/play'
  end


  run! if app_file == $0
end
