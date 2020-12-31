class User < ApplicationRecord
    has_many :playlists, :as => :playable
    validates :email, uniqueness: true, presence: true
    validates :username, uniqueness: true, presence: true
    # has_secure_password
end
