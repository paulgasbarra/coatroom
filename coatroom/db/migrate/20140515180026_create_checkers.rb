class CreateCheckers < ActiveRecord::Migration
  def change
    create_table :checkers do |t|
      t.string :name
      t.string :address
      t.float :longitude
      t.float :latitude
      t.decimal :phone_number
      t.string :email
      t.string :password
      t.integer :bank_account
      t.integer :bank_routing_number
      t.boolean :storing
      t.decimal :ammount_earned

      t.timestamps
    end
  end
end
