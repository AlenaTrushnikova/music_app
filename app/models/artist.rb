class Artist < ApplicationRecord
    has_many :albums
    has_one :genre

    def songs
        Song.joins(:album).where('albums.artist_id' => self.id)
    end

    def artist_songs
        self.songs.length
    end

    def self.artist_search(search)
        if search  
            Artist.where("lower(name) LIKE ?", "%" + search.downcase + "%")
        else
            Artist.all
        end
    end

end
