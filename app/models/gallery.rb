class Gallery
  @@all = []
  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end
  def self.all
    @@all
    #binding.pry
  end

  def self.list_all_galleries
    beef = @@all.map {|a| a.name}
    #binding.pry
  end

  def self.gallery_city
    arr = Gallery.all.map {|a|a.city}
    arr.uniq
    #binding.pry
  end

  def artists
    data = Painting.all.select do |painting_object|
      painting_object.gallery == self
      #binding.pry
    end
    data.map do |elmt|
      elmt.artist
      #binding.pry
    end
  end

  def all_artist_names
    artists.map do |artist|
      #binding.pry
      artist.name
    end
  end

  def artist_years_of_exp
    saved_num = 0
    artists.each do | artist_object |
      saved_num = saved_num + artist_object.years_active
      #binding.pry
  end
  saved_num
end



end
