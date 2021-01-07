class ArtistsController < ApplicationController
    def index
        if !params[:page].nil? && params[:page].to_i <= 0
            return redirect_to artists_path
        end
        @artists = Artist.artist_search(params[:search]).page(params[:page]).per_page(15)
        @last_artists_page = (Artist.all.count.to_f / 15).ceil
    end

    def show
        @artist = Artist.find(params[:id])
        @albums = @artist.albums
    end
end
