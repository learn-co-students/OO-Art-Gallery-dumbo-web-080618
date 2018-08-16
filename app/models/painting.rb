require 'pry'
class Painting
  @@all = []

  attr_reader :title, :style
  attr_accessor :artist, :gallery

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
  def self.type
    Painting.all.map do |data|
      data.style
      #binding.pry
  end.uniq
end
def self.title
  Painting.all.map do |data|
    data.title
    #binding.pry
end.uniq
end
def self.artist
  Painting.all.map do |data|
    data.artist.name

    #binding.pry
end.uniq
end
def self.gallery
  Painting.all.map do |data|
    data.gallery.name
    #binding.pry
end.uniq
end
#binding.pry
end
