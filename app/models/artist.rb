class Artist
  attr_reader :name, :years_active
  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def self.paintings_by(artist)
    Painting.all.select do |paint|
      paint.artist_name == artist.name
    end
  end

  def paintings
    Painting.all.select do |paint|
      paint.artist_name == self.name
    end
  end

  def self.all_galleries_by(artist)
    gallery_names = self.paintings_by(artist).map do |paint|
                      paint.gallery_name
                    end

    g = gallery_names.map do |gallery_name|
          Gallery.all_galleries_by_name(gallery_name)
        end
    g.flatten.uniq
  end

  def all_galleries
    gallery_names = self.paintings.map do |paint|
                      paint.gallery_name
                    end

    g = gallery_names.map do |gallery_name|
          Gallery.all_galleries_by_name(gallery_name)
        end
    g.flatten.uniq
  end

  def self.all_cities_of_galleries_by(artist)
    c = self.all_galleries_by(artist).map do |gallery|
          gallery.city
        end
    c.uniq
  end

  def all_cities_of_galleries
    c = self.all_galleries.map do |gallery|
          gallery.city
        end
    c.uniq
  end
  def self.artists_by_artist_name(artist_name)
    self.all.select do |artist|
      artist.name == artist_name
    end
  end

  def self.average_yrs_experience
    n=0
    @@all.each do |artist|
      n += artist.years_active
    end
    n/@@all.size
  end
end
