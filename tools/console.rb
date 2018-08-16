require_relative '../config/environment.rb'


def reload
  load 'config/environment.rb'
end

jim = Artist.new("Jim Dew", 20)
ben = Artist.new("Ben Tall", 10)

gallery_1 = Gallery.new("MoMa", "New York")
gallery_2 = Gallery.new("Best Gallery", "Idaho")

painting_1 = Painting.new("The Adventures of Self", "Adventure", ben, gallery_1)
painting_2 = Painting.new("Help Yourself", "Self-Help", jim, gallery_2)
painting_3 = Painting.new("Fire in a Blaze", "Non-Fiction", ben, gallery_1)
painting_4 = Painting.new("Fire and Water", "Mystery", ben, gallery_2)

gallery_2.avg_at_gallery
#
binding.pry
0
