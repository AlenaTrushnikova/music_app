class Playlist < ApplicationRecord
    belongs_to :playable, :polymorphic => true
    has_many :songs_in_playlists
    has_many :songs, through: :songs_in_playlists
    
end
