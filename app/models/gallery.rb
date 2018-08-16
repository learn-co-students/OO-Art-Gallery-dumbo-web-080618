require 'pry'

class Gallery

  @@all = []

  attr_reader :name, :city
  attr_accessor :years_active

def initialize(name, city)
  @name = name
  @city = city
  @@all << self
end

def self.all
  @@all
end

def self.cities
  the_cities = Painting.all.map do |data|
    data.gallery.city
  end
  the_cities.uniq
end

def gallery_data
  Painting.all.select do |data|
    data.gallery == self
  end
end

def artists_in_gallery
  gallery_data.map do |data|
    data.artist
  end
end

def names_at_gallery
  artists_in_gallery.map do |data|
    data.name
  end
end

def avg_at_gallery
  nums = artists_in_gallery.map do |data|
    data.years_active
  end
  nums.inject {|sum, n| sum + n} / nums.length
end


end
