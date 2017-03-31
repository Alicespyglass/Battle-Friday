require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    $game = Game.new( Player.new(params["Player 1"]), Player.new(params["Player 2"]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    # game.change_turns(attacker)
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.opponent
    @game.current_turn
    @game.attack(@game.opponent)
    erb :attack
  end

  post '/switch_turns' do
    $game.switch_turns
    redirect '/play'
  end

  run! if app_file == $0
end
