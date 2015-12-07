class ResearcherExperiment < ActiveRecord::Base
  belongs_to :researcher
  belongs_to :experiment
end
