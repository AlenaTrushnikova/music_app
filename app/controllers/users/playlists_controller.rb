class Users::PlaylistsController < PlaylistsController
    before_action :set_playable

    private 

    def set_playable
        @playable = User.find(params[:user_id])
    end
end