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
    p experiment_params[:procedures]
    @experiment = Experiment.create( title: experiment_params[:title], problem:experiment_params[:problem], hypothesis: experiment_params[:hypothesis], materials: experiment_params[:materials], results: experiment_params[:result], conclusion: experiment_params[:conclusion], active: experiment_params[:active], start_date:experiment_params[:start_date], end_date:experiment_params[:end_date], grad_hour_budget: experiment_params[:grad_hour_budget].to_i)
    proposal = Proposal.create(experiment_id: @experiment.id, abstract: experiment_params[:proposal])
    @experiment.proposal = proposal
    procedures = experiment_params[:procedures]
    procedures_array = []
    procedures.each do |procedure_text|
      p = Procedure.create(text: procedure_text, experiment_id: @experiment.id)
       procedures_array << p
    end
    @experiment.procedures = procedures_array
    @experiment.save
    redirect_to experiment_path(@experiment)
  end

  private
  def experiment_params
    params.require(:experiment).permit(:observation, :title, :problem, :hypothesis, :materials, :result, :conclusion, :active, :start_date, :end_date, :grad_hour_budget, :procedures => [])
  end

end
