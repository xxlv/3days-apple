class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  private
  def authorize!

      if session[:user_id].nil?||!User.find_by_id(session[:user_id])
          redirect_to(:controller=>"sessions",:action=>"login")
      end
  end


end
