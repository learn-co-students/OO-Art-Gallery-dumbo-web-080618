require_relative '../config/environment.rb'
require 'pry'

def reload
  load 'config/environment.rb'
end

gina = Artist.new("Gina", 5)
chloe = Artist.new("Chloe", 11)
mickey = Artist.new("Mickey", 8)

# apple = Painting.new("Apple", "abstract")
# banana = Painting.new("Banana",  "finger painting")
# kiwi = Painting.new("Kiwi", "impressionist")
# dog = Painting.new("Dog", "finger painting")
# cat = Painting.new("Cat", "impressionist")
# fish = Painting.new("Fish", "finger painting")
# bird = Painting.new("Bird", "abstract")

moma = Gallery.new("MoMa", "New York City")
sam = Gallery.new("SAM", "Seattle")
agora = Gallery.new("Agora", "New York City")
esmoa = Gallery.new("Esmoa", "California")

gina.new_painting("Apple", "abstract", sam)
mickey.new_painting("Banana", "finger painting", moma)
gina.new_painting("Kiwi", "impressionist", esmoa)
gina.new_painting("Dog", "finger painting", moma)
chloe.new_painting("Cat", "impressionist", sam)
mickey.new_painting("Fish", "finger painting", agora)
chloe.new_painting("Bird", "abstract", esmoa)



binding.pry
0
