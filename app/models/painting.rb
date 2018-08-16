class Painting

  attr_reader :title, :style, :artist, :gallery

  @@all = []

  def initialize(title,style,artist,gallery)
    @title = title
    @style = style
    @artist = artist
    @gallery = gallery
    @@all << self
  end

  def self.all
    @@all
  end

  def self.style
    paint = Painting.all.map { |paints| paints.style}
    paint.uniq
  end

end
