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
  end

  def new_painting(title, style, gallery)
    painting = Painting.new(title, style, self, gallery)
    self.paintings << painting
    painting
  end

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map {|painting| painting.gallery}
  end

  def cities
    self.galleries.map {|gallery| gallery.city}
  end

  def self.average_experience
    sum = 0
    self.all.each {|artist| sum += artist.years_active}
    sum / self.all.size
  end

end
