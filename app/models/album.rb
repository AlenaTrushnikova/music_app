class Album < ApplicationRecord
    has_many :songs, dependent: :destroy
    belongs_to :artist

    def album_songs
        self.songs.length
    end

    def self.search(search)
        if search  
            Album.where("lower(name) LIKE ?", "%" + search.downcase + "%").slice(0..10)
        else
            @first_index = 0
            @last_index = 25
            Album.all.slice(@first_index...@last_index)
        end
    end

end
