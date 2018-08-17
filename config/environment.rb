require 'bundler/setup'
Bundler.require
require_all 'app'
require 'pry'


danny = Artist.new("Danny", 20)
andy = Artist.new("Andy", 60)
kaws = Artist.new("KAWS", 25)

porkpie = Gallery.new("Porkpie", "Los Angeles")
cotton_candy = Gallery.new("Cotton Candy", "Brooklyn")
jeffs_house = Gallery.new("Jeff's House", "Brooklyn")

moose = Painting.new("Moose", "Futurist", danny, porkpie)
cannibal_candy = Painting.new("Cannibal Candy", "Futurist", danny, porkpie)
cocaine_moods = Painting.new("Cocaine Moods", "Realist", andy, cotton_candy)
my_face = Painting.new("My Face is Your Face", "Pop Art", kaws, jeffs_house)

binding.pry
