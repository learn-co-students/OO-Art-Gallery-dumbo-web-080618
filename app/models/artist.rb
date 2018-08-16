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
    Painting.all.select{|paint| paint.artist ==  self}

  end

  def galleries
    paintings.map {|paint| paint.gallery}
    #binding.pry
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def self.average_years
    jesus =Artist.all.map{|info| info.years_active}
    holy = jesus.inject {|sum,n| sum+n}
    holy /= jesus.length


    #binding.pry
  end



end
