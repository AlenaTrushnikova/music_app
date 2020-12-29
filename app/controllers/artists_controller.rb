class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
    end

    def show
        @artist = Artist.find(params[:id])
        @songs =[]
        @artist.albums.each do |album|
            album.songs.each do |song|
                @songs << song
            end
        end
    end
end
