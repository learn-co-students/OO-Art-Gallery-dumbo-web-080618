class Painting

  attr_reader :title, :style
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  #Get a list of all paintings
  def self.all
    @@all
  end

  #Get a list of all painting styles (a style should not appear more than once in the list)
  def self.painting_style
    self.all.map { |p| p.style }.uniq
  end

end
