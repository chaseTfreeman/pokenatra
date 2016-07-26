require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# load the fild to connect to the db
require_relative 'db/connection'

# load models
require_relative 'models/pokemon'
require_relative 'models/trainer'

get '/' do
  redirect '/pokemons'
end

get '/pokemons' do
@pokemons = Pokemon.all
  erb :"pokemons/index"
end
