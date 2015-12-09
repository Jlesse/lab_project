class UsersController < ApplicationController
  def index
    redirect_to(:controller => 'experiments', :action => 'index')
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    admin_key = user_params[:admin_key]
    @user = User.new(first_name: user_params[:first_name], last_name: user_params[:last_name], email: user_params[:email], password: user_params[:password])
    if admin_key == "papyrus"
      @user.admin = true
    else
      @user.admin = false
    end
      @user.save
    session[:user_id] = @user.id
    redirect_to @user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if(@user.update(user_params))
      redirect_to user_path(@user)
    else
      render('edit')
    end
  end



  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :admin_key)
  end

end
