module ExperimentsHelper

  def summed_log_hours
    sum = 0
     @experiment.logs.each do |log|
        sum += log.hours_worked
    end
    sum
  end

end
