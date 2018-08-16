require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

monet = Artist.new("Monet", 8)
money = Artist.new("Money", 5)
mj = Artist.new("Michael Jackson", 3)
ff = Artist.new("Ff", 2)
joy = Artist.new("Joy", 10)
koy = Artist.new("Koy", 1)
ebens_gallery = Gallery.new("Eben's gallery", "Los Angeles")
ebens_gallery1 = Gallery.new("Eben's gallery1", "Los Angeles")
ebens_gallery2 = Gallery.new("Eben's gallery2", "New York")
joys_gallery = Gallery.new("Joy's gallery", "Los Angeles")
joys_gallery1 = Gallery.new("Joy's gallery1", "Los Angeles")
joys_gallery2 = Gallery.new("Joy's gallery2", "New York")
painting1 = Painting.new("Cool painting", "abstract", joy ,joys_gallery)
painting2 = Painting.new("Cooler painting", "abstract", monet, joys_gallery)
painting3 = Painting.new("Cool paintingasdf", "abstracter", money, joys_gallery1)
painting4 = Painting.new("Cooler painting", "abstracter", koy , joys_gallery2)
painting1 = Painting.new("Cool painting", "impression",ff, ebens_gallery)
painting2 = Painting.new("Cooler painting", "cubism", mj, ebens_gallery1)
painting3 = Painting.new("Cool paintingasdf", "impression", ff, ebens_gallery2)
painting4 = Painting.new("Cooler painting", "cubism", mj, joys_gallery2)
binding.pry
