require 'sinatra/base'

class Battle < Sinatra::Base
  
  enable :sessions


  get '/' do
    erb :index
  end

  post '/names' do
    session[:count] = 0
    session[:player1] = params[:player1]
    session[:player2] = params[:player2]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    @player2_hitpoints = 100 - session[:count]
    @player2_hitpoints -= 2 if params[:attack] == 'Attack'
    params[:attack] = nil
    erb :play
  end
  
  post '/attack' do
    session[:count] += 10
    redirect '/play'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end