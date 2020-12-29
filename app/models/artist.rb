class Artist < ApplicationRecord
    has_many :albums
    has_one :genre
end
