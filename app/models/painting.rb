class Painting
  attr_accessor :artist, :gallery
  @@all = []
  attr_reader :title, :style

  def initialize(title, style, artist, gallery)
    @artist = artist
    @gallery = gallery
    @title = title
    @style = style
    @@all << self
  end


# Get a list of all paintings
  def self.all
    @@all
    #binding.pry
  end
  # Get a list of all painting styles-
  # -(a style should not appear more than once means use .uniq in the list)
  def self.paint_style
    Painting.all.map{|sty| sty.style}.uniq
    # binding.pry
  end
end
