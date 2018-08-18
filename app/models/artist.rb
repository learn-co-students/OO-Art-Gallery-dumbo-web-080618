require 'pry'

class Artist

  attr_reader :name, :years_active
  @@all = []
  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
    #binding.pry
  end

  def artists
    #binding.pry
    Painting.all.select { |a_painting_object|
    a_painting_object.artist == self}
    #binding.pry
  end

  def galleries
    artists.map {|el| el.gallery}
    #binding.pry
  end

  def cities
    artists.map {|el| el.gallery.city}
    #binding.pry
  end

  def self.average_years
    all_years_active = @@all.map{|element| element.years_active}
    total_years_active = (all_years_active.inject{ |sum, el| sum + el })/all_years_active.length
    total_years_active
    #binding.pry
  end

  def list_all_names_of_artist
    @@all.map {|a| a.name}
    #binding.pry
  end
end
