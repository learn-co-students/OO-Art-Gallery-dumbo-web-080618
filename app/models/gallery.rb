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
  self.all.map {|gallery| gallery.city}.uniq
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

def total_exp
  num = 0
  artists.each {|artist| num += artist.years_active}
  num
end


end
