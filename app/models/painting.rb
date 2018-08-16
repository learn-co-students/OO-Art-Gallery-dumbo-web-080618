class Painting

  attr_reader :title, :style
  attr_accessor :artist, :gallery
  @@all = []

  def initialize(title, style)
    @title = title
    @style = style
    @@all << self
  end

  def self.all 
    @@all
  end

  def self.clear_all
    @@all.clear
  end

  def self.all_styles 
    @@all.map{|painting| painting.style}.uniq
  end

end
