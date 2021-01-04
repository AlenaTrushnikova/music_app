class SongsInPlaylistController < ApplicationController
    def new
        @add_song = SongsInPlaylist.new
    end

    def create
        @add_song = SongsInPlaylist.create add_song_params
    end


    def destroy
        @add_song.delete
    end

    private
    def add_song_params
        params.require(:add_song).permit(:song_id, :playlist_id)
    end


end
