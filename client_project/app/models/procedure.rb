class Procedure < ActiveRecord::Base
  belongs_to :experiment
  has_many :lab_tasks
end
