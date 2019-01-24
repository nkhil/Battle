require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base
  
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    $player2 = Player.new(params[:player2])
    # session[:count] = 0
    # session[:player1] = params[:player1]
    # session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1.name
    @player2 = $player2.name
    @player2_hitpoints = $player2.hitpoints
    Game.new.attack(@player2)
    erb :play
  end
  
  post '/attack' do
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end