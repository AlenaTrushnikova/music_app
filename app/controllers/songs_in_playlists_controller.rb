class SongsInPlaylistsController < ApplicationController
    def new
        @add_song = SongsInPlaylist.new
        @playlists = Playlist.all
        @song = Song.find(params[:id])
    end

    def create
        @add_song = SongsInPlaylist.create(add_song_params)
        redirect_to "/playlists/#{@add_song.playlist_id}"
    end


    def destroy
        
    end

    private 

    def add_song_params
        params.require(:songs_in_playlist).permit(:song_id, :playlist_id)
    end

end
