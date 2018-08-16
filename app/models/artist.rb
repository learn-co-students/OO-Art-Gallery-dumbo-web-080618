require 'pry'

class Artist
@@all = []
  attr_reader :name, :galleries, :paintings, :years_active

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self

  end
#binding.pry
def self.all
  @@all
#binding.pry
end
def self.name
  Artist.all.map do |data|
    #binding.pry
    data.name


end.uniq
end
def self.years_active
  Artist.all.map do |data|
    #binding.pry
    data.years_active


end.uniq

end
def my_paintings
  Painting.all.select do |painting|
    #binding.pry
      painting.artist == self
  end
  #binding.pry
end
def my_gallery
  my_paintings.map do |gall|
    gall.gallery.name
  end
end

def self.artist_average
  avg = Painting.all.map {|years| years.artist.years_active}
  avg = avg.inject{|sum, elm| sum + elm} / avg.size
  avg


  # my_paintings.map do |avg|
  #   avg.artist.years_active
  # end
end


end

#binding.pry
