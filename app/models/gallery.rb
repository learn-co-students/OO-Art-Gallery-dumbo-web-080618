class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end
  def self.all# Get a list of all galleries
    @@all
  end
  def self.cities
    # A city should not appear more than once in the list use .uniq
    self.all.map{|list| list.city}.uniq
  end

  # Get a list of all cities that have a gallery. .
  def cities
    Gallery.all.map{|list| list.city}
  end
  #helper method for list of names of artists
  def paintings # Get a list of all the paintings by a specific(keywrod for instance method) artists
    Painting.all.select{|list| list.gallery == self}
    # binding.pry
  end

  # Get a list of the names of artists that have paintings at a specific gallery
  #gives me all the list of artist in gallery 2 that i am calling in console.rb
  def artists
    paintings.map{|art| art.artist.name}

  end
  # Get the combined years of experience of all artists at a specific gallery

  def gal_artist
    beef = paintings.map{|exp| exp.artist.years_active} #accesing artist object in paintings method(mentioned above) and years_active instance_method
    tot = beef.inject{|sum, n| sum + n} #sum of all
    # avg = (beef_tot / beef.length).round(0) #avg of the num of elements(beef_tot) divide by number of arrays we summed up (beef.length)
    # binding.pry

  end


end



#
