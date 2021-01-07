class AlbumsController < ApplicationController
    def index
        if !params[:page].nil? && params[:page].to_i <= 0
            return redirect_to albums_path
        end
        @albums = Album.album_search(params[:search]).page(params[:page]).per_page(15)
        @last_album_page = (Album.all.count.to_f / 15).ceil
    end

    def show
        @album = Album.find(params[:id])
        @songs = @album.songs
    end
end
