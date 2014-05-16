class Checker < ActiveRecord::Base
  has_many :hold_records
  has_many :users, through: :hold_records
end
