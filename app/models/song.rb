class Song < ApplicationRecord
    has_many :playlists, :as => :playable
    belongs_to :album
end
