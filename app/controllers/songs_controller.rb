class SongsController < ApplicationController

    def index
        if !params[:page].nil? && params[:page].to_i <= 0
            return redirect_to songs_path
        end
        @songs = Song.search(params[:search]).page(params[:page]).per_page(15)
        @last_page = (Song.search(params[:search]).count.to_f / 15).ceil
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
