class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.string :password
      t.string :credit_card
      t.boolean :stored
      t.integer :favorite

      t.timestamps
    end
  end
end
