class Procedure < ActiveRecord::Base
  belongs_to :experiment
  has_many :lab_tasks

  def completed?
    lab_tasks.present?
  end

  def completed_today_by?(user)
    lab_tasks.completed_today_by(user).present?
  end
end
