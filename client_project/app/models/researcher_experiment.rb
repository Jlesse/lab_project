class ResearcherExperiment < ActiveRecord::Base
  belongs_to :researcher, class_name: "User"
  belongs_to :experiment
end
