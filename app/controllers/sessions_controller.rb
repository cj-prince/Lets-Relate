class SessionsController < Devise::SessionsController
  before_action :signed_in_redirect, only: [:new, :create]

  def new
  end

  def create
    
  end

  def destroy
    
  end

  private

  def signed_in_redirect
    if signed_in?
      flash[:error] = "You are already logged in"
      redirect_to root_path
    end
  end
end
