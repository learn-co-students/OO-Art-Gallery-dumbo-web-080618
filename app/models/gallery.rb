# **GALLERY**
#
#   - Get a list of all galleries
#
#   - Get a list of all cities that have a gallery. A city should not appear more than once in the list.
#
#   - Get a list of artists that have paintings at a specific gallery
#
#   - Get a list of the names of artists that have paintings at a specific gallery
#
#   - Get the combined years of experience of all artists at a specific gallery
#

class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end


  def self.cities
    Gallery.all.map{|gallery| gallery.city}.uniq
  end


  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end


  def artists
    paintings.map {|painting| painting.artist}.uniq
  end


  def artist_names
    artists.map {|artist| artist.name}.uniq
  end


  def artist_year_experience
    sum = 0
    artists.each {|artist| sum += artist.years_active}
    sum/artists.length
  end




end
