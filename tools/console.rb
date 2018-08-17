require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

vadim = Artist.new("Vadim", 7)
joy = Artist.new("Joy Huang", 3)
otabek = Artist.new("Otash",12)

leouve = Gallery.new("The leove", "Paris")
moma = Gallery.new("Museum of Modern Art", "NYC")
metropolitan = Gallery.new("Metropolitan Museum of Art","NYC")

my_art = Painting.new("Vadim's art", "contemporary", vadim, leouve)
joys_art = Painting.new("Joy's Masterpiece", "modern", joy, moma)
joys_other_art = Painting.new("Whoa another one", "ancient", joy, metropolitan)
russian = Painting.new("Uzbeki Winters", "abstract", otabek,metropolitan)
binding.pry
