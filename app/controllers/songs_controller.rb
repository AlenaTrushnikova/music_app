class SongsController < ApplicationController
    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def add_to_playlist
        @song = Song.find(params[:id])
        current_playlist << @song
    end
end
