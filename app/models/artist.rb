class Artist

  @@all = []

  attr_reader :name, :years_active

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

  def self.average_experience
    total_experience = 0
    all.each {|artist| total_experience += artist.years_active}
    total_experience.to_f/(all.count)
  end


end
