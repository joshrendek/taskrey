class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate_user!

  def verify_admin
    if current_user.admin != 1
      flash[:error] = "You do not have permission to do that."
      redirect_to "/"
    end 
  end
end
