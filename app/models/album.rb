class Album < ApplicationRecord
    has_many :songs, dependent: :destroy
    belongs_to :artist

    def album_songs
        self.songs.count
    end

    def self.album_search(search)
        if search  
            Album.where("lower(name) LIKE ?", "%" + search.downcase + "%")
        else
            Album.all
        end
    end

end
