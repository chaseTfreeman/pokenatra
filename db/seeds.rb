require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'

Pokemon.destroy_all
Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "https://img.pokemondb.net/artwork/charmander.jpg")
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/squirtle.jpg")
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "https://img.pokemondb.net/artwork/pikachu.jpg")
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "https://img.pokemondb.net/artwork/bulbasaur.jpg")
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "https://img.pokemondb.net/artwork/clefairy.jpg")
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "https://img.pokemondb.net/artwork/nidoking.jpg")
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "https://img.pokemondb.net/artwork/gengar.jpg")
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "https://img.pokemondb.net/artwork/blastoise.jpg")

Trainer.create(name: "Duderino", level: 9999, img_url: "https://pbs.twimg.com/profile_images/3285014027/2082141caec0dea88a640fab23eb004f.jpeg")
Trainer.create(name: "Walter", level: 3472, img_url: "http://img.hdwallpaperpc.com/cover/56/Movies_The_Big_Lebowski_Walter_55793_detail_thumb.jpg")
Trainer.create(name: "Jesus", level: 6743, img_url: "https://s-media-cache-ak0.pinimg.com/236x/ff/a4/3d/ffa43d4d50fd886a4ea590b8abc1016f.jpg")
Trainer.create(name: "Donny", level: 6743, img_url: "https://s-media-cache-ak0.pinimg.com/736x/db/7f/a2/db7fa22ec027cdae208be4dd7fb5ca73.jpg")
