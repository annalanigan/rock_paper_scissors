require 'sinatra'
require 'sinatra/reloader'
require_relative 'models/game'

get '/' do
  'Home'
end

get '/:hand1/:hand2' do
  hand1 = params[:hand1]
  hand2 = params[:hand2]
  game1 = Game.new(hand1, hand2)
  @result = game1.play
  erb (:result)
end
