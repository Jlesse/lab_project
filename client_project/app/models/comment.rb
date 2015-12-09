class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :observation
end

# high risk
# high probability of failure
# easy to test
