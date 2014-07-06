class CreateCheckers < ActiveRecord::Migration
  def change
    create_table :checkers do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :apt_number
      t.string :city
      t.string :state
      t.string :zip_code
      t.float :longitude
      t.float :latitude
      t.text :phone_number
      t.string :email
      t.string :password
      t.text :bank_account
      t.text :bank_routing_number
      t.boolean :active
      t.boolean :storing
      t.decimal :ammount_earned

      t.timestamps
    end
  end
end
