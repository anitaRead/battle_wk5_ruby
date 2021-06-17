require "sinatra/base"
require "sinatra/reloader" 

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    # 'Testing infrastructure working!'
    erb :index
  end

  post '/start-game' do
    @player1 = params[:player1]
    @player2 = params[:player2]
    erb :start
  end

  run! if app_file == $0

end



