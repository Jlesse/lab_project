class LabTask < ActiveRecord::Base
  belongs_to :log
  belongs_to :procedure

  def self.completed_today
    where("created_at >= ?", Date.today)
  end

  def self.completed_by(user)
    joins(:log).where("log.user_id = ?", user.id)
  end

  def self.completed_today_by(user)
    completed_today.completed_by(user)
  end
end
