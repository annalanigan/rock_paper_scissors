require 'sinatra'
require 'sinatra/reloader'
require_relative 'models/game'

get '/' do
  "Home Screen"
  erb (:welcome)
end

get '/welcome' do
  erb (:welcome)
end

get '/game' do
 erb (:game)
end

get '/game/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  game1 = Game.new(hand1, hand2)
  @result = game1.play
  erb (:result)
end
