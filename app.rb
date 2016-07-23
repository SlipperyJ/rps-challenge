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
    @game = Game.new
    erb(:game)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
