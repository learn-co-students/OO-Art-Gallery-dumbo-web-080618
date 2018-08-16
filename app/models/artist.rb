require 'pry'

class Artist

  @@all = []

  attr_reader :name, :painting
  attr_accessor :years_active

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings_by_artist
    Painting.all.select do |data|
      data.artist == self
    end
  end

  def galleries_for_artist
    paintings_by_artist.map do |data|
      data.gallery
    end
  end

  def get_cities_with_galleries_for_artists
    galleries_for_artist.map do |data|
      data.city
    end
  end

  def self.avg_exp
    nums = all.map do |data|
      data.years_active
    end
    nums.inject {|sum, n| sum + n} / nums.length
  end


end
