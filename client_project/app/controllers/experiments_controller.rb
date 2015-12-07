class ExperimentsController < ApplicationController
  def index
    @users = User.all
    @experiments = Experiment.all
  end

  def show
    @experiment = Experiment.find(params[:id])
  end

  def new
    
  end

  def edit
  end
end
