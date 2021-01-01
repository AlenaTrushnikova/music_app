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

    end

    def update

    end

    def destroy
        @platylist.delete
        redirect_to @playlists
    end

    private 

    def set_playlist
        @playlist = Playlist.find(params[:id])
    end

    def playlist_params
        params.require(:playlist).permit(:name)
    end

end
