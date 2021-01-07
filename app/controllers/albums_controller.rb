class AlbumsController < ApplicationController
    def index
        @albums = Album.search(params[:search])
    end

    def show
        @album = Album.find(params[:id])
        @songs = @album.songs
    end
end
