class Checker < ActiveRecord::Base
  has_many :hold_records
  has_many :users, through: :hold_records
  has_secure_password

  geocoded_by :address

  def address
    [street, city, state].compact.join(', ')
  end

end
