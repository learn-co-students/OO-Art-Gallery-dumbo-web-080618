require 'pry'
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

  def self.painting_styles
    (self.all.map{|painting| painting.style}).uniq
  end

end
