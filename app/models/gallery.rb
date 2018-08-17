class Gallery

  attr_reader :name, :city
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all_galleries_by_name(gallery_name)
    @@all.select do |gallery|
      gallery.name == gallery_name
    end
  end

  def self.all_cities
    c = self.all.map do |gallery|
      gallery.city
    end
    c.uniq
  end

  def self.all_artists_by(gallery)
    list_paintings_gallery = Painting.all.select do |paint_obj|
                              paint_obj.gallery_name == gallery.name
                            end

    artists_list = list_paintings_gallery.map do |paint_obj|
                      paint_obj.artist_name
                    end

    a = artists_list.map do |artist|
          Artist.artists_by_artist_name(artist)
        end
    a.flatten
  end

  def self.all_artists_names_by(gallery)
    a = self.all_artists_by(gallery)
    names = a.map do |artist_obj|
              artist_obj.name
            end
   names.uniq
  end

  def self.combined_yrs_experience_of_artists_by(gallery)
    n=0
    self.all_artists_by(gallery).each do |artist_obj|
      n += artist_obj.years_active
    end
    n
  end

  def self.all
    @@all
  end
end
