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
ar2 = Artist.create(name: "Desire", bio: "Desire is a Canadian electronic music band from Montreal, formed in 2009. The band consists of vocalist Megan Louise, producer Johnny Jewel (also a member of Chromatics and Glass Candy), and Nat Walker (also a member of Chromatics) on synthesizer and drums.")
ar3 = Artist.create(name: "Miles Davis", bio: "Miles Dewey Davis III was an American jazz trumpeter, bandleader, and composer. He is among the most influential and acclaimed figures in the history of jazz and 20th-century music.")


g1 = Genre.create(name: "Synthwave", artist_id: ar1.id)
g2 = Genre.create(name: "Dance/Electronic", artist_id: ar2.id)
g3 = Genre.create(name: "Jazz", artist_id: ar3.id)



al11 = Album.create(name: "The Lincoln Lawyer", release_year: "2011", artist_id: ar1.id)
al12 = Album.create(name: "OutRun", release_year: "2011", artist_id: ar1.id)
al21 = Album.create(name: "Desire", release_year: "2009", artist_id: ar2.id)
al31 = Album.create(name: "King of Blue", release_year: "1959", artist_id: ar3.id)
al32 = Album.create(name: "Workin'", release_year: "1960", artist_id: ar3.id)


s11_1 = Song.create(name: "Nightcall", album_id: al11.id)
s11_2 = Song.create(name: "Pacific Coast Highway", album_id: al11.id)

s12_1 = Song.create(name: "Prelude", album_id: al12.id)
s12_2 = Song.create(name: "Blizzard", album_id: al12.id)
s12_3 = Song.create(name: "ProtoVision", album_id: al12.id)
s12_4 = Song.create(name: "Odd Look", album_id: al12.id)
s12_5 = Song.create(name: "Rampage", album_id: al12.id)



s21_1 = Song.create(name: "Under Your Spell", album_id: al21.id)
s21_2 = Song.create(name: "Morroir Morroir", album_id: al21.id)
s21_3 = Song.create(name: "Don't Call", album_id: al21.id)
s21_4 = Song.create(name: "Colorless Sky", album_id: al21.id)

s31_1 = Song.create(name: "So What", album_id: al31.id)
s31_2 = Song.create(name: "Freddie Freeloader", album_id: al31.id)
s31_3 = Song.create(name: "Blue in Green", album_id: al31.id)
s31_4 = Song.create(name: "All Blues", album_id: al31.id)
s31_5 = Song.create(name: "Flamenco Sketches", album_id: al31.id)

s32_1 = Song.create(name: "It Never Entered My Mind", album_id: al32.id)
s32_2 = Song.create(name: "Four", album_id: al32.id)
s32_3 = Song.create(name: "In Your Own Sweet Way", album_id: al32.id)
s32_4 = Song.create(name: "Trane's Blues", album_id: al32.id)
s32_5 = Song.create(name: "Half Nelson", album_id: al32.id)

puts 'done'

 

