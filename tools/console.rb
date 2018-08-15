require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

felix = Artist.new("Felix", 1)
william = Artist.new("William", 2)

brooklyn = Gallery.new("NY Gallery", "Brooklyn")
somewhere = Gallery.new("Something Art", "Somewhere")

Painting.new("Nothing", "modern", felix, brooklyn)
Painting.new("asdfafe", "modern", felix, somewhere)
Painting.new("Felix the cat", "bad art", felix, somewhere)

Painting.new("Everything", "modern", william, somewhere)
binding.pry
