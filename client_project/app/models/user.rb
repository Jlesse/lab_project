class User < ActiveRecord::Base
  has_many :researcher_experiments, {class_name: "User"}, foreign_key: "researcher_id"
  has_many :experiments, through :researcher_experiments, source :experiment_id
end
