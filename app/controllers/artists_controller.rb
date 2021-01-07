class ArtistsController < ApplicationController
    def index
        @artists = Artist.search(params[:search])
    end

    def show
        @artist = Artist.find(params[:id])
        @albums = @artist.albums
    end
end
