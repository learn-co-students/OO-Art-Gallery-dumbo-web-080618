require 'pry'
class Gallery
  @@all = []

  attr_reader :name, :city
  attr_accessor :artist, :years_active

def initialize(name, city)
  @name = name
  @city = city
  @@all << self
end

def self.all
  @@all
end
def self.city
  Gallery.all.map do |data|
    #binding.pry
    data.city


end.uniq
end
def self.name
  Gallery.all.map do |data|
    #binding.pry
    data.name


end.uniq
end
def self.my_city
  Painting.all.map do |data|
    data.gallery.city

end.uniq

end
def specific_gallery
  gallery = Painting.all.select do |painting|

      painting.gallery == self
end
gallery.map do |art|
  art.artist
end
end
def specific_names
  specific_gallery.map do |artist|
    artist.name

end


end
def combined_years
    total = specific_gallery.map {|years| years.years_active}

   total = total.inject{|sum, elm| sum + elm}
  binding.pry







end

#binding.pry


end
