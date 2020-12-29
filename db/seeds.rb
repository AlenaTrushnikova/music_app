# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Artist.destroy_all
Genre.destroy_all
Album.destroy_all
Song.destroy_all


ar1 = Artist.create(name: "Kavinsky", bio: "Vincent Belorgey, known professionally as Kavinsky, is a French musician, producer, DJ and actor.")

g1 = Genre.create(name: "Synthwave", artist_id: ar1.id)

al1 = Album.create(name: "The Lincoln Lawyer", release_year: "2011", artist_id: ar1.id)

s1 = Song.create(name: "Nightcall", album_id: al1.id)

puts 'done'

 

