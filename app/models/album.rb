class Album < ApplicationRecord
    has_many :songs
    has_many :artists, through: :songs
    has_many :genres, through: :songs
end
