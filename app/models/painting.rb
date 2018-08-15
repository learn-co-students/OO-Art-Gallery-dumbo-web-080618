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
    artist.paintings << self
    gallery.paintings << self
  end

  def self.all
    @@all
  end

  def self.list_all_paintings
    self.all.map { |e| e.title  }
  end

  def self.list_all_painting_styles
    self.all.map { |e| e.style  }.uniq
  end
end
