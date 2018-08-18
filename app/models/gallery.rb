class Gallery

  attr_reader :name, :city
@@all = []

def self.all
  @@all
end


def initialize(name, city)
  @name = name
  @city = city
  @@all << self
end

def self.cities
  self.all.map {|gallery| gallery.city}.uniq
end

def gallery
  paintings = Painting.all.select{|painting| painting.gallery == self}
  paintings.map{|painting| painting.artist}.uniq
end

def artists
  gallery.map{|artist| artist.name}.uniq
end

def artist_ages
    ages = gallery.map{|x| x.years_active}
    (ages.reduce(:+)).to_f/ages.length

end











end
