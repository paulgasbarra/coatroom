class Checker < ActiveRecord::Base
  has_many :hold_records
  has_many :users, through: :hold_records
  has_secure_password


  geocoded_by :address
  after_validation :geocode

  def address
    [street_address, city, state].compact.join(', ')
  end

end
