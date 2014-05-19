class User < ActiveRecord::Base
  has_many :hold_records
  has_many :checkers, through: :hold_records
  has_secure_password
end
