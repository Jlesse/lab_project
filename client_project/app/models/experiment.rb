class Experiment < ActiveRecord::Base
  has_many :researcher_experiments, foreign_key: "experiment_id"
  has_many :researchers, through: :researcher_experiments
  has_many :observations
  has_one :proposal
end
