require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

van_gogh = Artist.new("van gogh", 20)
da_vinci = Artist.new("da vinci",  40)

moma =  Gallery.new("MOMA", "New York City")
louvre = Gallery.new("Louvre","Paris" )

paint_1 = Painting.new("starry_night", "impressionism", van_gogh, moma)
paint_2 = Painting.new("mona_lisa", "portrait", da_vinci, louvre)




Painting.style
da_vinci.paintings
da_vinci.galleries
da_vinci.cities
Artist.average_years
Gallery.cities
moma.paintings
moma.names
moma.yrs
binding.pry
 0
