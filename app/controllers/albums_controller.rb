class AlbumsController < ApplicationController
    def index
        @albums = Album.all
    end

    def show
        @album = Album.find(params[:id])
        @songs = Song.all.where(album_id: params[:id])
    end
end
