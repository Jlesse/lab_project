class ExperimentsController < ApplicationController

  before_action :confirm_logged_in
   
  def index
    @users = User.all
    @experiments = Experiment.all
  end

  def show
    @experiment = Experiment.find(params[:id])
  end

  def new
    @experiment = Experiment.new
  end

  def edit
    @experiment = Experiment.new
  end
end
