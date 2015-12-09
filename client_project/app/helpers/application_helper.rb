module ApplicationHelper

  def current_user
    # change seed file so this doesn't break...
    User.find(session[:user_id])
  end

  def admin?
    current_user.admin
  end

  def logged_in?
     session[:user_id] != nil
  end

end
