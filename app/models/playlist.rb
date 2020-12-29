class Playlist < ApplicationRecord
    belongs_to :playable, :polymorphic => true
end
