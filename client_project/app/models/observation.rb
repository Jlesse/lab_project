class Observation < ActiveRecord::Base
  belongs_to :experiment
  belongs_to :user
  has_many :logs
  has_many :comments
  has_many :procedures, through: :logs
end
