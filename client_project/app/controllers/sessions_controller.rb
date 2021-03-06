class SessionsController < ApplicationController


  before_action :confirm_logged_in, :except => [:login, :attempt_login, :logout]

  def index
    #display text and links
  end

  def login
    #display login form
  end

  def attempt_login
    if params[:email].present? && params[:password].present?
      found_user = User.where(:email => params[:email]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end
    if authorized_user
      session[:user_id] = authorized_user.id
      flash[:notice] = "You are now logged in."
      redirect_to(:controller => "experiments", :action => "index")
    else
      flash[:notice] = "Invalid email/password combination"
      redirect_to(:action => 'login')
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end

end
