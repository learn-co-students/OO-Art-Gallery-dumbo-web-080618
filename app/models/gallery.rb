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
    Painting.all.map {|gal| gal.gallery.city}.uniq
  end

  def paintings
    Painting.all.select{|paint| paint.gallery ==  self}
  #
  end

  def artists
    paintings.map {|paint| paint.artist}
  end

  def names
    artists.map {|art| art.name}
  end

  def  yrs
    years = paintings.map{|info| info.artist.years_active}
    total = years.inject {|sum, n| sum + n }
    total
  end

end
