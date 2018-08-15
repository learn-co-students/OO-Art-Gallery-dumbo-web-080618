class Artist

  attr_reader :name
  attr_accessor :years_active, :paintings

  @@all = []
  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @paintings = []
    @@all << self
  end

  def self.all
    @@all
  end

  def list_all_paintings
    self.paintings.map { |e| e.title }
  end

  def list_all_galleries
    self.paintings.map { |e| e.gallery.name }
  end

  def list_all_cities
    self.paintings.map { |e| e.gallery.city }
  end

  def self.average_year
    aver = 0.0
    @@all.each { |arr|  aver += arr.years_active}
    aver / @@all.length
  end

end
