class Gallery

  attr_reader :name, :city
  attr_accessor :paintings

@@all = []

def initialize(name, city)
  @name = name
  @city = city
  @paintings = []
  @@all << self
end

def self.all
  @@all
end
def self.list_all_cities
  self.all.map { |e| e.city }.uniq
end

def list_all_artists
  self.paintings.map { |e| e.artist }
end

def list_all_artists_names
  self.paintings.map { |e| e.artist.name }
end

def combined_years_experience
  total = 0
  uniq_artist = self.paintings.map { |e| e.artist }.uniq
  uniq_artist.each { |e| total += e.years_active }
  total
end



end
