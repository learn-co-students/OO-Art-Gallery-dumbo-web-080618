class Artist

  attr_reader :name, :years_active
  @@all = []
  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end
 # - Get a list of all artists
  def self.all 
    @@all
  end

  # - Get a list of all the paintings by a specific artists
  def all_my_paintings
    Painting.all.select{|picture| picture.artist == self}
  end

  # - Get a list of all the galleries that a specific artist has paintings in
  def all_galleries_featured_in
    my_galleries = self.all_my_paintings.map{|picture| picture.gallery}.uniq
  end
  # - Get a list of all cities that contain galleries that a specific artist has paintings in
  def all_featured_cities
    cities_featured = self.all_galleries_featured_in.map{|gallery| gallery.city}
  end
  # - Find the average years of experience of all artists
  def self.avg_years_exp
    @@all.inject(0){|sum, artist| sum += artist.years_active}/@@all.size.to_f
  end

end
