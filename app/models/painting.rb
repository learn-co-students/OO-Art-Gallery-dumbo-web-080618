class Painting
  @@all = []
  attr_reader :title, :style, :artist_name
  attr_accessor :gallery_name

  def initialize(title, style, artist_name, gallery_name)
    @title = title
    @style = style
    @artist_name = artist_name
    @gallery_name = gallery_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.all_styles
    styles = @@all.map do |paint|
              paint.style
            end
    styles.uniq
  end
end
