class Log < ActiveRecord::Base
  belongs_to :user
  belongs_to :procedure
  belongs_to  :observation
end
