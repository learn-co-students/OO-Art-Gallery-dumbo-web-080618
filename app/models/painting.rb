class Painting

  attr_reader :title, :style, :artist, :gallery
  @@all = []

  def initialize(title, style, artist, gallery)
    @artist = artist
    @gallery = gallery
    @title = title
    @style = style
    @@all << self
  end

  def self.all
    @@all
  end

  def self.painting_styles
    painting_style_array = []
    Painting.all.each do |painting|
      if !(painting_style_array.include?(painting.style))
        painting_style_array << painting.style
      end
    end
    painting_style_array
  end

end
