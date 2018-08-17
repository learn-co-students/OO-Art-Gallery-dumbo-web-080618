require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

john = Artist.new("John", 7)
maria = Artist.new("Maria", 3)

coney = Gallery.new("Coney Island", "Brooklyn")
downtown = Gallery.new("Downtown", "Brooklyn")
manhat = Gallery.new("Manhat", "Manhattan")

mosa = Painting.new("Mosa", "Illustration", john, coney)
samo = Painting.new("Samo", "Illustration", john, coney)
big_foot = Painting.new("Big Foot", "Photography", maria, downtown)
scream = Painting.new("Scream", "Too art", john, manhat)




binding.pry
0
