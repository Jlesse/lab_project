class User < ActiveRecord::Base
  has_many :researcher_experiments, foreign_key: "researcher_id"
  has_many :experiments, through: :researcher_experiments, source: :experiment_id
  has_many :comments
  has_many :observations

end
