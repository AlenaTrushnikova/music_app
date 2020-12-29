class Genre < ApplicationRecord
    has_many :songs
    has_many :artists, through: :songs
    has_many :songs, through: :songs
end
