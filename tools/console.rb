require_relative '../config/environment.rb'

require 'pry'

def reload
  load 'config/environment.rb'
end

# Declare variables here

pablo_picasso = Artist.new("Pablo Picasso", 1)
leonardo_da_vinci = Artist.new("Leonardo da Vinci", 1)
vincent_van_gogh = Artist.new("Vincent van Gogh", 1)

peter_paul_rubens = Artist.new("Peter Paul Rubens", 1)
joan_miro = Artist.new("joan_miro", 17)
paul_klee = Artist.new("Paul Klee", 4)

gallery_1 = Gallery.new("1_Gallery","New York City")
gallery_2 = Gallery.new("2_Gallery","Rochester")
gallery_3 = Gallery.new("3_Gallery","Buffalo")

gallery_4 = Gallery.new("4_Gallery","Albany")
gallery_5 = Gallery.new("5_Gallery","Syracuse")
gallery_6 = Gallery.new("6_Gallery","Niagara Falls")
gallery_7 = Gallery.new("7_Gallery","Niagara Falls")

painting_1= Painting.new("title of painting 1", "style of painting 1", pablo_picasso, gallery_1)
painting_2= Painting.new("title of painting 2", "style of painting 2", leonardo_da_vinci, gallery_2)
painting_3= Painting.new("title of painting 3", "style of painting 3", vincent_van_gogh, gallery_3)
painting_4= Painting.new("title of painting 4", "style of painting 4", peter_paul_rubens, gallery_4)
painting_5= Painting.new("title of painting 5", "style of painting 5", joan_miro, gallery_6)
painting_6= Painting.new("title of painting 6", "style of painting 6", paul_klee, gallery_6)


#ARTIST
# Get a list of all artists
Artist.all

# Get a list of all the paintings by a specific artists
pablo_picasso.artists

# Get a list of all the galleries that a specific artist has paintings in
pablo_picasso.galleries

# Get a list of all cities that contain galleries that a specific artist has paintings in
pablo_picasso.cities

# Find the average years of experience of all artists
Artist.average_years

#PAINTING

# Get a list of all paintings
Painting.list_of_painting

# Get a list of all painting styles (a style should not appear more than once in the list)
Painting.painting_styles

# GALLERY

# Get a list of all galleries
Gallery.list_all_galleries

# Get a list of all cities that have a gallery. A city should not appear more than once in the list.
#Gallery.all
# arr = @@all.map {|a|a.city}
# arr.uniq
Gallery.gallery_city

#Get a list of artists that have paintings at a specific gallery
 gallery_5.artists
#Gallery.specific_gallery

# Get a list of the names of artists that have paintings at a specific gallery
gallery_6.all_artist_names

# Get the combined years of experience of all artists at a specific gallery
gallery_6.artist_years_of_exp

binding.pry
0
