class LogsController < ApplicationController

  before_action :confirm_logged_in
  skip_before_filter  :verify_authenticity_token

  def show
    @log = Log.find(params[:Log_id])
  end

  #get experiments/:id/logs/new
  def new
    @user = current_user
    @procedures = Experiment.find(params[:id].to_i).procedures
  end

  # post experiments/:id/logs
  def create
    p log_params

    @observation = Observation.create(title: log_params[:title], text: log_params[:observation], user_id: current_user.id)
    @log = Log.create(observation_id: @observation.id, user_id: current_user.id, hours_worked: log_params[:hours].to_i)
      log_params[:procedures].each do |procedure_id|
        LabTask.create(procedure_id: procedure_id.to_i, log_id: @log.id)
      end
      redirect_to(experiment_path(Experiment.find(params[:id].to_i)))
  end

  def edit
    @experiment = Experiment.new
  end



  private
  def log_params
    params.require(:log).permit(:observation, :title, :hours, :procedures => [])
  end

  def current_user
    User.find(session[:user_id])
  end
end
