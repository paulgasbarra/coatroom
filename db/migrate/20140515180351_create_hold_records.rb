class CreateHoldRecords < ActiveRecord::Migration
  def change
    create_table :hold_records do |t|
      t.string :user_id
      t.string :checker_id
      t.string :status
      t.date :dropoff_day
      t.time  :dropoff_time
      t.date :pickup_day
      t.time :pickup_time
      t.boolean :hold_complete

      t.timestamps
    end
  end
end
