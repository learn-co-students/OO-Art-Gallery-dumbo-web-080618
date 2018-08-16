class Gallery

  attr_reader :name, :city
  @@all = []
def initialize(name, city)
  @name = name
  @city = city
  @@all << self
end

# - Get a list of all galleries
def self.all 
  @@all
end

#   - Get a list of all cities that have a gallery. A city should not appear more than once in the list.
def self.all_cities
  @@all.map{|gallery| gallery.city}.uniq
end

#   - Get a list of artists that have paintings at a specific gallery
def all_artists
  match = Painting.all.select{|painting| painting.gallery == self}
  match.map{|painting| painting.artist}
end
#   - Get a list of the names of artists that have paintings at a specific gallery
def featured_artists
  self.all_artists.map{|artist_obj| artist_obj.name}
end
#   - Get the combined years of experience of all artists at a specific gallery
def artists_years_experienced
  years = self.all_artists.inject(0){|sum, artist| sum + artist.years_active}
end

end
