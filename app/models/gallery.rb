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

def cities
  cities = []
  Painting.all.each do |painting|
    if painting.gallery == self
      if !(cities.include?(painting.gallery.city))
        cities << painting.gallery.city
      end
    end
  end
  cities
end

def artists
  artists = []
  Painting.all.each do |painting|
    if painting.gallery == self
      if !(artists.include?(painting.artist))
        artists << painting.artist
      end
    end
  end
  artists
end

def self.find_by_gallery(gallery)
  artists = []
  Painting.all.each do |painting|
    if painting.gallery == gallery
      artists << painting.artist
    end
  end
  artists
end

def self.years_at_gallery(gallery)
  sum = 0
  Painting.all.each do |painting|
    if painting.gallery == gallery
      sum += painting.artist.years_active
    end
  end
  sum
end


end
