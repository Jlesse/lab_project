module ApplicationHelper

  def current_user
    p @current_user
    @current_user ||= User.find(session[:user_id])
  end

  def admin?
    current_user.admin
  end

  def logged_in?
     session[:user_id] != nil
  end

end
