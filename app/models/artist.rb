class Artist < ApplicationRecord
    has_many :albums
    has_one :genre

    def songs
        Song.joins(:album).where('albums.artist_id' => self.id)
    end

    def artist_songs
        self.songs.length
    end

    def self.search(search)
        if search  
            Artist.where("lower(name) LIKE ?", "%" + search.downcase + "%").slice(0...10)
        else
            Artist.all
        end
    end

end
