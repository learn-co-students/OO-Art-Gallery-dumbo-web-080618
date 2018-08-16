class Artist
  @@all = []
  attr_reader :name, :years_active

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end
  def self.all# Get a list of all artists
    @@all
  end
  def paintings # Get a list of all the paintings by a specific(keywrod for instance method) artists
    Painting.all.select{|list| list.artist == self}
    # binding.pry

  end
  # Get a list of all the galleries that a specific artist has paintings in
  def gallaries
    paintings.map{|paint| paint.gallery}

  end
# Get a list of all cities that contain galleries that a specific artist has paintings in
  def cities
    gallaries.map{|place| place.city}

  end
# Find the average years of experience of all artists
  def artists
    beef = Artist.all.map{|exp| exp.years_active} #all artist
    beef_tot = beef.inject{|sum, n| sum + n} #sum of all
    avg = (beef_tot / beef.length).round(0) #avg of the num of elements(beef_tot) divide by number of arrays we summed up (beef.length)
    # binding.pry

  end

end
