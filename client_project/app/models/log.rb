class Log < ActiveRecord::Base
  belongs_to :user
  has_many :lab_tasks
  has_many :procedures, through: :lab_tasks
  belongs_to  :observation
  belongs_to :experiment
end
