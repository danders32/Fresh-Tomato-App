# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Seed the RottenPotatoes DB with some movies.
#
=begin
more_movies = [
  {:title => 'Aladdin', :rating => 'G',
    :release_date => '25-Nov-1992'},
  {:title => 'When Harry Met Sally', :rating => 'R',
    :release_date => '21-Jul-1989'},
  {:title => 'The Help', :rating => 'PG-13',
    :release_date => '10-Aug-2011'},
  {:title => 'Raiders of the Lost Ark', :rating => 'PG',
    :release_date => '12-Jun-1981'}
]
# NOTE: the following line temporarily allows mass assignment
# (needed if you used attr_accessible/attr_protected in movie.rb)
Movie.send(:attr_accessible, :title, :rating, :release_date)
more_movies.each do |movie|
  Movie.create!(movie)
end
=end


more_actors = [
  {:name => 'Keanu Reeves', :birthDate => '2-September-1964', :homeTown => 'Hawaii'},
  {:name => 'Steve Carell', :birthDate => '16-August-1962', :homeTown => 'Massachusetts'},
  {:name => 'Matthew Broderick', :birthDate => '21-March-1962', :homeTown => 'New York'},
  {:name => 'Jodi Benson', :birthDate => '10-October-1961', :homeTown => 'Illinois'},
  {:name => 'Hardie Albright', :birthDate => '16-December-1903', :homeTown => 'Pennsylvania'},
  {:name => 'William Shatner', :birthDate => '22-March-1931', :homeTown => 'Canada'}
]
more_actors.each do |actor|
  Actor.create(actor)
end

