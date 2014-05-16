class CreateHoldRecords < ActiveRecord::Migration
  def change
    create_table :hold_records do |t|
      t.string :user_id
      t.string :checker_id
      t.datetime :dropoff_time
      t.datetime :pick_up_time
      t.boolean :hold_complete

      t.timestamps
    end
  end
end
