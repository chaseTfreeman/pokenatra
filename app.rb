require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

# load the fild to connect to the db
require_relative 'db/connection'

# load models
require_relative 'models/pokemon'
require_relative 'models/trainer'

# first step: get the '/' page up on Sinatra
get '/' do
  redirect '/pokemons'
end

# 2nd step: redirect '/' to '/pokemons' which lists Pokemon.all using the view from ERB :pokemons/index
get '/pokemons' do
@pokemons = Pokemon.all
  erb :"pokemons/index"
end
# 3rd step: direct the client to creat a new Pokemon at the view from ERB :pokemons/new
get '/pokemons/new' do
  erb :"pokemons/new"
end
# 4th step: getting the id of a pokemon and feeding into the url to direct the client to a specific pokemon page
get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end
# 5th step: creates new pokemon based off criteria entered in form on View/erb 'new' & redirects based off pokemon id
post '/pokemons' do
pokemon = Pokemon.create(params[:pokemon])
redirect "pokemons/#{pokemon.id}"
end
# 6th step: Gets info from the EDIT erb/view for the locally defined pokemon id
get '/pokemons/:id/edit' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/edit"
end
# 7th step: is putting/creating a new poke information from the edit. It is updating pokeom parameters and redirecting to a url that corresponds to the poke ID
put '/pokemons/:id' do
  @pokemons = Pokemon.find(params[:id])
  @pokemons.update(params[:pokemon])
  redirect "/pokemons/#{@pokemon.id}"
end
#Step 8: defines the ability to destroy data then redirects to homepage (/pokemons)
delete '/pokemons/:id' do
  pokemon = Pokemon.find(params[:id])
  pokemon.destroy
  redirect '/pokemons'
end
