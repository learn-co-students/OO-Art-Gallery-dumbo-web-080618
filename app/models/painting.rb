# - Get a list of all paintings
#
# - Get a list of all painting styles (a style should not appear more than once in the list)
# class Painting

class Painting

  attr_reader :title, :style, :artist, :gallery
  @@all = []

  def self.all
    @@all
  end

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.styles
    Painting.all.map{|painting| painting.style}.uniq
  end

end
