class Playlist < ApplicationRecord
    belongs_to :playable, :polymorphic => true
    serialize :songs, Array
end
