class Songs::PlaylistsController < PlaylistsController
    before_action :set_playable

    private 

    def set_playable
        @playable = Song.find(params[:song_id])
    end
end