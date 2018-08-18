require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


me1 = Artist.new("Jack", 4)
me2 = Artist.new("Jason", 5)

g1 = Gallery.new("TheGreats", "Mexico")
g2 = Gallery.new("GOATS2", "China")
g3 = Gallery.new("TheGreats2", "Mexico")
g4 = Gallery.new("TheGreats1", "Mexico")

p1 = Painting.new("Pic", "Hand", me1, g1)
p2 = Painting.new("Pic1", "Hand", me1, g2)
p3 = Painting.new("Pic2", "Hand1", me1, g1)
p1 = Painting.new("Pic4", "Hand", me2, g2)
p2 = Painting.new("Pic5", "Hand", me2, g1)
p3 = Painting.new("Pic6", "Hand1", me2, g2)



binding.pry
