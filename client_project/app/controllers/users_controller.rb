class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(1)
  end

  def new
  end

  def edit
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
