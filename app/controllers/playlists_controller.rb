class PlaylistsController < ApplicationController
    before_action :set_playlist, only: [:show, :update, :destroy, :remove_song]
    def show
    end

    def index
        @playlists = Playlist.all
        @user = current_user
    end

    def new
        @playlist = Playlist.new
    end

    def create
        @playlist = Playlist.create playlist_params
        if @playlist.valid?
            redirect_to @playlist
        else
            flash[:errors] = @playlist.errors.full_messages
            redirect_to playlists_path
        end
    end

    def destroy
        @playlist.destroy
        redirect_to playlists_path
    end

    def remove_song
        SongsInPlaylist.find_by(playlist_id: @playlist.id, song_id: params[:song_id]).destroy
        redirect_to @playlist
    end

    private 

    def set_playlist
        @playlist = Playlist.find(params[:id])
    end

    def playlist_params
        params.require(:playlist).permit(:name, :playable_type, :playable_id)
    end

end
