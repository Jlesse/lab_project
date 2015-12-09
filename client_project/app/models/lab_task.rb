class LabTask < ActiveRecord::Base
  belongs_to :log
  belongs_to :procedure

  def self.completed_today
    where("lab_tasks.created_at >= ?", Date.today)
  end

  def self.completed_by(user)
    joins(:log).where("logs.user_id = ?", user.id)
  end

  # def self.completed_today_by(user)
  #   completed_today.completed_by(user)
  # end
end

#iterate through all of the experiments logs
#check each of the exeperiments procedures
  # print procedure
  # does a given experiment procedure appear in the in the logs.procedures
  #logs.procedures.include?{|log_pro| log_pro.id == exp_pro.id}
  # if it does put a check mark



