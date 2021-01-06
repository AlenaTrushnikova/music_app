class Playlist < ApplicationRecord
    belongs_to :playable, :polymorphic => true 
    has_many :songs_in_playlists, dependent: :destroy
    has_many :songs, through: :songs_in_playlists, dependent: :destroy
    validates :name, uniqueness: true, presence: true

    def self.playlist_search(search)
        if search  
            Song.where("lower(name) LIKE ?", "%" + search.downcase + "%")
        else
            Song.all
        end
    end

end
