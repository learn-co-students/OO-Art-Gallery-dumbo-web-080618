require 'pry'

class Painting

  attr_reader :title, :style
  attr_accessor :artist, :gallery

  @@all = []

  def initialize(title, style, artist, gallery)
    @title = title
    @style = style
    @gallery = gallery
    @artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

  def self.style_list
    list = Painting.all.map do |data|
      data.style
    end
    list.uniq
  end

end
