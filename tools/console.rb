require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

aziz = Artist.new("Aziz", 6)
rustam = Artist.new("Rustam", 4)
maruf = Artist.new("Maruf", 8)
navoiy = Artist.new("Navoiy", 20)
beruniy = Artist.new("Beruniy", 14)

gal1 = Gallery.new("Metropolitan", "NYC")
gal2 = Gallery.new("GalleryOfSF", "SF")
gal3 = Gallery.new("GallerySanDiego", "SD")
gal4 = Gallery.new("GalleryPensil", "PAC")

paint1 = Painting.new("title1", "finger painting", "Aziz", "Metropolitan")
paint2 = Painting.new("title45", "digital", "Aziz", "GalleryOfSF")
paint3 = Painting.new("title3", "Portret", "Aziz", "GalleryPensil")
paint9 = Painting.new("jshgdfjshgfj", "finger", "Aziz", "Metropolitan")
paint10 = Painting.new("KKKKK", "painting", "Aziz", "Metropolitan")

paint4 = Painting.new("people", "Nature", "Maruf", "GallerySanDiego")
paint5 = Painting.new("XXX", "Grafic", "Navoiy", "Metropolitan")
paint6 = Painting.new("YYYY", "LLLL", "Navoiy", "GalleryOfSF")
paint7 = Painting.new("blabla", "abstract", "Beruniy", "GallerySanDiego")
paint8 = Painting.new("ZZZZZZ", "Grafic", "Maruf", "GalleryPensil")
# @title = title
# @style = style
# @artist_name = artist_name
# @gallery_name = gallery_name

binding.pry
