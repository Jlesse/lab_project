class ExperimentsController < ApplicationController
  def index
    @users = User.all
    @experiments = Experiment.all
  end

  def show

  end

  def new
  end

  def edit
  end
end
