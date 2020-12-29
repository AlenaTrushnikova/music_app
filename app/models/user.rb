class User < ApplicationRecord
    has_many :playlists, :as => :playable
    validates :email, uniqueness: true
    validates :username, uniqueness: true
    has_secure_password
end
