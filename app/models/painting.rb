class Painting

  attr_reader :title, :style, :artist, :gallery
  @@all = []
  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
    #binding.pry
  end

  def self.list_of_painting
    @@all.map{|element| element. title}
  end

  def self.painting_styles
     beef = @@all.map {|a| a.style}
    #binding.pry
  end

end
