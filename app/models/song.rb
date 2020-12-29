class Song < ApplicationRecord
    has_many :playlists, :as => :playable
    belongs_to :artist
    belongs_to :genre
    belongs_to :album
end
