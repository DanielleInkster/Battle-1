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
    session[:name2hp] = 60
    redirect '/play'
  end

  get '/play' do
    @lastaction = session[:lastaction]
    @name1 = $player1.name
    @name2 = $player2.name
    @name2hp = session[:name2hp]
    erb :play
  end

  get '/attack' do
    session[:lastaction] = :p1attack
    redirect '/play'
  end


  run! if app_file == $0
end
