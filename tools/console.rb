

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
hugo = Artist.new("Hugo", 15)
lesli = Artist.new("Lesli", 30)
juan = Artist.new("Juan", 21)
david = Artist.new("david", 8)
gallery1 = Gallery.new("Moma", "Elizabeth")
gallery2 = Gallery.new("Whitny", "Brooklyn")
gallery3 = Gallery.new("Natural", "Newark")
gallery4 = Gallery.new("Pablo Escaobar", "Medellin")
gallery5 = Gallery.new("WorldStar", "Walmart")
painting1 = Painting.new("The end", "abstract", hugo, gallery1)
painting2 = Painting.new("The world", "abstract", lesli, gallery1)
painting3 = Painting.new("StarWars", "abstract", david, gallery3)
painting4 = Painting.new("Babylon", "finger paint", juan, gallery4)
painting5 = Painting.new("The sky", "cubis", hugo, gallery5)
#hugo.all
#
gallery1.combined_years
#  binding.pry
# #
#  0
