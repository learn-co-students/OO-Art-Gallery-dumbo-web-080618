require_relative '../config/environment.rb'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'

def reload
  load 'config/environment.rb'
end

gallery1 = Gallery.new("Nat'l Museum of Art","NYC")
gallery2 = Gallery.new("Louvre","France")
artist1 = Artist.new("Alphonse Bougureau", 20)
artist2 = Artist.new("Vincent Van Gogh", 8)
artist3 = Artist.new("Jim Mahfood", 15)
artist4 = Artist.new("Jean-Michael Basquiat", 5)

painting1 = Painting.new("Nymphs", "Realism")
painting5 = Painting.new("Peasant Girl", "Realism")
painting2 = Painting.new("Comix", "Minimalism")
painting3 = Painting.new("Sunflowers", "Impressionism")
painting4 = Painting.new("Boxing Gloves", "Minimalism")
painting1.artist = artist1
painting1.gallery = gallery1
painting2.artist = artist3
painting2.gallery = gallery2
painting3.artist = artist2
painting3.gallery = gallery1
painting4.artist = artist4
painting4.gallery = gallery2
painting5.artist = artist1
painting5.gallery = gallery2

binding.pry
