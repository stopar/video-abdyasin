class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  def current_moderator
    @current_moderator ||= Moderator.find(session[:moderator_id]) if session[:moderator_id]
  end
  helper_method :current_moderator
  
  def authorize
    if current_moderator.nil?
      flash[:error] = "Hanya moderator boleh mengemaskini laman ini. Sila masukkan emel dan kata laluan anda."
      redirect_to signin_path
    end
  end
end
