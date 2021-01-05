class SongsInPlaylistsController < ApplicationController
    def new
        @add_song = SongsInPlaylist.new
        @playlists = Playlist.all
        @song = Song.find(params[:id])
    end

    def create
        @add_song = SongsInPlaylist.create(add_song_params)
        if @add_song.valid?
            redirect_to "/playlists/#{@add_song.playlist_id}"
        else            
            flash[:errors] = @add_song.errors.full_messages
            redirect_to "/songs/#{@add_song.song_id}"
        end 
    end


    def destroy
        @add_song.delete
    end

    private 

    def add_song_params
        params.require(:songs_in_playlist).permit(:song_id, :playlist_id)
    end

end
