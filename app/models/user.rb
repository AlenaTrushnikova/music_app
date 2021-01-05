class User < ApplicationRecord
    has_many :playlists, :as => :playable
    validates :email, uniqueness: true, presence: true
    validates :username, uniqueness: true, presence: true
    has_secure_password
    validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
