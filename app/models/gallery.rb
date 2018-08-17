class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  #Get a list of all galleries
  def self.all
    @@all
  end

  #Get a list of all cities that have a gallery. A city should not appear more than once in the list.
  def self.list_cities
    self.all.map { |c| c.city }.uniq
  end

  #Get a list of artists that have paintings at a specific gallery
  def my_painting
    Painting.all.select {|p| p.gallery == self}
  end

  #Get a list of the names of artists that have paintings at a specific gallery
  def list_artists
    self.my_painting.map { |a| a.artist.name }.uniq
  end

  #Get the combined years of experience of all artists at a specific gallery
  def artist_years
    self.my_painting.map { |a| a.artist.years_active }.reduce(:+)
  end

end
