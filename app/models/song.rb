class Song < ApplicationRecord
    has_many :playlists, :as => :playable
    has_many :songs_in_playlists
    has_many :playlists, through: :songs_in_playlists
    belongs_to :album

    def self.search(search)
        if search  
            Song.where("lower(name) LIKE ?", "%" + search.downcase + "%").slice(0..10)
        else
            @first_index = 0
            @last_index = 10
            Song.all.slice(@first_index...@last_index)
        end
    end

    # def next_slice
    #     @first_index += 10
    #     @last_index += 10
    #     Song.all.slice(@first_index...@last_index)
    # end

end
