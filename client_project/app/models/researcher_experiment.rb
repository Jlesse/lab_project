class ResearcherExperiment < ActiveRecord::Base
  has_many :researchers {class: "User"}, foreign_key: "user_id"
  has_many :experiments
end
