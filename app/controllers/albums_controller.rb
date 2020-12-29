class AlbumsController < ApplicationController
    def index
        @albums = Album.all
        @songs = Song.all
        @artists = Artist.all
    end

    def show
        @album = Album.find(params[:id])
        @songs = Song.all
        @artists = Artist.all
    end
end
