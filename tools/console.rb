require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

maddieArtist = Artist.new('MaddieArtist', 5)
jeffreyArtist = Artist.new('JeffreyArtist', 6)
georgeArtist = Artist.new('GeorgeArtist', 2)

galleryOne = Gallery.new('GalleryOne', 'New York')
galleryTwo = Gallery.new('galleryTwo', 'DC')


brightPainting = Painting.new('Bright Painting', 'abstract', maddieArtist, galleryOne)
sunPainting = Painting.new('Sun Painting', 'impressionist', jeffreyArtist, galleryOne)
bluePainting = Painting.new('Blue Painting', 'finger painting', georgeArtist, galleryTwo)




binding.pry
