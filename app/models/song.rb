class Song < ApplicationRecord
    has_many :playlists, :as => :playable
    has_many :songs_in_playlists
    has_many :playlists, through: :songs_in_playlists
    belongs_to :album

    def self.search(search)
        if search  
            Song.where("lower(name) LIKE ?", "%" + search.downcase + "%")
        else
            Song.all
        end
    end
end
