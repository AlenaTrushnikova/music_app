class Song < ApplicationRecord
    has_many :playlists, :as => :playable
    belongs_to :album

    def self.search(search)
        if search  
            Song.where("lower(name) LIKE ?", "%" + search.downcase + "%")
        else
            Song.all
        end
    end
end
