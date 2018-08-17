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
    all.map {|gallery| gallery.city}.uniq
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    paintings.map {|painting| painting.artist}.uniq
  end

  def artist_names
    artists.map {|artist| artist.name}
  end

  def years_experience
    total_years_experience = 0
    artists.each {|artist| total_years_experience += artist.years_active}
    return total_years_experience
  end

end
