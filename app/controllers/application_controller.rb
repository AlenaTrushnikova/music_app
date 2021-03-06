class ApplicationController < ActionController::Base
    before_action :authorized
    helper_method :current_user
    helper_method :logged_in? 
    helper_method :current_playlist
    helper_method :next_slice
    # before_action :require_login

    # private

    # def require_login
    #     redirect_to "/login" unless session.include? :user_id
    # end

    def current_user 
        User.find_by(id: session[:user_id]) 
    end 

    def logged_in?
        !current_user.nil? 
    end

    def authorized
        redirect_to root_path unless logged_in?
    end

    def next_slice
        
    end

end
