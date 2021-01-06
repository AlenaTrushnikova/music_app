class PlaylistsController < ApplicationController
    before_action :set_playlist, only: [:show, :update, :destroy]
    def show
    end

    def index
        @playlists = Playlist.all
    end

    def new
        @playlist = Playlist.new
    end

    def create
        @playlist = @playable.playlists.create playlist_params
        redirect_to @playable, notice: "Your playlist was successfully created!"
    end

    def destroy
        @playlist.destroy
        redirect_to playlists_path
    end

    private 

    def set_playlist
        @playlist = Playlist.find(params[:id])
    end

    def playlist_params
        params.require(:playlist).permit(:name)
    end

end
