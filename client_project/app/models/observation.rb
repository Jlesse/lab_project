class Observation < ActiveRecord::Base
  belongs_to :experiment
  belongs_to :user
  has_many :logs
end
