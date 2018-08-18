
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

  def paintings
    Painting.all.select{|painting| painting.artist == self}
  end

  def galleries
    paintings.map{|painting| painting.gallery}.uniq
  end

  def cities
    galleries.map{|gallery| gallery.city}
  end

  def self.average_years_active
    ages = @@all.map{|artist| artist.years_active}
    (ages.reduce(:+)).to_f/ages.length
  end








end
