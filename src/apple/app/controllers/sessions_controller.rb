class SessionsController < ApplicationController
  def login
  end

  def login_attempt
      user=User.find_by_username(params[:username])

      if user&&user.authenticate(params[:password])
          session[:user_id]=user.id
          redirect_to(:controller=>'home',:action=>'hot')
      else
          flash[:notice]="Sorry about that, please try again!"
          render "login"
      end
  end



  def home
  end

  def profile
  end

  def setting

  end
end
