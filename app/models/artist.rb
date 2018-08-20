class Artist

  attr_reader :name, :years_active
  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    galleries = []
    Painting.all.each do |painting|
      if painting.artist == self
        galleries << painting.gallery
      end
    end
    galleries
  end

  def cities
    cities = []
    Painting.all.each do |painting|
      if painting.artist == self
        if cities.include?(painting.gallery.city)
          cities << painting.gallery.city
        end
      end
    end
    cities
  end

  def self.experience
    sum = 0
    Painting.all.each do |painting|
      sum += painting.artist.years_active
    end
    sum = sum/@@all.length
  end


end
