require 'sinatra/base'
require './lib/player'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name_entry' do
    @player = Player.new(params[:player])
    erb(:index)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
