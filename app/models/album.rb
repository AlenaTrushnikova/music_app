class Album < ApplicationRecord
    has_many :songs, dependent: :destroy
    belongs_to :artist

    def album_songs
        self.songs.length
    end

end
