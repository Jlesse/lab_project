class Experiment < ActiveRecord::Base
  has_many :researcher_experiments, foreign_key: "experiment_id"
  has_many :researchers, through: :researcher_experiments
  has_many :observations
  has_one :proposal
  has_many :procedures
  has_many :lab_tasks, through: :procedures
  has_many :logs, through: :lab_tasks


end
