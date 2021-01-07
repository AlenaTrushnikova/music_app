class Genre < ApplicationRecord
    belongs_to :artist

    def self.uniq_names
        Genre.all.map{|genre| genre.name}.uniq
    end
end
