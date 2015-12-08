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

  end

  def edit
    @user = User.new
  end

  def login
  end

  def logout
  end

  private

  def subject_params
    params.require(:user).permit
  end

end
