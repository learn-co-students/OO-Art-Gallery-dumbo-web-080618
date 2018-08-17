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
    self.paintings.map {|painting| painting.artist}
  end

  def artist_names
    self.artists.map {|artist| artist.name}
  end

  def years_active_sum
    sum = 0
    self.artists.each {|artist| sum += artist.years_active}
    sum
  end

end
