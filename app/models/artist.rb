class Artist < ApplicationRecord
    has_many :albums
    has_one :genre

    def songs
        Song.joins(:album).where('albums.artist_id' => self.id)
    end

end
