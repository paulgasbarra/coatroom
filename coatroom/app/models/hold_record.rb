class HoldRecord < ActiveRecord::Base
  belongs_to :checker
  belongs_to :user
end
