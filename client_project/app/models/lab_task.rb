class LabTask < ActiveRecord::Base
  belongs_to :log
  belongs_to :procedure
end
