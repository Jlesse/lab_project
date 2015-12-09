class ExperimentsController < ApplicationController

  before_action :confirm_logged_in

  def index
    @users = User.all
    @experiments = Experiment.all
    @experiment = Experiment.new
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

  def create
    @experiment = Experiment.new(experiment_params)
  end

  private
  def experiment_params
    params.require(:experiment).permit(:observation, :title, :problem, :hypothesis, :materials, :result, :conclusion, :active, :start_date, :end_date, :procedures => [])
  end

end
