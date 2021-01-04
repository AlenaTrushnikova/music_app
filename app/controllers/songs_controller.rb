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

    def update
        @song = Song.find(params[:id])
        @playlist = Playlist.find_by(id: params[@song.playlist_ids])
        
        redirect_to @song
    end


    private


    def song_params
        params.require(:song).permit(:name, :playlist_ids, :album_id, :search)
    end

end
