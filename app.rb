require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name_entry' do
    session[:player] = Player.new(params[:player])
    redirect '/game'
  end

  get '/game' do
    erb(:game)
  end

  post '/move' do
    p session[:game] = Game.new(params[:chosen_move])
    redirect '/game_over'
  end

  get '/game_over' do
    @game   = session[:game]
    @player = session[:player]
    erb(:game_over)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
