class SongsController < ApplicationController

    def index
        @songs = Song.search(params[:search])
    end

    def show
        @song = Song.find(params[:id])
        @playlists = Playlist.all
    end

    def edit
        @song = Song.find(params[:id])
        @playlists = Playlist.all
    end


    private


    def song_params
        params.require(:song).permit(:name, :album_id, :search)
    end

end
