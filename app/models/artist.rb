# **ARTIST**
#
#   - Get a list of all artists
#
#   - Get a list of all the paintings by a specific artists
#
#   - Get a list of all the galleries that a specific artist has paintings in
#
#   - Get a list of all cities that contain galleries that a specific artist has paintings in
#
#   - Find the average years of experience of all artists

class Artist

  attr_reader :name, :years_active
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  #broke
  def paintings
    # binding.pry
    Painting.all.select {|painting| painting.artist == self}
  end

  #broke
  def galleries
    paintings.each.map {|painting| painting.gallery }.uniq
  end

  #broke
  def cities
    galleries.each.map {|gallery| gallery.city}.uniq
  end


  def self.average_years_of_experience
    sum = 0
    self.all.each {|artist| sum += artist.years_active}
    sum/@@all.length
  end


end
