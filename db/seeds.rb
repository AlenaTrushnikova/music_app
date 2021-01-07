require 'rest-client'
require 'json'

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
User.destroy_all
Playlist.destroy_all
SongsInPlaylist.destroy_all

top_artists = [
    "The Beatles",
"The Beach Boys",
"Bob Dylan",
"Marvin Gaye"
=begin
"The Rolling Stones",
"The Clash",
"Elvis Presley",
"Miles Davis",
"The Velvet Underground",
"The Jimi Hendrix Experience",
"Nirvana",
"Bruce Springsteen",
"Van Morrison",
"Michael Jackson",
"Chuck Berry",
"Robert Johnson",
"John Lennon / Plastic Ono Band",
"Stevie Wonder",
"James Brown",
"Fleetwood Mac",
"U2",
"The Who",
"Led Zeppelin",
"Joni Mitchell",
"Ramones",
"The Band",
"David Bowie",
"Carole King",
"Eagles",
"Muddy Waters",
"Love",
"Sex Pistols",
"The Doors",
"Pink Floyd",
"Patti Smith",
"Bob Marley & The Wailers",
"John Coltrane",
"Public Enemy",
"The Allman Brothers Band",
"Little Richard",
"Simon & Garfunkel",
"Al Green",
"Ray Charles",
"Creedence Clearwater Revival",
"Captain Beefheart & His Magic Band",
"Sly & The Family Stone",
"Guns N' Roses",
"Phil Spector",
"Radiohead",
"Billy Joel",
"Paul Simon",
"Curtis Mayfield",
"Neil Young",
"Prince and the Revolution",
"AC/DC",
"Otis Redding",
"John Lennon",
"Aretha Franklin",
"Johnny Cash",
"Dusty Springfield",
"Elton John",
"Buddy Holly",
"Prince",
"Hank Williams",
"Elvis Costello",
"The Zombies",
"Frank Sinatra",
"Cream",
"James Taylor",
"Sam Cooke",
"The Mamas and the Papas",
"Derek and the Dominos",
"Kanye West",
"Etta James",
"The Byrds",
"Various Artists",
"Run D.M.C.",
"Moby Grape",
"Janis Joplin",
"The Wailers",
"Iggy and The Stooges",
"Talking Heads",
"Television",
"Black Sabbath",
"The Notorious B.I.G.",
"Pavement",
"The Replacements",
"Dr. Dre",
"The Meters",
"Blondie",
"B.B. King",
"Dr. John, the Night Tripper",
"N.W.A",
"Steely Dan",
"Jefferson Airplane",
"Crosby, Stills, Nash & Young",
"Santana",
"Arcade Fire",
"The B 52's",
"A Tribe Called Quest",
"Howlin' Wolf",
"Pretenders",
"Beastie Boys",
"Joy Division",
"KISS",
"T. Rex",
"Linda Ronstadt",
"Elvis Costello & The Attractions",
"Metallica",
"Rod Stewart",
"Todd Rundgren",
"Carpenters",
"Aerosmith",
"Funkadelic",
"Curtis Mayfield and The Impressions",
"ABBA",
"Willie Nelson",
"Madonna",
"The Stooges",
"Peter Gabriel",
"Buffalo Springfield",
"Quicksilver Messenger Service",
"The Flying Burrito Brothers",
"Green Day",
"Lou Reed",
"John Mayall & The Bluesbreakers",
"R.E.M.",
"Little Walter",
"The Strokes",
"Nine Inch Nails",
"Cat Stevens",
"Pearl Jam",
"Neil Young & Crazy Horse",
"Ike & Tina Turner",
"New York Dolls",
"Bo Diddley",
"The Smiths",
"My Bloody Valentine",
"Professor Longhair",
"Neil Diamond",
"Pixies",
"Eric B. & Rakim",
"Bonnie Raitt",
"Queen",
"The Kinks",
"Patsy Cline",
"Jackie Wilson",
"Eminem",
"Jerry Lee Lewis",
"The Mothers of Invention",
"The Grateful Dead",
"Ornette Coleman",
"Jay Z",
"Kraftwerk",
"Whitney Houston",
"Janet",
"Grateful Dead",
"Crosby, Stills & Nash",
"Tracy Chapman",
"Blood, Sweat & Tears",
"The Jesus and Mary Chain",
"Sleater Kinney",
"Smokey Robinson & The Miracles",
"LaBelle",
"Parliament",
"Janet Jackson",
"Various",
"Mary J. Blige",
"Barry White",
"The Cars",
"X",
"Bob Dylan and the Band",
"MC5",
"Leonard Cohen",
"Weezer",
"Dolly Parton",
"Jeff Buckley",
"Lucinda Williams",
"Beck",
"Red Hot Chili Peppers",
"Jane's Addiction",
"Lauryn Hill",
"Tom Petty and the Heartbreakers",
"The O'Jays",
"Nick Drake",
"Randy Newman",
"The Police",
"Eric Clapton",
"The Cure",
"Liz Phair",
"Sonic Youth",
"Richard & Linda Thompson",
"Graham Parker & The Rumour",
"Soundgarden",
"Jethro Tull",
"Big Brother & the Holding Company",
"Tom Waits",
"Black Flag",
"Moby",
"Depeche Mode",
"Meat Loaf",
"De La Soul",
"The Yardbirds",
"Dire Straits",
"Buzzcocks",
"OutKast",
"The Smashing Pumpkins",
"New Order",
"Rage Against the Machine",
"Mott the Hoople",
"Arctic Monkeys",
"Roxy Music",
"Jackson Browne",
"John Lee Hooker",
"Oasis",
"TLC",
"Toots & The Maytals",
"The Modern Lovers",
"Wu Tang Clan",
"Don Henley",
"The White Stripes",
"M.I.A.",
"LCD Soundsystem",
"Massive Attack",
"ZZ Top",
"The Temptations",
"Nas",
"Lynyrd Skynyrd",
"Dr. John",
"Big Star",
"PJ Harvey",
"Wire",
"Minutemen",
"The Go Go's",
"Van Halen",
"Paul McCartney & Wings",
"Portishead",
"The Crickets",
"The Ronettes",
"Diana Ross & The Supremes",
"Gram Parsons",
"Cheap Trick",
"Peter Wolf",
"Brian Eno",
"Vampire Weekend",
"George Harrison",
"Lil Wayne",
"The Pogues",
"Suicide",
"DEVO",
"War",
"Steve Miller Band",
"Amy Winehouse",
"John Prine",
"EPMD",
"Alice Cooper",
"Los Lobos",
"My Morning Jacket",
"The Drifters",
"Hole",
"Public Image Ltd.",
"Echo and The Bunnymen",
"Def Leppard",
"The Magnetic Fields",
"Coldplay",
"The Paul Butterfield Blues Band",
"Fugees",
"L.L. Cool J",
"George Michael",
"Manu Chao",
"Merle Haggard",
"Loretta Lynn",
"Raekwon",
"D'Angelo",
"Steve Earle",
"Gang of Four",
"Earth, Wind & Fire",
"Cyndi Lauper",
"Albert King",
"Eurythmics",
"Wilco",
"MGMT",
"Boz Scaggs",
"The Stone Roses"
=end
]


#returns all artist names in API w/ Artist descriptions
@artist_array = []
@album_ids = [] 
api_key = 523532
top_artists.each do |artist|
    begin
        audiodb = RestClient.get "theaudiodb.com/api/v1/json/#{api_key}/search.php?s=#{artist}"
        JSON.parse(audiodb)["artists"][0]["strArtist"] == nil || JSON.parse(audiodb)["artists"][0]["strBiographyEN"] == nil
        name = JSON.parse(audiodb)["artists"][0]["strArtist"]
        bio = JSON.parse(audiodb)["artists"][0]["strBiographyEN"]
        @artist = Artist.create(name: name, bio: bio)
        @artist_array << @artist.name
    rescue NoMethodError, RuntimeError
        next(artist)
    end
end



# seeds all albums associated with an artist
@artist_array.each do |artist|
    album_db = RestClient.get "theaudiodb.com/api/v1/json/#{api_key}/searchalbum.php?s=#{artist}"
    @artist_id = Artist.find_by(name: artist).id
    album_array = JSON.parse(album_db)["album"]
    album_array.each do |album|
        album_name = album["strAlbum"]
        album_year = album["intYearReleased"]
        album_picture = album["strAlbumThumb"]
        id = album["idAlbum"]
        Album.create(name: album_name, release_year: album_year, picture: album_picture, artist_id: @artist_id)
        @album_ids << id
    end
end

@artist_array.each do |artist|
    genre_db = RestClient.get "theaudiodb.com/api/v1/json/#{api_key}/search.php?s=#{artist}"
    @artist_id = Artist.find_by(name: artist).id
    genre = JSON.parse(genre_db)["artists"][0]["strGenre"]
    Genre.create(name: genre, artist_id: @artist_id)
end

@album_ids.each do |album|

    begin
    song_db = RestClient.get "theaudiodb.com/api/v1/json/#{api_key}/track.php?m=#{album}"
    song_array = JSON.parse(song_db)["track"]
    name_of_album = JSON.parse(song_db)["track"][0]["strAlbum"]
    song_album_id = Album.find_by(name: name_of_album)

    if song_album_id
        song_array.each do |song|
            song_name = song["strTrack"]
            Song.create(name: song_name, album_id: song_album_id.id) 
        end
    end

    rescue NoMethodError
        next(album)
    end

end


# @artist_array.each do |artist|
#     genre_db = RestClient.get RestClient.get "theaudiodb.com/api/v1/json/#{api_key}/search.php?s=#{artist}"
#     genre = JSON.parse(genre_db)["artists"][0]["strGenre"]
#     Genre.create(name: genre, artist_id: @artist_id)
# end

# ar1 = Artist.create(name: "Kavinsky", bio: "Vincent Belorgey, known professionally as Kavinsky, is a French musician, producer, DJ and actor.")
# ar2 = Artist.create(name: "Desire", bio: "Desire is a Canadian electronic music band from Montreal, formed in 2009. The band consists of vocalist Megan Louise, producer Johnny Jewel (also a member of Chromatics and Glass Candy), and Nat Walker (also a member of Chromatics) on synthesizer and drums.")
# ar3 = Artist.create(name: "Miles Davis", bio: "Miles Dewey Davis III was an American jazz trumpeter, bandleader, and composer. He is among the most influential and acclaimed figures in the history of jazz and 20th-century music.")



# g1 = Genre.create(name: "Synthwave", artist_id: ar1.id)
# g2 = Genre.create(name: "Dance/Electronic", artist_id: ar2.id)
# g3 = Genre.create(name: "Jazz", artist_id: ar3.id)

# al11 = Album.create(name: "The Lincoln Lawyer", release_year: "2011", artist_id: ar1.id)
# al12 = Album.create(name: "OutRun", release_year: "2011", artist_id: ar1.id)
# al21 = Album.create(name: "Desire", release_year: "2009", artist_id: ar2.id)
# al31 = Album.create(name: "King of Blue", release_year: "1959", artist_id: ar3.id)
# al32 = Album.create(name: "Workin'", release_year: "1960", artist_id: ar3.id)


# s11_1 = Song.create(name: "Nightcall", album_id: al11.id)
# s11_2 = Song.create(name: "Pacific Coast Highway", album_id: al11.id)

# s12_1 = Song.create(name: "Prelude", album_id: al12.id)
# s12_2 = Song.create(name: "Blizzard", album_id: al12.id)
# s12_3 = Song.create(name: "ProtoVision", album_id: al12.id)
# s12_4 = Song.create(name: "Odd Look", album_id: al12.id)
# s12_5 = Song.create(name: "Rampage", album_id: al12.id)



# s21_1 = Song.create(name: "Under Your Spell", album_id: al21.id)
# s21_2 = Song.create(name: "Morroir Morroir", album_id: al21.id)
# s21_3 = Song.create(name: "Don't Call", album_id: al21.id)
# s21_4 = Song.create(name: "Colorless Sky", album_id: al21.id)

# s31_1 = Song.create(name: "So What", album_id: al31.id)
# s31_2 = Song.create(name: "Freddie Freeloader", album_id: al31.id)
# s31_3 = Song.create(name: "Blue in Green", album_id: al31.id)
# s31_4 = Song.create(name: "All Blues", album_id: al31.id)
# s31_5 = Song.create(name: "Flamenco Sketches", album_id: al31.id)

# s32_1 = Song.create(name: "It Never Entered My Mind", album_id: al32.id)
# s32_2 = Song.create(name: "Four", album_id: al32.id)
# s32_3 = Song.create(name: "In Your Own Sweet Way", album_id: al32.id)
# s32_4 = Song.create(name: "Trane's Blues", album_id: al32.id)
# s32_5 = Song.create(name: "Half Nelson", album_id: al32.id)

# u1 = User.create(username: "test", password: "12345", password_confirmation: "12345", email: "test@email.com")

# p1 = Playlist.create(name: "Jazz Playlist", playable_type: "User", playable_id: u1.id)

# s_in_pl1 = SongsInPlaylist.create(playlist_id: p1.id, song_id: u1.id)

puts 'done'

 

