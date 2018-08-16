require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

artist1 = Artist.new("van gogh", 10)
artist2 = Artist.new("da vinci", 8)



gallery1 = Gallery.new("Moma", "NYC")
gallery2 = Gallery.new("louvre", "Paris")

# painting
painting1 = Painting.new("starry_night", "impressionism", artist1, gallery1)
painting2 = Painting.new("mona_lisa", "portrait", artist2, gallery2)
# painting3 = Painting.paint_style
# artist1 and artist2 are object that take in the new artist arguments and must be
#replaced in painting such that it returns artists associated with the painting
artist_paint = artist1.paintings #instance variable call variable.instance_method
artist_gall = artist1.gallaries #variable eq artist class variable dot method in that class
list_city = artist1.cities
avg_age = artist1.artists

gal_list = gallery1.cities
gal_paint = gallery2.paintings # accoutn for the helper method by calling for it first in gallery calss
gal_art_nm = gallery2.artists
gal_avg = gallery1.gal_artist

binding.pry

0
