class Experiment < ActiveRecord::Base
  has_many :researcher_experiments, foreign_key: "experiment_id"
  has_many :users through, :researcher_experiments, source :researcher_id
  has_many :observations
  has_one :proposal
end
