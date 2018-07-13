class CreateTimecards < ActiveRecord::Migration
  def change
    create_table :timecards do |t|
      t.datetime :clockin
      t.datetime :clockout
      t.text :notes
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
