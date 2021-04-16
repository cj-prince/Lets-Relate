class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    

    def after_sign_in_path_for(resource)
        root_path
    end    

    def require_user
        if !signed_in?
        flash[:error] = "You must be logged in to perform that action"
        redirect_to signin_path
        end
    end
end
