class User < ActiveRecord::Base
  has_many :researcher_experiments, foreign_key: "researcher_id"
  has_many :experiments, through: :researcher_experiments
  has_many :comments
  has_many :observations

  has_secure_password

end
