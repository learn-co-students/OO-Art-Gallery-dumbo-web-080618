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

  def paintings
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    self.paintings.map {|painting| painting.gallery}.uniq
  end

  def cities
    self.galleries.map {|gallery| gallery.city}.uniq
  end

  def self.avg_exp
    sum = 0
    self.all.each {|artist| sum += artist.years_active}
    sum/all.length
  end


end
