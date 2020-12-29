class User < ApplicationRecord
    has_many :playlists, :as => :playable
end
