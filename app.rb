require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/page' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb :page
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end