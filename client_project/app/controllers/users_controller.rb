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
    p user_params
    @user = User.create(user_params)
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
    params.require(:user).permit(:first_name, :last_name, :email, :password, :admin)
  end

end
