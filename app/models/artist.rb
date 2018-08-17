class Artist

  attr_reader :name, :years_active

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  #Get a list of all artists
  def self.all
    @@all
  end

  def my_painting
    Painting.all.select {|p| p.artist == self}
  end

  #Get a list of all the paintings by a specific artists
  def find_paintings
    self.my_painting.map { |e| e.title }
  end

  #Get a list of all the galleries that a specific artist has paintings in
  def find_gallery
    self.my_painting.map { |a| a.gallery.name }.uniq
  end

  #Get a list of all cities that contain galleries that a specific artist has paintings in
  def find_city
    self.my_painting.map { |a| a.gallery.city }.uniq
  end

  #Find the average years of experience of all artists
  def self.average_year
    arr = self.all.map { |y| y.years_active }
    arr.reduce(:+)/arr.count.to_f
  end

end
