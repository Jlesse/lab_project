class LogController < ApplicationController

  before_action :confirm_logged_in

  def show
    @log = Log.find(params[:Log_id])
  end

  #get experiments/:id/log/
  def new
    @user = current_user
    @procedures = Experiment.find(params[:experiment_id].to_i).procedures
  end

  # post experiments/:id/log/:id
  def create
    @observation = Observation.create(text: log_params.observation, user_id: current_user.id)
    @log = Log.create(observation_id: @observation.id, user_id: current_user.id)
      log_params.procedures.each do |procedure_id|
        LabTask.create(procedure_id: procedure_id.to_i, log_id: @log.id)
      end
      redirect_to(experiment_path(Experiment.find(params[:experiment_id].to_i)))
  end

  def edit
    @experiment = Experiment.new
  end



  private
  def log_params
    params.require(:log).permit(:observation, :procedures)
  end

  def current_user
    User.find(session[:user_id])
  end
end
